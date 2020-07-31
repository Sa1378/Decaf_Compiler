package Model;

public class DoubleConstant extends Constant {
    double value;

    public DoubleConstant(String value) {
        this.value = Double.parseDouble(value);
    }

    @Override
    protected void cgen(Cgen cgen) {
        String string;
        String label1=cgen.doubleLabel();
        string = String.format("%s: .float %s", label1, this.value);
        cgen.addData(string);
        this.variableDecl=new VariableDecl(Type.doubleType);
        this.variableDecl.location=cgen.newLocation();
        cgen.addCode(String.format("lw $t0,%s",label1));
        cgen.addCode(String.format("sw $t0,%d($fp)",this.variableDecl.location));
    }

}
