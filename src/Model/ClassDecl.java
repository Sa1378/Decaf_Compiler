package Model;

import java.util.ArrayList;

public class ClassDecl extends Decl {
    Identifier identifier;
    ClassType par;
    ArrayList<VariableDecl> fields=new ArrayList<>();
    ArrayList<FunctionDecl> methods=new ArrayList<>();

    public ClassDecl(Identifier identifier, ClassType par, ArrayList<Decl> fields) {
        this.identifier = identifier;
        this.par = par;
        for (Decl decl : fields) {
            if (decl instanceof VariableDecl) {
                this.fields.add((VariableDecl)decl);
            }
            else {
                this.methods.add((FunctionDecl)decl);
            }
        }
    }

    boolean fieldsAdded=false;

    public void addFields(Cgen cgen) {
        if(par==null || fieldsAdded)return ;
        ClassDecl parDecl=cgen.classTable.get(par.identifier);
        parDecl.addFields(cgen);

        ArrayList<VariableDecl> newFields=parDecl.fields;
        ArrayList<FunctionDecl> newMethods=parDecl.methods;

        for(VariableDecl variableDecl:fields) {
            boolean exists=false;
            for(VariableDecl variableDecl1:newFields)
                if(variableDecl.identifier.equals(variableDecl1.identifier))
                    exists=true;
            if (!exists)
                newFields.add(variableDecl);
        }
        for(FunctionDecl functionDecl:methods) {
            boolean exists=false;
            for(int i=0;i<newMethods.size();i++)
                if(functionDecl.identifier.equals(newMethods.get(i).identifier)) {
                    newMethods.set(i,functionDecl);
                    exists = true;
                }
            if (!exists)
                newMethods.add(functionDecl);
        }
        fields=newFields;
        methods=newMethods;
        fieldsAdded=true;
    }

    @Override
    public void cgen(Cgen cgen) {

    }

    public void addVtable(Cgen cgen) {
        cgen.addData("ClassVtable_"+identifier.name+":");
        for(int i=0;i<methods.size();i++)
            cgen.addCode(".word"+methods.get(i).location);
    }

}
