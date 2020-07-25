package Model;

public class ForStmt extends Stmt {
    Expr initialExpr;
    Expr condition;
    Expr stepExpr;
    Stmt body;

    public ForStmt(Expr initialExpr, Expr condition, Expr stepExpr, Stmt body) {
        this.initialExpr = initialExpr;
        this.condition = condition;
        this.stepExpr = stepExpr;
        this.body = body;
    }
}
