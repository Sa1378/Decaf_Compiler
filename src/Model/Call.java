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

    @Override
    protected void cgen(Cgen cgen) {
        if (cgen.funcTable.size()>1 && cgen.funcTable.get(1).containsKey(identifier)){
            expr = new This();
        }
        FunctionDecl func;
        if(expr == null){
            func = cgen.funcTable.get(1).get(identifier);
            //TODO determine stackFrame shape
        }
        else{
            func = cgen.funcTable.get(0).get(identifier);
            //TODO determine stackFrame shape
        }
    }
}
