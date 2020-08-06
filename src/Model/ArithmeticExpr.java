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
        if (secondOperand != null)
            secondOperand.cgen(cgen);
        cgen.addCode(String.format("lw $t0,%d($fp)", firstOperand.variableDecl.location));
        if (secondOperand == null) {
            switch (operator.operatorString) {
                case "!":
                    if (firstOperand.variableDecl.type != Type.boolType) {
                        System.out.println("ArithmeticExpr ERROR!  ! Operation");
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
                        this.variableDecl = new VariableDecl(Type.doubleType);
                    } else if (firstOperand.variableDecl.type == Type.intType) {
                        cgen.addCode("sub $t2,$zero,$t0");
                        this.variableDecl = new VariableDecl(Type.intType);
                    } else {
                        System.out.println("ArithmeticExpr ERROR!  - Operation");
                    }
                    break;
                default:
                    System.out.println("ArithmeticExpr ERROR!  WTH is this operand");
                    break;

            }
        } else {
            cgen.addCode(String.format("lw $t1,%d($fp)", secondOperand.variableDecl.location));
            switch (operator.operatorString) {
                case "+":
                    if (firstOperand.variableDecl.type != secondOperand.variableDecl.type) {
                        System.out.println("ArithmeticExpr ERROR!  + Operation");
                    } else if (firstOperand.variableDecl.type == Type.doubleType) {
                        cgen.addCode("mtc1 $t0,$f0");
                        cgen.addCode("mtc1 $t1,$f1");
                        cgen.addCode("add.s $f2,$f0,$f1");
                        cgen.addCode("mfc1 $t2,$f2");
                        this.variableDecl = new VariableDecl(Type.doubleType);
                    } else if (firstOperand.variableDecl.type == Type.intType) {
                        cgen.addCode("add $t2,$t0,$t1");
                        this.variableDecl = new VariableDecl(Type.intType);
                    } else {
                        System.out.println("ArithmeticExpr ERROR!  + Operation");
                    }
                    break;
                case "-":
                    if (firstOperand.variableDecl.type != secondOperand.variableDecl.type) {
                        System.out.println("ArithmeticExpr ERROR!  - Operation");
                    } else if (firstOperand.variableDecl.type == Type.doubleType) {
                        cgen.addCode("mtc1 $t0,$f0");
                        cgen.addCode("mtc1 $t1,$f1");
                        cgen.addCode("sub.s $f2,$f0,$f1");
                        cgen.addCode("mfc1 $t2,$f2");
                        this.variableDecl = new VariableDecl(Type.doubleType);
                    } else if (firstOperand.variableDecl.type == Type.intType) {
                        cgen.addCode("sub $t2,$t0,$t1");
                        this.variableDecl = new VariableDecl(Type.intType);
                    } else {
                        System.out.println("ArithmeticExpr ERROR!  - Operation");
                    }
                    break;
                case "*":
                    if (firstOperand.variableDecl.type != secondOperand.variableDecl.type) {
                        System.out.println("ArithmeticExpr ERROR!  * Operation");
                    } else if (firstOperand.variableDecl.type == Type.doubleType) {
                        cgen.addCode("mtc1 $t0,$f0");
                        cgen.addCode("mtc1 $t1,$f1");
                        cgen.addCode("mul.s $f2,$f0,$f1");
                        cgen.addCode("mfc1 $t2,$f2");
                        this.variableDecl = new VariableDecl(Type.doubleType);
                    } else if (firstOperand.variableDecl.type == Type.intType) {
                        cgen.addCode("mul $t2,$t0,$t1");
                        this.variableDecl = new VariableDecl(Type.intType);
                    } else {
                        System.out.println("ArithmeticExpr ERROR!  * Operation");
                    }
                    break;
                case "/":
                    if (firstOperand.variableDecl.type != secondOperand.variableDecl.type) {
                        System.out.println("ArithmeticExpr ERROR!  / Operation");
                    } else if (firstOperand.variableDecl.type == Type.doubleType) {
                        cgen.addCode("mtc1 $t0,$f0");
                        cgen.addCode("mtc1 $t1,$f1");
                        cgen.addCode("div.s $f2,$f0,$f1");
                        cgen.addCode("mfc1 $t2,$f2");
                        this.variableDecl = new VariableDecl(Type.doubleType);
                    } else if (firstOperand.variableDecl.type == Type.intType) {
                        cgen.addCode("div $t0,$t1");
                        cgen.addCode("mflo $t2");
                        this.variableDecl = new VariableDecl(Type.intType);
                    } else {
                        System.out.println("ArithmeticExpr ERROR!  / Operation");
                    }
                    break;
                case "%":
                    if (firstOperand.variableDecl.type != secondOperand.variableDecl.type) {
                        System.out.println("ArithmeticExpr ERROR!  % Operation");
                    } else if (firstOperand.variableDecl.type == Type.doubleType) {
                        cgen.addCode("mtc1 $t0,$f0");
                        cgen.addCode("mtc1 $t1,$f1");
                        cgen.addCode("div.s $f2,$f0,$f1");
                        cgen.addCode("round.w.s $f3,$f2");
                        cgen.addCode("mul.s $f4,$f3,$f1");
                        cgen.addCode("sub.s $f5,$f0,$f4");
                        cgen.addCode("mfc1 $t2,$f5");
                        this.variableDecl = new VariableDecl(Type.doubleType);
                    } else if (firstOperand.variableDecl.type == Type.intType) {
                        cgen.addCode("div $t0,$t1");
                        cgen.addCode("mfhi $t2");
                        this.variableDecl = new VariableDecl(Type.intType);
                    } else {
                        System.out.println("ArithmeticExpr ERROR!  % Operation");
                    }
                    break;
                case "<":
                    if (firstOperand.variableDecl.type != secondOperand.variableDecl.type) {
                        System.out.println("ArithmeticExpr ERROR!  < Operation");
                    } else if (firstOperand.variableDecl.type == Type.doubleType) {
                        String label1 = cgen.newLabel();
                        cgen.addCode("mtc1 $t0,$f0");
                        cgen.addCode("mtc1 $t1,$f1");
                        cgen.addCode("c.lt.s $f0,$f1");
                        cgen.addCode("li $t2,1");
                        cgen.addCode(String.format("bc1t %s", label1));
                        cgen.addCode("li $t2,0");
                        cgen.addCode(String.format("%s: ", label1));
                        this.variableDecl = new VariableDecl(Type.boolType);
                    } else if (firstOperand.variableDecl.type == Type.intType) {
                        cgen.addCode("slt $t2,$t0,$t1");
                        this.variableDecl = new VariableDecl(Type.boolType);
                    } else {
                        System.out.println("ArithmeticExpr ERROR!  < Operation");
                    }
                    break;
                case ">":
                    if (firstOperand.variableDecl.type != secondOperand.variableDecl.type) {
                        System.out.println("ArithmeticExpr ERROR!  > Operation");
                    } else if (firstOperand.variableDecl.type == Type.doubleType) {
                        String label1 = cgen.newLabel();
                        cgen.addCode("mtc1 $t0,$f0");
                        cgen.addCode("mtc1 $t1,$f1");
                        cgen.addCode("c.le.s $f0,$f1");
                        cgen.addCode("li $t2,0");
                        cgen.addCode(String.format("bc1t %s", label1));
                        cgen.addCode("li $t2,1");
                        cgen.addCode(String.format("%s: ", label1));
                        this.variableDecl = new VariableDecl(Type.boolType);
                    } else if (firstOperand.variableDecl.type == Type.intType) {
                        cgen.addCode("sgt $t2,$t0,$t1");
                        this.variableDecl = new VariableDecl(Type.boolType);
                    } else {
                        System.out.println("ArithmeticExpr ERROR!  > Operation");
                    }
                    break;
                case "<=":
                    if (firstOperand.variableDecl.type != secondOperand.variableDecl.type) {
                        System.out.println("ArithmeticExpr ERROR!  <= Operation");
                    } else if (firstOperand.variableDecl.type == Type.doubleType) {
                        String label1 = cgen.newLabel();
                        cgen.addCode("mtc1 $t0,$f0");
                        cgen.addCode("mtc1 $t1,$f1");
                        cgen.addCode("c.le.s $f0,$f1");
                        cgen.addCode("li $t2,1");
                        cgen.addCode(String.format("bc1t %s", label1));
                        cgen.addCode("li $t2,0");
                        cgen.addCode(String.format("%s: ", label1));
                        this.variableDecl = new VariableDecl(Type.boolType);
                    } else if (firstOperand.variableDecl.type == Type.intType) {
                        cgen.addCode("sle $t2,$t0,$t1");
                        this.variableDecl = new VariableDecl(Type.boolType);
                    } else {
                        System.out.println("ArithmeticExpr ERROR!  <= Operation");
                    }
                    break;
                case ">=":
                    if (firstOperand.variableDecl.type != secondOperand.variableDecl.type) {
                        System.out.println("ArithmeticExpr ERROR!  >= Operation");
                    } else if (firstOperand.variableDecl.type == Type.doubleType) {
                        String label1 = cgen.newLabel();
                        cgen.addCode("mtc1 $t0,$f0");
                        cgen.addCode("mtc1 $t1,$f1");
                        cgen.addCode("c.lt.s $f0,$f1");
                        cgen.addCode("li $t2,0");
                        cgen.addCode(String.format("bc1t %s", label1));
                        cgen.addCode("li $t2,1");
                        cgen.addCode(String.format("%s: ", label1));
                        this.variableDecl = new VariableDecl(Type.boolType);
                    } else if (firstOperand.variableDecl.type == Type.intType) {
                        cgen.addCode("sge $t2,$t0,$t1");
                        this.variableDecl = new VariableDecl(Type.boolType);
                    } else {
                        System.out.println("ArithmeticExpr ERROR!  >= Operation");
                    }
                    break;
                case "==":
                case "!=":
                    if (!(firstOperand.variableDecl.type instanceof ClassType) &&
                            !(firstOperand.variableDecl.type instanceof ArrayType) &&
                            firstOperand.variableDecl.type != secondOperand.variableDecl.type) {
                        System.out.println("ArithmeticExpr ERROR!  ==,!= Operation");
                    } else if (firstOperand.variableDecl.type == Type.doubleType) {
                        String label1 = cgen.newLabel();
                        cgen.addCode("mtc1 $t0,$f0");
                        cgen.addCode("mtc1 $t1,$f1");
                        cgen.addCode("c.eq.s $f0,$f1");
                        cgen.addCode("li $t2,1");
                        cgen.addCode(String.format("bc1t %s", label1));
                        cgen.addCode("li $t2,0");
                        cgen.addCode(String.format("%s: ", label1));
                        this.variableDecl = new VariableDecl(Type.boolType);
                    } else if (firstOperand.variableDecl.type == Type.intType ||
                            firstOperand.variableDecl.type == Type.boolType ||
                            firstOperand.variableDecl.type instanceof ClassType ||
                            firstOperand.variableDecl.type instanceof ArrayType ||
                            firstOperand.variableDecl.type == Type.nullType
                    ) {
                        cgen.addCode("seq $t2,$t0,$t1");
                        this.variableDecl = new VariableDecl(Type.boolType);
                    } else if (firstOperand.variableDecl.type == Type.stringType) {
                        String label1 = cgen.newLabel(), label2 = cgen.newLabel(), label3 = cgen.newLabel();
                        cgen.addCode("li $t2,1");
                        cgen.addCode(String.format("%s: ", label1));
                        cgen.addCode("lb $t3,0($t0)");
                        cgen.addCode("lb $t4,0($t1)");
                        cgen.addCode(String.format("beq $t3,$t4,%s", label2));
                        cgen.addCode("li $t2,0");
                        cgen.addCode(String.format("j %s", label3));
                        cgen.addCode(String.format("%s: ", label2));
                        cgen.addCode("addi $t0,$t0,1");
                        cgen.addCode("addi $t1,$t1,1");
                        cgen.addCode(String.format("bne $t3,$zero,%s", label1));
                        cgen.addCode(String.format("%s: ", label3));
                        this.variableDecl = new VariableDecl(Type.boolType);
                    } else {
                        System.out.println("ArithmeticExpr ERROR!  ==,!= Operation");
                    }
                    if (this.operator.operatorString.equals("!=")) {
                        cgen.addCode("xori $t2,$t2,1");
                    }
                    break;
                case "||":
                    if (firstOperand.variableDecl.type != secondOperand.variableDecl.type) {
                        System.out.println("ArithmeticExpr ERROR!  || Operation");
                    } else if (firstOperand.variableDecl.type == Type.boolType) {
                        cgen.addCode("or $t2,$t0,$t1");
                        this.variableDecl = new VariableDecl(Type.boolType);
                    } else {
                        System.out.println("ArithmeticExpr ERROR!  || Operation");
                    }
                    break;
                case "&&":
                    if (firstOperand.variableDecl.type != secondOperand.variableDecl.type) {
                        System.out.println("ArithmeticExpr ERROR!  && Operation");
                    } else if (firstOperand.variableDecl.type == Type.boolType) {
                        cgen.addCode("and $t2,$t0,$t1");
                        this.variableDecl = new VariableDecl(Type.boolType);
                    } else {
                        System.out.println("ArithmeticExpr ERROR!  && Operation");
                    }
                    break;
            }
        }
        this.variableDecl.location = cgen.stackOffset;
        cgen.stackOffset -= 4;
        this.variableDecl.varType = VarType.LOCAL;
        cgen.addCode(String.format("sw $t2,%d($fp)", this.variableDecl.location));
    }
}
