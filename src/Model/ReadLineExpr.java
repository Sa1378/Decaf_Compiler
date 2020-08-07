package Model;

public class ReadLineExpr extends Expr {
    @Override
    protected void cgen(Cgen cgen) {
        String label1 = cgen.newLabel();
        String label2 = cgen.newLabel();
        variableDecl = new VariableDecl(Type.stringType);
        variableDecl.location = cgen.newLocation();
        cgen.addCode(String.format("addi $sp,$fp,%d",cgen.stackOffset));
        cgen.addCode(String.format("%s:",label1));
        cgen.addCode("li $v0,8");
        cgen.addCode("la $a0,ReadLineBuffer");
        cgen.addCode("li $a1,2");
        cgen.addCode("syscall");
        cgen.addCode("lb $t0,ReadLineBuffer");
        cgen.addCode("sb $t0,0($sp)");
        cgen.addCode("li $t1,13");
        cgen.addCode("sne $t2,$t0,$t1");
        cgen.addCode("sub $sp,$sp,$t2");
        cgen.addCode("li $t1,10");
        cgen.addCode(String.format("bne $t1,$t0,%s",label1));
        cgen.addCode("lb $t1,NewLineLabel");
        cgen.addCode(String.format("bne $t0,$t1,%s",label1));
        cgen.addCode(String.format("addi $t2,$sp,%d",-cgen.stackOffset));
        cgen.addCode("sub $t2,$fp,$t2");
        cgen.addCode("move $a0,$t2");
        cgen.addCode("li $v0,9");
        cgen.addCode("syscall");
        cgen.addCode(String.format("sw $v0,%d($fp)",variableDecl.location));
        cgen.addCode("add $sp,$sp,$t2");
        cgen.addCode(String.format("%s: ",label2));
        cgen.addCode("lb $t0,0($sp)");
        cgen.addCode("addi $sp,$sp,-1");
        cgen.addCode("addi $t2,$t2,-1");
        cgen.addCode("sb $t0,0($v0)");
        cgen.addCode("addi $v0,$v0,1");
        cgen.addCode(String.format("bne $t2,$zero,%s",label2));
        cgen.addCode("sb $zero,-1($v0)");
    }
}
