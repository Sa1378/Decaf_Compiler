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
        firstOperand.cgen(cgen);
        cgen.addCode(String.format("lw $t0,%d($fp)", firstOperand.variableDecl.location));
        if (secondOperand == null) {
            switch (operator.operatorString) {
                case "!":
                    if (firstOperand.variableDecl.type != Type.boolType) {
                        System.out.println("ArithmeticExpr ERROR! - ! Operation");
                    }
                    cgen.addCode("xori $t2,$t0,1");
                    this.variableDecl = new VariableDecl(Type.boolType);
                    break;
                case "-":
                    if (firstOperand.variableDecl.type == Type.doubleType) {
                        cgen.addCode("mtc1 $t0,$f0");
                        cgen.addCode("mtc1 $zero,$f1");
                        cgen.addCode("sub.s $f2,$f1,$f0");
                        cgen.addCode("mfc1 $t2,$f2");
                        this.variableDecl=new VariableDecl(Type.doubleType);
                    } else if (firstOperand.variableDecl.type == Type.intType) {
                        cgen.addCode("sub $t2,$zero,$t0");
                        this.variableDecl=new VariableDecl(Type.intType);
                    } else {
                        System.out.println("ArithmeticExpr ERROR! - - Operation");
                    }


            }
        } else {
            secondOperand.cgen(cgen);
            cgen.addCode(String.format("lw $t1,%d($fp)", secondOperand.variableDecl.location));
        }
        this.variableDecl.location=cgen.stackOffset;
        cgen.stackOffset-=4;
        this.variableDecl.varType=VarType.LOCAL;
        cgen.addCode(String.format("sw $t2,%d($fp)",this.variableDecl.location));
    }
}
