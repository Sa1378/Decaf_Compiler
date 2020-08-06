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
    }
}
