package Model;

public class NewArrayExpr extends Expr {
    Expr expr;
    Type type;

    public NewArrayExpr(Expr expr, Type type) {
        this.expr = expr;
        this.type = type;
    }

    @Override
    protected void cgen(Cgen cgen) {
        expr.cgen(cgen);
        this.variableDecl = new VariableDecl(new ArrayType(type),null);
        this.variableDecl.location = cgen.newLocation();
        this.variableDecl.varType = VarType.LOCAL;
        cgen.addCode(String.format("lw $t0,%d($fp)",expr.variableDecl.location));
        cgen.addCode("addi $a0,$t0,1");
        cgen.addCode("sll $a0,$a0,2");
        cgen.addCode("li $v0,9");
        cgen.addCode("syscall");
        cgen.addCode("sw $t0,0($a0)");
        cgen.addCode(String.format("sw $a0,%d($fp)",this.variableDecl.location));
    }
}