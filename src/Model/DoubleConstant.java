package Model;

public class DoubleConstant extends Constant {
    double value;

    public DoubleConstant(String value) {
        this.value = Double.parseDouble(value);
    }
}
