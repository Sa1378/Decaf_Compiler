package Model;

public class AssignmentExpr extends Expr {
    Lvalue lvalue;
    Expr expr;

    public AssignmentExpr(Lvalue lvalue, Expr expr) {
        this.lvalue = lvalue;
        this.expr = expr;
    }

    @Override
    protected void cgen(Cgen cgen) {
        expr.cgen(cgen);
        lvalue.cgen(cgen);
        this.variableDecl = expr.variableDecl;
        cgen.addCode(String.format("lw $t0,%d($fp)", lvalue.variableDecl.location));
        cgen.addCode(String.format("lw $t1,%d($fp)", expr.variableDecl.location));
        cgen.addCode("sw $t1,0($t0)");
    }
}