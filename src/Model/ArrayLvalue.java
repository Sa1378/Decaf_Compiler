package Model;

public class ArrayLvalue extends Lvalue {
    Expr expr;
    Expr index;

    public ArrayLvalue(Expr expr, Expr index) {
        this.expr = expr;
        this.index = index;
    }
}
