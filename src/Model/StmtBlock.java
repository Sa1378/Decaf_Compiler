package Model;

import java.util.ArrayList;

public class StmtBlock extends Stmt{
    ArrayList<VariableDecl> varDecls;
    ArrayList<StmtBlock> blocks;

    public StmtBlock(ArrayList<VariableDecl> varDecls, ArrayList<StmtBlock> blocks) {
        this.varDecls = varDecls;
        this.blocks = blocks;
    }
}
