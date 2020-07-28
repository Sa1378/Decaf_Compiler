package Model;

public class ForStmt extends Stmt {
    Expr initialExpr;
    Expr condition;
    Expr stepExpr;
    Stmt body;

    public ForStmt(Expr initialExpr, Expr condition, Expr stepExpr, Stmt body) {
        this.initialExpr = initialExpr;
        this.condition = condition;
        this.stepExpr = stepExpr;
        this.body = body;
    }

    @Override
    protected void cgen(Cgen cgen) {
        String label1=cgen.newLabel(),label2=cgen.newLabel();
        cgen.addScope();
        if(initialExpr!=null)
            initialExpr.cgen(cgen);
        cgen.addCode(String.format("%s:",label1));
        condition.cgen(cgen);
        cgen.addCode(String.format("lw $t0,%d($fp)", condition.variableDecl.location));
        cgen.addCode(String.format("beq $t0,$zero,%s", label2));
        body.cgen(cgen);
        if(stepExpr!=null)
            stepExpr.cgen(cgen);
        cgen.addCode(String.format("%s:",label2));
        cgen.popScope();
    }
}
