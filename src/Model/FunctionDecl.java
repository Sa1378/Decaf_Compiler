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
        int ptr = 4 * (formals.size() + 1);
        for (VariableDecl formal : formals) {
            formal.location = ptr;
            formal.varType = VarType.PARAMETER;
            ptr -= 4;
            cgen.topScope().put(formal.identifier, formal);
        }
        cgen.addCode(String.format("%s: ",getLabel()));
        cgen.addCode("sw $ra,4($fp)");
        cgen.stackOffset = -4;
        body.cgen(cgen);
        ReturnStmt ret = new ReturnStmt(null);
        ret.cgen(cgen);
        cgen.popScope();
    }

    public String getLabel() {
        if (parClass != null) {
            return String.format("funcLabel_%s", parClass.identifier.name + "." + identifier.name);
        } else {
            return String.format("funcLabel_%s", identifier.name);
        }
    }
}
