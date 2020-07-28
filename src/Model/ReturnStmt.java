package Model;

public class ReturnStmt extends Stmt {
    Expr expr;

    public ReturnStmt(Expr expr) {
        this.expr = expr;
    }

    @Override
    protected void cgen(Cgen cgen) {

    }
}
