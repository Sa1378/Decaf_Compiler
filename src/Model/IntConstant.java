package Model;

public class IntConstant extends Constant {
    int value;

    public IntConstant(String value) {
        if (value.startsWith("0x") || value.startsWith("0X"))
            this.value = Integer.decode(value);
        else
            this.value = Integer.valueOf(value);
    }
}
