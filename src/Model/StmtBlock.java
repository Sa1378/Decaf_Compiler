package Model;

import java.util.ArrayList;
import java.util.Collections;

public class StmtBlock extends Stmt{
    ArrayList<VariableDecl> varDecls;
    ArrayList<Stmt> stmts;

    public StmtBlock(ArrayList<VariableDecl> varDecls, ArrayList<Stmt> blocks) {
        this.varDecls = varDecls;
        Collections.reverse(blocks);
        this.stmts = blocks;
    }

    public void cgen(Cgen cgen) {
        cgen.addScope();
        for (VariableDecl varDecl: varDecls){
            varDecl.location = cgen.stackOffset; //TODO init variable with null values?
            varDecl.varType = VarType.LOCAL;
            cgen.stackOffset -= 4;
            cgen.topScope().put(varDecl.identifier,varDecl);
        }
        for (Stmt stmt:stmts){
            stmt.cgen(cgen);
        }
        cgen.popScope();
    }
}