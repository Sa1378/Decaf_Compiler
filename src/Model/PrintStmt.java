package Model;

import java.util.ArrayList;

public class PrintStmt extends Stmt {
    ArrayList<Expr> exprs;

    public PrintStmt(ArrayList<Expr> exprs) {
        this.exprs = exprs;
    }

    @Override
    protected void cgen(Cgen cgen) {
        for(int i = 0;i<exprs.size();i++){
            printExpr(exprs.get(i),cgen);
        }
        printNewLine(cgen);
    }
    void printExpr(Expr expr,Cgen cgen){
        expr.cgen(cgen);
        if (expr.variableDecl.type == Type.intType){
            cgen.addCode(String.format("lw $a0,%d($fp)",expr.variableDecl.location));
            cgen.addCode("li $v0,1");
            cgen.addCode("syscall");
        }
        else if (expr.variableDecl.type == Type.boolType){
            cgen.addCode("la $a0,BooleanLabel");
            cgen.addCode(String.format("lw $t0,%d($fp)",expr.variableDecl.location));
            cgen.addCode("sll $t0,$t0,2");
            cgen.addCode("add $a0,$a0,$t0");
            cgen.addCode("lw $a0,0($a0)");
            cgen.addCode("li $v0,4");
            cgen.addCode("syscall");
        }
        else if(expr.variableDecl.type == Type.doubleType){ //TODO check this
            String label1 = cgen.newLabel();
            cgen.addCode("l.s $f0,DoubleRoundingLabel");
            cgen.addCode("l.s $f3,HalfDoubleLabel");
            cgen.addCode(String.format("lw $t1,%d($fp)",expr.variableDecl.location));
            cgen.addCode("mtc1 $t1,$f1");
            cgen.addCode("mul.s $f1,$f0,$f1");
            cgen.addCode("mtc1 $zero,$f2");
            cgen.addCode("c.lt.s $f1,$f2");
            cgen.addCode(String.format("bc1f %s",label1));
            cgen.addCode("neg.s $f3,$f3");
            cgen.addCode(String.format("%s:",label1));
            cgen.addCode("add.s $f1,$f1,$f3");
            cgen.addCode("cvt.w.s $f1,$f1");
            cgen.addCode("cvt.s.w $f1,$f1");
            cgen.addCode("div.s $f12,$f1,$f0");
            cgen.addCode("li $v0,2");
            cgen.addCode("syscall");
        }
        else if(expr.variableDecl.type == Type.stringType){
            cgen.addCode(String.format("lw $a0,%d($fp)",expr.variableDecl.location));
            cgen.addCode("li $v0,4");
            cgen.addCode("syscall");
        }
        else{
            System.out.println("Error Invalid print arg");
        }
    }

    void printNewLine(Cgen cgen){
        cgen.addCode("la $a0,NewLineLabel");
        cgen.addCode("li $v0,4");
        cgen.addCode("syscall");
    }


    void printSpace(Cgen cgen){
        cgen.addCode("la $a0,SpaceCharLabel");
        cgen.addCode("li $v0,4");
        cgen.addCode("syscall");
    }
}
