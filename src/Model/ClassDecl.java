package Model;

import java.util.ArrayList;
import java.util.HashMap;

public class ClassDecl extends Decl {
    public String classLabel;
    Identifier identifier;
    ClassType par;
    ArrayList<VariableDecl> fields = new ArrayList<>();
    ArrayList<FunctionDecl> methods = new ArrayList<>();

    public ClassDecl(Identifier identifier, ClassType par, ArrayList<Decl> fields) {
        this.identifier = identifier;
        this.par = par;
        for (Decl decl : fields) {
            if (decl instanceof VariableDecl) {
                this.fields.add((VariableDecl) decl);
            } else {
                this.methods.add((FunctionDecl) decl);
            }
        }
        classLabel = "ClassVtable_" + identifier.name;
    }

    boolean fieldsAdded = false;

    public void addFields(Cgen cgen) {
        if (par == null || fieldsAdded) return;
        ClassDecl parDecl = cgen.classTable.get(par.identifier);
        parDecl.addFields(cgen);

        ArrayList<VariableDecl> newFields = parDecl.fields;
        ArrayList<FunctionDecl> newMethods = parDecl.methods;

        for (VariableDecl variableDecl : fields) {
            boolean exists = false;
            for (VariableDecl variableDecl1 : newFields)
                if (variableDecl.identifier.equals(variableDecl1.identifier))
                    exists = true;
            if (!exists)
                newFields.add(variableDecl);
        }
        for (FunctionDecl functionDecl : methods) {
            boolean exists = false;
            for (int i = 0; i < newMethods.size(); i++)
                if (functionDecl.identifier.equals(newMethods.get(i).identifier)) {
                    newMethods.set(i, functionDecl);
                    exists = true;
                }
            if (!exists)
                newMethods.add(functionDecl);
        }
        fields = newFields;
        methods = newMethods;
        fieldsAdded = true;
    }

    @Override
    public void cgen(Cgen cgen) {
        cgen.funcTable.add(new HashMap<>());
        cgen.addScope();
        for (FunctionDecl method : methods) {
            cgen.funcTable.get(1).put(method.identifier, method);
            method.parClass = new ClassType(identifier);
        }
        int ptr = 0;
        for (VariableDecl field : fields) {
            cgen.topScope().put(field.identifier, field);
            ptr += 4;
            field.location = ptr;
            field.varType = VarType.FIELD;
        }
        for (FunctionDecl method : methods) {
            method.cgen(cgen);
        }
        cgen.popScope();
        cgen.funcTable.remove(1);
    }

    public void addVtable(Cgen cgen) {
        cgen.addData(classLabel + ":");
        cgen.addData(String.format(".space %d",4 * methods.size()));
    }

    int methodOffset(Identifier id) {
        for (int i = 0; i < methods.size(); i++) {
            if (methods.get(i).identifier.equals(id)) {
                return 4 * i;
            }
        }
        return 0;
    }
    FunctionDecl getMethod(Identifier id){
        for (int i = 0; i < methods.size(); i++) {
            if (methods.get(i).identifier.equals(id)) {
                return methods.get(i);
            }
        }
        return null;
    }
}
