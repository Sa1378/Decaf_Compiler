package Model;

public class StringConstant extends Constant {
    String value;

    public StringConstant(String value) {
        this.value = value;
    }

    @Override
    protected void cgen(Cgen cgen) {
        String string ;
        string = String.format( "%s: .asciiz %s",cgen.stringLabel(), this.value);
        cgen.addData(string);
    }
}
