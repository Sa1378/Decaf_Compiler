package Model;

import java.util.ArrayList;
import java.util.HashMap;

public class Cgen {
    ArrayList<HashMap<Identifier, VariableDecl>> varTable = new ArrayList<>();
    HashMap<Identifier, FunctionDecl> funcTable = new HashMap<>();
    HashMap<Identifier, ClassDecl> classTable = new HashMap<>();
    ArrayList<String> data = new ArrayList<>();
    ArrayList<String> code = new ArrayList<>();
    int currBytes=0;

    public Cgen() {
        varTable.add(new HashMap<>());
        addCode(".text",0);
        addData(".data");
    }

    public void addData(String s) {
        data.add(s);
    }

    public void addCode(String s) {
        code.add(s);
        this.currBytes+=4;
    }

    public void addCode(String s,int bytes) {
        code.add(s);
        this.currBytes+=bytes;
    }
}
