package Model;

public class WhileStmt extends Stmt {
    Expr condition;
    Stmt body;

    public WhileStmt(Expr condition, Stmt body) {
        this.condition = condition;
        this.body = body;
    }
}
