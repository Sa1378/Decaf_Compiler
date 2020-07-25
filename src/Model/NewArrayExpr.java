package Model;

public class NewArrayExpr extends Expr {
    Expr expr;
    Type type;

    public NewArrayExpr(Expr expr, Type type) {
        this.expr = expr;
        this.type = type;
    }
}
