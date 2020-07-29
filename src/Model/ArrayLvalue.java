package Model;

public class ArrayLvalue extends Lvalue {
    Expr expr;
    Expr index;

    public ArrayLvalue(Expr expr, Expr index) {
        this.expr = expr;
        this.index = index;
    }

    @Override
    protected void cgen(Cgen cgen) {
        expr.cgen(cgen);
        index.cgen(cgen);
        if (!(expr.variableDecl.type instanceof  ArrayType)){
            System.out.println("Error invalid array");
            return;
        }
        if(index.variableDecl.type != Type.intType){
            System.out.println("Error invalid.index");
            return;
        }
        this.variableDecl = new VariableDecl(((ArrayType) expr.variableDecl.type).type,null);
        this.variableDecl.location = cgen.newLocation();
        //TODO varType
        cgen.addCode(String.format("lw $t0,%d($fp",expr.variableDecl.location));
        cgen.addCode(String.format("lw $t1,%d($fp",index.variableDecl.location));
        //TODO runtime out of bounds error
        cgen.addCode("addi $t1,$t1,1");
        cgen.addCode("sll $t1,$t1,2");
        cgen.addCode("add $t2,$t0,$t1");
        cgen.addCode(String.format("sw $t2,%d($fp",this.variableDecl.location));
    }
}