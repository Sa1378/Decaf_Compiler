package Model;

import java.util.ArrayList;
import java.util.HashMap;

public class Cgen {
    ArrayList<HashMap<Identifier, VariableDecl>> varTable = new ArrayList<>();
    ArrayList<HashMap<Identifier, FunctionDecl>> funcTable = new ArrayList<>();
    HashMap<Identifier, ClassDecl> classTable = new HashMap<>();
    public ArrayList<String> data = new ArrayList<>();
    public ArrayList<String> code = new ArrayList<>();
    ArrayList<String> loopLabels = new ArrayList<>();
    int currBytes = 0;
    int stackOffset = -4;
    int labelCnt = 0;
    int intCnt = 0;
    int doubleCnt = 0;
    int stringCnt = 0;
    int boolCnt = 0;
    int nullCnt = 0;

    public Cgen() {
        varTable.add(new HashMap<>());
        funcTable.add(new HashMap<>());
        addCode(".text");
        addCode("main:");
        addCode("j InitialLabel");
        addData(".data");
        addData("BooleanLabel: .space 8");
        addData("TrueLabel: .asciiz \"true\"");
        addData("FalseLabel: .asciiz \"false\"");
        addData("NewLineLabel: .asciiz \"\\n\"");
        addData("SpaceCharLabel: .asciiz \" \"");
        addData("DoubleRoundingLabel: .float 10000.0");
        addData("HalfDoubleLabel: .float 0.5");
        addData("ReadLineBuffer: .space 4");
        addData("CarriageReturnLabel: .asciiz \"\\r\"");
        addData("NullLabel: .space 4");
        addData("DigitMapLabel: .space 128");
    }

    public void addData(String s) {
        data.add(s);
        data.add(".align 2");
    }

    public void addCode(String s) {
        code.add(s);
        this.currBytes += 4;
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

    public String newLabel() {
        return String.format("NiceLabelYouHaveThere%d", labelCnt++);
    }

    public VariableDecl findVar(Identifier identifier) {
        for (int i = varTable.size() - 1; i >= 0; i--) {
            if (varTable.get(i).containsKey(identifier)) {
                return varTable.get(i).get(identifier);
            }
        }
        return null;
    }

    public int newLocation() {
        int tmp = stackOffset;
        stackOffset -= 4;
        return tmp;
    }

    public String topLoop() {
        return loopLabels.get(loopLabels.size() - 1);
    }

    public void popLoop() {
        loopLabels.remove(loopLabels.size() - 1);
    }

    public void pushLoop(String label) {
        loopLabels.add(label);
    }

    public String intLabel() {
        return String.format("intLabel%d", intCnt++);
    }

    public String stringLabel() {
        return String.format("stringLabel%d", stringCnt++);
    }

    public String doubleLabel() {
        return String.format("doubleLabel%d", doubleCnt++);
    }

    public String boolLabel() {
        return String.format("boolLabel%d", boolCnt++);
    }

    public String nullLabel() {
        return String.format("nullLabel%d", nullCnt++);
    }


}
