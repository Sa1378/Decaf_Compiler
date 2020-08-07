package Model;

public class ReadIntegerExpr extends Expr {
    @Override
    protected void cgen(Cgen cgen) {
        this.variableDecl = new VariableDecl(Type.intType,null);
        this.variableDecl.location = cgen.newLocation();
        this.variableDecl.varType = VarType.LOCAL;
//        cgen.addCode("li $v0,5");
//        cgen.addCode("syscall");
//        cgen.addCode(String.format("sw $v0,%d($fp)",this.variableDecl.location));
        ReadLineExpr r = new ReadLineExpr();
        r.cgen(cgen);
        cgen.addCode(String.format("lw $t0,%d($fp)",r.variableDecl.location));
        cgen.addCode("lb $t1,0($t0)");
        cgen.addCode("li $t3,0");
        String label1 = cgen.newLabel(),label2 = cgen.newLabel();
        String label3 = cgen.newLabel(),label4 = cgen.newLabel();
        String label5 = cgen.newLabel(),label6 = cgen.newLabel();
        String label7 = cgen.newLabel();
        cgen.addCode("li $t2,'-'");
        cgen.addCode(String.format("bne $t1,$t2,%s",label1));
        cgen.addCode("li $t3,1");
        cgen.addCode("addi $t0,$t0,1");
        cgen.addCode(String.format("j %s",label2));
        cgen.addCode(String.format("%s:",label1));
        cgen.addCode("li $t2,'+'");
        cgen.addCode(String.format("bne $t1,$t2,%s",label2));
        cgen.addCode("addi $t0,$t0,1");
        cgen.addCode(String.format("%s:",label2));
        cgen.addCode("li $t4,10");
        cgen.addCode("lb $t1,1($t0)");
        cgen.addCode("li $t2,'x'");
        cgen.addCode(String.format("beq $t1,$t2,%s",label3));
        cgen.addCode("li $t2,'X'");
        cgen.addCode(String.format("beq $t1,$t2,%s",label3));
        cgen.addCode(String.format("j %s",label4));
        cgen.addCode(String.format("%s:",label3));
        cgen.addCode("addi $t0,$t0,2");
        cgen.addCode("li $t4,16");
        cgen.addCode(String.format("%s:",label4));
        cgen.addCode("li $t1,0");
        cgen.addCode(String.format("%s:",label5));
        cgen.addCode("lb $t2,0($t0)");
        cgen.addCode(String.format("beq $t2,$zero,%s",label6));
        cgen.addCode("mul $t1,$t1,$t4");
        cgen.addCode("la $t5,DigitMapLabel");
        cgen.addCode("add $t5,$t5,$t2");
        cgen.addCode("lb $t2,0($t5)");
        cgen.addCode("add $t1,$t1,$t2");
        cgen.addCode("addi $t0,$t0,1");
        cgen.addCode(String.format("j %s",label5));
        cgen.addCode(String.format("%s:",label6));
        cgen.addCode(String.format("beq $t3,$zero,%s",label7));
        cgen.addCode("neg $t1,$t1");
        cgen.addCode(String.format("%s:",label7));
        cgen.addCode(String.format("sw $t1,%d($fp)",variableDecl.location));
    }
}
