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
}
