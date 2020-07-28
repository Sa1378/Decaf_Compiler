package Model;

public class NewExpr extends Expr {
    ClassType type;

    public NewExpr(ClassType type){
        this.type=type;
    }

    @Override
    protected void cgen(Cgen cgen) {

    }
}
