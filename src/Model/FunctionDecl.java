package Model;

import java.util.ArrayList;

public class FunctionDecl extends Decl {
    Type type;
    Identifier identifier;
    ArrayList<VariableDecl> formals;
    StmtBlock body;
    int location;
    ClassType parClass;

    public FunctionDecl(Type type, Identifier identifier, ArrayList<VariableDecl> formals, StmtBlock body) {
        this.type = type;
        this.identifier = identifier;
        this.formals = formals;
        this.body = body;
    }

    @Override
    public void cgen(Cgen cgen) {
        if (parClass != null) {
            formals.add(new VariableDecl(parClass, new Identifier("this")));
        }
        cgen.addScope();
        int ptr = 4 * formals.size();
        for (VariableDecl formal : formals) {
            formal.location = ptr;
            ptr -= 4;
            cgen.topScope().put(formal.identifier, formal);
        }
        if (parClass != null) {
            cgen.addCode(String.format("funcLabel_%s: ", parClass.identifier.name + "." + identifier.name));
        } else {
            cgen.addCode(String.format("funcLabel_%s: ", identifier.name));
        }
        cgen.stackOffset = -4;
        body.cgen(cgen); //TODO get size
        cgen.popScope();
    }
}
