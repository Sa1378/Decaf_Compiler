package Model;

public class ArithmeticExpr extends Expr {
    Expr firstOperand;
    Expr secondOperand;
    Operator operator;

    public ArithmeticExpr(Expr firstOperand, Expr secondOperand, Operator operator) {
        this.firstOperand = firstOperand;
        this.secondOperand = secondOperand;
        this.operator = operator;
    }

    public ArithmeticExpr(Expr operand, Operator operator) {
        this.firstOperand = operand;
        this.operator = operator;
    }

    @Override
    protected void cgen(Cgen cgen) {

    }
}
