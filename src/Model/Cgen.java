package Model;

import java.util.ArrayList;
import java.util.HashMap;

public class Cgen {
    ArrayList<HashMap<Identifier, VariableDecl>> varTable = new ArrayList<>();
    ArrayList<HashMap<Identifier, FunctionDecl>> funcTable = new ArrayList<>();
    HashMap<Identifier, ClassDecl> classTable = new HashMap<>();
    ArrayList<String> data = new ArrayList<>();
    ArrayList<String> code = new ArrayList<>();
    int currBytes = 0;
    int stackOffset = -4;

    public Cgen() {
        varTable.add(new HashMap<>());
        funcTable.add(new HashMap<>());
        addCode(".text", 0);
        addData(".data");

    }

    public void addData(String s) {
        data.add(s);
    }

    public void addCode(String s) {
        code.add(s);
        this.currBytes += 4;
    }

    public void addCode(String s, int bytes) {
        code.add(s);
        this.currBytes += bytes;
    }

    public void addScope() {
        varTable.add(new HashMap<>());

    }

    public HashMap<Identifier, VariableDecl> topScope() {
        return varTable.get(varTable.size() - 1);
    }

    public void popScope() {
        varTable.remove(varTable.size() - 1);
    }
}
