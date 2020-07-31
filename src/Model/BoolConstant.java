package Model;

public class BoolConstant extends Constant {
    boolean value;

    public BoolConstant(String value) {
        this.value = Boolean.parseBoolean(value);
    }

    @Override
    protected void cgen(Cgen cgen) {
        String string;
        string = String.format("%s: .word %s", cgen.boolLabel(), this.value);
        cgen.addData(string);
    }


}
