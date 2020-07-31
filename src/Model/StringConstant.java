package Model;

public class StringConstant extends Constant {
    String value;

    public StringConstant(String value) {
        this.value = value;
    }

    @Override
    protected void cgen(Cgen cgen) {
        String string ;
        String label1=cgen.stringLabel();
        string = String.format( "%s: .asciiz %s",label1, this.value);
        cgen.addData(string);
        this.variableDecl=new VariableDecl(Type.stringType);
        this.variableDecl.location=cgen.newLocation();
        cgen.addCode(String.format("la $t0,%s",label1));
        cgen.addCode(String.format("sw $t0,%d($fp)",this.variableDecl.location));
    }
}
