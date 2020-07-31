package Model;

public class DoubleConstant extends Constant {
    double value;

    public DoubleConstant(String value) {
        this.value = Double.parseDouble(value);
    }

    @Override
    protected void cgen(Cgen cgen) {
        String string;
        string = String.format("%s: .double %s", cgen.doubleLabel(), this.value);
        cgen.addData(string);
    }

}
