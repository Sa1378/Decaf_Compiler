package Model;

abstract public class Lvalue{
    VariableDecl variableDecl;
    abstract void cgen(Cgen cgen);
}
