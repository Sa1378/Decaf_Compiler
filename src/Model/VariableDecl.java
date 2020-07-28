package Model;

public class VariableDecl extends Decl {
    Type type;
    Identifier identifier;
    int location;
    VarType varType;

    public VariableDecl(Type type,Identifier identifier) {
        this.type=type;
        this.identifier=identifier;
    }

    public VariableDecl(Type type) {
        this.type=type;
        this.identifier=null;
    }

    @Override
    public void cgen(Cgen cgen) {
        if(true){ //TODO
            cgen.addCode("ori $v0,$zero,9");
            cgen.addCode("ori $a0,$zero,4");
            cgen.addCode("syscall");
        }
    }
}
