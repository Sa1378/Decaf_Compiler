package Model;

public class FieldLvalue extends Lvalue {
    Expr expr;
    Identifier identifier;

    public FieldLvalue(Expr expr, Identifier identifier) {
        this.expr = expr;
        this.identifier = identifier;
    }
}
