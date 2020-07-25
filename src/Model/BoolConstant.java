package Model;

public class BoolConstant extends Constant {
    boolean value;

    public BoolConstant(String value) {
        this.value = Boolean.valueOf(value);
    }
}
