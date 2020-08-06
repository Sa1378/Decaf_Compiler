package Model;

public class FieldLvalue extends Lvalue {
    Expr expr;
    Identifier identifier;

    public FieldLvalue(Expr expr, Identifier identifier) {
        this.expr = expr;
        this.identifier = identifier;
    }

    @Override
    protected void cgen(Cgen cgen) {
        if (expr == null) {
            VariableDecl var = cgen.findVar(identifier);
            if (var == null) {
                System.out.println("Error variable not found");
                return;
            }
            switch (var.varType) {
                case LOCAL:
                case PARAMETER:
                    cgen.addCode(String.format("addi $t0,$fp,%d", var.location));
                    this.variableDecl = new VariableDecl(var.type, null);
                    this.variableDecl.location = cgen.newLocation();
                    cgen.addCode(String.format("sw $t0,%d($fp)", this.variableDecl.location));
                    return;
                case GLOBAL:
                    cgen.addCode(String.format("addi $t0,$s7,%d", var.location));
                    this.variableDecl = new VariableDecl(var.type, null);
                    this.variableDecl.location = cgen.newLocation();
                    cgen.addCode(String.format("sw $t0,%d($fp)", this.variableDecl.location));
                    return;
                case FIELD:
                    this.expr = new This();
                    break;
                default:
                    return;
            }
        }
        expr.cgen(cgen);
        Type type = expr.variableDecl.type;
        if (!(type instanceof ClassType)) {
            System.out.println("Error wrong type");
            return;
        }
        Identifier id = ((ClassType) type).identifier;
        ClassDecl cls = cgen.classTable.get(id);
        if (cls == null) {
            System.out.println("ERROR class not found");
            return;
        }
        VariableDecl var = null;
        for (VariableDecl variableDecl : cls.fields) {
            if (variableDecl.identifier.equals(identifier)) {
                var = variableDecl;
            }
        }
        if (var == null) {
            System.out.println("ERROR field not found");
            return;
        }
        this.variableDecl = new VariableDecl(var.type, null);
        this.variableDecl.location = cgen.newLocation();
        cgen.addCode(String.format("lw $t0,%d($fp)", expr.variableDecl.location));
        cgen.addCode(String.format("addi $t0,$t0,%d", var.location));
        cgen.addCode(String.format("sw $t0,%d($fp)", this.variableDecl.location));
    }
}
