package Model;

public class NewExpr extends Expr {
    ClassType type;

    public NewExpr(ClassType type){
        this.type=type;
    }

    @Override
    protected void cgen(Cgen cgen) {
        ClassDecl cls = cgen.classTable.get(type.identifier);
        if(cls == null){
            System.out.println("Error wrong class type");
            return;
        }
        cgen.addCode(String.format("li $a0,%d",(cls.fields.size()+1) * 4));
        cgen.addCode("li $v0,9");
        cgen.addCode("syscall");
        this.variableDecl = new VariableDecl(type,null);
        this.variableDecl.varType = VarType.LOCAL;
        this.variableDecl.location = cgen.newLocation();
        cgen.addCode(String.format("la $t0,%s",cls.classLabel));
        cgen.addCode("sw $t0,0($v0)");
        cgen.addCode(String.format("sw $v0,%d($fp)",variableDecl.location));
    }
}
