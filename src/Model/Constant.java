package Model;

public class Constant extends Expr {
    @Override
    protected void cgen(Cgen cgen) {
        this.cgen(cgen);
        this.variableDecl.location = cgen.stackOffset;
        cgen.stackOffset -= 4;
    }
}
