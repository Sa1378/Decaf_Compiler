package Model;

import java.util.ArrayList;

public class Call extends Expr {
    Expr expr;
    Identifier identifier;
    ArrayList<Expr> actuals;

    public Call(Expr expr, Identifier identifier, ArrayList<Expr> actuals) {
        this.expr = expr;
        this.identifier = identifier;
        this.actuals = actuals;
    }

    @Override
    protected void cgen(Cgen cgen) {
        if (cgen.funcTable.size() > 1 && cgen.funcTable.get(1).containsKey(identifier)) {
            expr = new This();
        }
        if (identifier.name.equals("itod")) {
            this.variableDecl = new VariableDecl(Type.doubleType);
            this.variableDecl.location = cgen.newLocation();
            if (actuals.size() != 1) {
                System.out.println("Error invalid itod");
            }
            Expr expr1 = actuals.get(0);
            expr1.cgen(cgen);
            cgen.addCode(String.format("l.s $f0,%d($fp)", expr1.variableDecl.location)); //TODO test fp ops
            cgen.addCode("cvt.s.w $f0,$f0");
            cgen.addCode(String.format("s.s $f0,%d($fp)", variableDecl.location));
        } else if (identifier.name.equals("dtoi")) {
            this.variableDecl = new VariableDecl(Type.intType);
            this.variableDecl.location = cgen.newLocation();
            if (actuals.size() != 1) {
                System.out.println("Error invalid dtoi");
            }
            Expr expr1 = actuals.get(0);
            expr1.cgen(cgen);
            cgen.addCode(String.format("l.s $f0,%d($fp)", expr1.variableDecl.location)); //TODO test fp ops
            cgen.addCode("cvt.w.s $f0,$f0"); //TODO rounding?
            cgen.addCode(String.format("s.s $f0,%d($fp)", variableDecl.location));
        } else if (identifier.name.equals("itob")) {
            this.variableDecl = new VariableDecl(Type.boolType);
            this.variableDecl.location = cgen.newLocation();
            if (actuals.size() != 1) {
                System.out.println("Error invalid itob");
            }
            Expr expr1 = actuals.get(0);
            expr1.cgen(cgen);
            cgen.addCode(String.format("lw $t0,%d($fp)", expr1.variableDecl.location));
            cgen.addCode("sne $t0,$t0,$zero");
            cgen.addCode(String.format("sw $t0,%d($fp)", variableDecl.location));
        } else if (identifier.name.equals("btoi")) {
            this.variableDecl = new VariableDecl(Type.intType);
            this.variableDecl.location = cgen.newLocation();
            if (actuals.size() != 1) {
                System.out.println("Error invalid btoi");
            }
            Expr expr1 = actuals.get(0);
            expr1.cgen(cgen);
            cgen.addCode(String.format("lw $t0,%d($fp)", expr1.variableDecl.location));
            cgen.addCode(String.format("sw $t0,%d($fp)", variableDecl.location));
        } else if (expr == null) { //TODO check this actuals
            for (int i = 0; i < actuals.size(); i++) {
                actuals.get(i).cgen(cgen);
            }
            FunctionDecl func = cgen.funcTable.get(0).get(identifier);
            int offset = cgen.stackOffset - 4 * (func.formals.size() + 1);
            cgen.addCode(String.format("sw $fp,%d($fp)", offset));
            for (int i = 0; i < actuals.size(); i++) {
                cgen.addCode(String.format("lw $t0,%d($fp)", actuals.get(i).variableDecl.location));
                cgen.addCode(String.format("sw $t0,%d($fp)", func.formals.get(i).location + offset));
            }
            cgen.addCode(String.format("addi $fp,$fp,%d", offset));
            cgen.addCode(String.format("jal %s", func.getLabel()));
            cgen.addCode("lw $fp,0($fp)");
            if (func.type != Type.voidType) {
                variableDecl = new VariableDecl(func.type);
                variableDecl.location = cgen.newLocation();
                cgen.addCode(String.format("sw $v0,%d($fp)", variableDecl.location));
            }
        }
        else { //TODO add array.length()
            actuals.add(expr);
            for (int i = 0; i < actuals.size(); i++) {
                actuals.get(i).cgen(cgen);
            }
            if(expr.variableDecl.type instanceof  ArrayType && identifier.name.equals("length") && actuals.size() == 1){
                cgen.addCode(String.format("lw $t0,%d($fp)",expr.variableDecl.location));
                cgen.addCode("lw $t0,0($t0)");
                variableDecl = new VariableDecl(Type.intType);
                variableDecl.location = cgen.newLocation();
                cgen.addCode(String.format("sw $t0,%d($fp)",variableDecl.location));
                return;
            }
            if (!(expr.variableDecl.type instanceof ClassType)) {
                System.out.println("Error invalid method call");
                return;
            }
            ClassDecl cls = cgen.classTable.get(((ClassType) expr.variableDecl.type).identifier);
            FunctionDecl func = cls.getMethod(identifier);
            int offset = cgen.stackOffset - 4 * (actuals.size() + 1);
            cgen.addCode(String.format("sw $fp,%d($fp)", offset));
            for (int i = 0; i < actuals.size(); i++) {
                cgen.addCode(String.format("lw $t0,%d($fp)", actuals.get(i).variableDecl.location));
                cgen.addCode(String.format("sw $t0,%d($fp)", func.formals.get(i).location + offset));
            }
            cgen.addCode(String.format("lw $t0,%d($fp)", expr.variableDecl.location));
            cgen.addCode("lw $t0,0($t0)");
            cgen.addCode(String.format("lw $t0,%d($t0)", cls.methodOffset(identifier)));
            cgen.addCode(String.format("addi $fp,$fp,%d", offset));
            cgen.addCode("jalr $t0");
            cgen.addCode("lw $fp,0($fp)");
            if (func.type != Type.voidType) {
                variableDecl = new VariableDecl(func.type);
                variableDecl.location = cgen.newLocation();
                cgen.addCode(String.format("sw $v0,%d($fp)", variableDecl.location));
            }
        }
    }
}
