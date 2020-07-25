package Model;

public class VariableDecl extends Decl {
    Type type;
    Identifier identifier;
    int location;
    public VariableDecl(Type type,Identifier identifier) {
        this.type=type;
        this.identifier=identifier;
    }

    @Override
    public void cgen(Cgen cgen) {

    }
}
