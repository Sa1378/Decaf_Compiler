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
        for (VariableDecl variableDecl : varDecls)
            cgen.varTable.get(0).put(variableDecl.identifier, variableDecl);
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
    }
}
