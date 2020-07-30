package Model;

import java.util.ArrayList;

public class Initial {
    ArrayList<Decl> program;
    ArrayList<VariableDecl> varDecls = new ArrayList<>();
    ArrayList<FunctionDecl> funcDecls = new ArrayList<>();
    ArrayList<ClassDecl> classDecls = new ArrayList<>();

    public Initial(ArrayList<Decl> program) {
        this.program = program;
        for (Decl decl : program) {
            if (decl instanceof VariableDecl) {
                varDecls.add((VariableDecl) decl);
            }
            if (decl instanceof FunctionDecl) {
                funcDecls.add((FunctionDecl) decl);
            }
            if (decl instanceof ClassDecl) {
                classDecls.add((ClassDecl) decl);
            }
        }
    }

    public void cgen() {
        Cgen cgen = new Cgen();
        int globPtr = 0;
        for (VariableDecl variableDecl : varDecls) {
            variableDecl.varType = VarType.GLOBAL;
            variableDecl.location = globPtr;
            globPtr -= 4;
            cgen.varTable.get(0).put(variableDecl.identifier, variableDecl);
        }
        for (FunctionDecl functionDecl : funcDecls)
            cgen.funcTable.get(0).put(functionDecl.identifier, functionDecl);
        for (ClassDecl classDecl : classDecls)
            cgen.classTable.put(classDecl.identifier, classDecl);
        for (ClassDecl classDecl : classDecls)
            classDecl.addFields(cgen);
        for (Decl decl : program)
            decl.cgen(cgen);
        for (ClassDecl classDecl : classDecls)
            classDecl.addVtable(cgen);
        cgen.addCode("InitialLabel: ");
        cgen.addCode("move $s7,$sp"); //TODO move globals to data part?
        cgen.addCode(String.format("addi $fp,$sp,%d", globPtr));
        Stmt s = new Call(null, new Identifier("main"), new ArrayList<>());
        s.cgen(cgen);
        for (ClassDecl classDecl : classDecls) {
            cgen.addCode(String.format("la $t0,%s", classDecl.classLabel));
            for (FunctionDecl method : classDecl.methods) {
                cgen.addCode(String.format("la $t1,%s", method.getLabel()));
                cgen.addCode(String.format("sw $t1,%d($t0)", classDecl.methodOffset(method.identifier)));
            }
        }
        cgen.addCode("li $v0,10");
        cgen.addCode("syscall");
    }
}
