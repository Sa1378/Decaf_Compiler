package Model;

public class WhileStmt extends Stmt {
    Expr condition;
    Stmt body;

    public WhileStmt(Expr condition, Stmt body) {
        this.condition = condition;
        this.body = body;
    }

    @Override
    protected void cgen(Cgen cgen) {
        String label1=cgen.newLabel(),label2=cgen.newLabel();
        cgen.addCode(String.format("%s:",label1));
        condition.cgen(cgen);
        cgen.addCode(String.format("lw $t0,%d($fp)", condition.variableDecl.location));
        cgen.addCode(String.format("beq $t0,$zero,%s", label2));
        body.cgen(cgen);
        cgen.addCode(String.format("j %s",label1));
        cgen.addCode(String.format("%s:",label2));
    }
}
