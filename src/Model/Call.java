package Model;

import java.util.ArrayList;

public class Call extends Expr {
    Expr expr;
    Identifier identifier;
    ArrayList<Expr> actuals;

    public Call(Expr expr, Identifier identifier, ArrayList<Expr> actuals) {
        this.expr = expr;
        this.identifier = identifier;
        this.actuals = actuals;
    }
}
