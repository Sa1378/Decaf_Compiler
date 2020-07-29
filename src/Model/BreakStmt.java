package Model;

public class BreakStmt extends Stmt {
    @Override
    protected void cgen(Cgen cgen) {
        String outLabel = cgen.topLoop();
        cgen.addCode(String.format("j %s",outLabel));
    }
}
