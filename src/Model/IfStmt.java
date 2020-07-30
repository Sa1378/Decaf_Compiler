package Model;

import java.util.ArrayList;

public class IfStmt extends Stmt {
    Expr condition;
    Stmt ifBody;
    Stmt elseBody;

    public IfStmt(Expr condition, Stmt ifBody) {
        this.condition = condition;
        this.ifBody = ifBody;
        this.elseBody = null;
    }

    public IfStmt(Expr condition, Stmt ifBody, Stmt elseBody) {
        this.condition = condition;
        this.ifBody = ifBody;
        this.elseBody = elseBody;
    }

    @Override
    protected void cgen(Cgen cgen) {
        condition.cgen(cgen);
        cgen.addCode(String.format("lw $t0,%d($fp)", condition.variableDecl.location));
        String label1 = cgen.newLabel(), label2=null;
        if (elseBody != null)
            label2 = cgen.newLabel();
        cgen.addCode(String.format("beq $t0,$zero,%s", label1));
        ifBody.cgen(cgen);
        if (elseBody != null)
            cgen.addCode(String.format("j %s",label2));
        cgen.addCode(String.format("%s:", label1));
        if(elseBody!=null){
            elseBody.cgen(cgen);
            cgen.addCode(String.format("%s:", label2));
        }
    }
}
