package Model;

public class ReadIntegerExpr extends Expr {
    @Override
    protected void cgen(Cgen cgen) {
        cgen.addCode("li $v0,5");
        cgen.addCode("syscall");
        this.variableDecl = new VariableDecl(Type.intType,null);
        this.variableDecl.location = cgen.newLocation();
        this.variableDecl.varType = VarType.LOCAL;
        cgen.addCode(String.format("sw $v0,%d($fp)",this.variableDecl.location));
    }
}
