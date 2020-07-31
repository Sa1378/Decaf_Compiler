package Model;

public class BoolConstant extends Constant {
    boolean value;

    public BoolConstant(String value) {
        this.value = Boolean.parseBoolean(value);
    }

    @Override
    protected void cgen(Cgen cgen) {
        String string;
        String label1=cgen.boolLabel();
        string = String.format("%s: .word %d", label1, (this.value)?1:0);
        cgen.addData(string);
        this.variableDecl=new VariableDecl(Type.boolType);
        this.variableDecl.location=cgen.newLocation();
        cgen.addCode(String.format("lw $t0,%s",label1));
        cgen.addCode(String.format("sw $t0,%d($fp)",this.variableDecl.location));
    }


}
