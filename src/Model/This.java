package Model;

public class This extends Expr {
    @Override
    protected void cgen(Cgen cgen) {
        VariableDecl var = cgen.findVar(new Identifier("this"));
        if(var == null){
            System.out.println("Error invalid access");
            return;
        }
        this.variableDecl = var;
    }
}
