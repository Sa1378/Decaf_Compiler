package Model;

public class NullConstant extends Constant {
    @Override
    protected void cgen(Cgen cgen) {
        this.variableDecl = new VariableDecl(Type.nullType);
        this.variableDecl.location = cgen.newLocation();
        cgen.addCode("lw $t0,NullLabel");
        cgen.addCode(String.format("sw $t0,%d($fp)", this.variableDecl.location));
    }
}