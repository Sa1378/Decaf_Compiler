package Model;

import java.util.ArrayList;

public class FunctionDecl extends Decl {
    Type type;
    Identifier identifier;
    ArrayList<VariableDecl> formals;
    StmtBlock body;
    int location;

    public FunctionDecl(Type type, Identifier identifier, ArrayList<VariableDecl> formals, StmtBlock body) {
        this.type = type;
        this.identifier = identifier;
        this.formals = formals;
        this.body = body;
    }

    @Override
    public void cgen(Cgen cgen) {

    }
}
