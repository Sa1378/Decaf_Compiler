package Model;

public class VariableDecl extends Decl {
    Type type;
    Identifier identifier;
    int location;
    boolean isGlobal = false;
    boolean isField = false;
    public VariableDecl(Type type,Identifier identifier) {
        this.type=type;
        this.identifier=identifier;
    }

    @Override
    public void cgen(Cgen cgen) {
        if(isGlobal) { //TODO
            cgen.addCode("ori $v0,$zero,9");
            cgen.addCode("ori $a0,$zero,4");
            cgen.addCode("syscall");
        }
    }
}
