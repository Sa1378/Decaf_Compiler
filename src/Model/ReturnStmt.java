package Model;

public class ReturnStmt extends Stmt {
    Expr expr;

    public ReturnStmt(Expr expr) {
        this.expr = expr;
    }
}
