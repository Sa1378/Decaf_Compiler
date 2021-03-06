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

    public void cgen(Cgen cgen) {
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
        for (FunctionDecl functionDecl : funcDecls)
            functionDecl.init();
        for (Decl decl : program)
            decl.cgen(cgen);
        for (ClassDecl classDecl : classDecls)
            classDecl.addVtable(cgen);
        cgen.addCode("InitialLabel: ");
        cgen.addCode("la $t0,BooleanLabel");
        cgen.addCode("la $t1,FalseLabel");
        cgen.addCode("la $t2,TrueLabel");
        cgen.addCode("sw $t1,0($t0)");
        cgen.addCode("sw $t2,4($t0)");
        cgen.addCode("la $t0,NullLabel");
        cgen.addCode("sw $t0,0($t0)");
        cgen.addCode("la $t0,DigitMapLabel");
        for (int i = 0; i < 10; i++) {
            cgen.addCode(String.format("li $t1,%d",i));
            cgen.addCode(String.format("sb $t1,%d($t0)",'0' + i));
        }
        for (int i = 'A';i<'G';i++){
            cgen.addCode(String.format("li $t1,%d",i - 'A' + 10));
            cgen.addCode(String.format("sb $t1,%d($t0)",i));
        }
        for (int i = 'a';i<'g';i++){
            cgen.addCode(String.format("li $t1,%d",i - 'a' + 10));
            cgen.addCode(String.format("sb $t1,%d($t0)",i));
        }
        cgen.addCode("move $s7,$sp");
        cgen.addCode(String.format("addi $fp,$sp,%d", globPtr));
        for (ClassDecl classDecl : classDecls) {
            cgen.addCode(String.format("la $t0,%s", classDecl.classLabel));
            for (FunctionDecl method : classDecl.methods) {
                cgen.addCode(String.format("la $t1,%s", method.getLabel()));
                cgen.addCode(String.format("sw $t1,%d($t0)", classDecl.methodOffset(method.identifier)));
            }
        }
        Stmt s = new Call(null, new Identifier("main"), new ArrayList<>());
        s.cgen(cgen);
        cgen.addCode("li $v0,10");
        cgen.addCode("syscall");
    }
}
