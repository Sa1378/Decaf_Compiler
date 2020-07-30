package Model;

public class ReturnStmt extends Stmt {
    Expr expr;

    public ReturnStmt(Expr expr) {
        this.expr = expr;
    }

    @Override
    protected void cgen(Cgen cgen) {
        if(expr != null){
            expr.cgen(cgen);
            cgen.addCode(String.format("lw $v0,%d($fp)",expr.variableDecl.location));
        }
        cgen.addCode("lw $t0,4($fp)");
        cgen.addCode("jr $t0");
    }
}
