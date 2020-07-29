package Model;

public class LvalueExpr extends Expr {
    Lvalue lvalue;

    public LvalueExpr(Lvalue lvalue) {
        this.lvalue = lvalue;
    }

    @Override
    protected void cgen(Cgen cgen) {
        lvalue.cgen(cgen);
        this.variableDecl = new VariableDecl(lvalue.variableDecl.type,null);
        this.variableDecl.location = cgen.newLocation();
        this.variableDecl.varType = VarType.LOCAL; //TODO is three a difference between local and temp and param?
        cgen.addCode(String.format("lw $t0,%d($fp)",lvalue.variableDecl.location));
        cgen.addCode("lw $t1,0($t0)");
        cgen.addCode(String.format("sw $t1,%d($fp)",this.variableDecl.location));
    }
}
