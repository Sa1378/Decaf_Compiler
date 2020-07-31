package Model;

public class IntConstant extends Constant {
    int value;

    public IntConstant(String value) {
        if (value.startsWith("0x") || value.startsWith("0X"))
            this.value = Integer.decode(value);
        else
            this.value = Integer.parseInt(value);
    }

    @Override
    protected void cgen(Cgen cgen) {
        String string;
        String label1=cgen.intLabel();
        string = String.format("%s: .word %s", label1, this.value);
        cgen.addData(string);
        this.variableDecl=new VariableDecl(Type.intType);
        this.variableDecl.location=cgen.newLocation();
        cgen.addCode(String.format("lw $t0,%s",label1));
        cgen.addCode(String.format("sw $t0,%d($fp)",this.variableDecl.location));
    }
}
