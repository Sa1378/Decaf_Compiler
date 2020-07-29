package Model;

public class PrintStmt extends Stmt {
    Expr expr;

    public PrintStmt(Expr expr) {
        this.expr = expr;
    }

    @Override
    protected void cgen(Cgen cgen) {

    }
}
