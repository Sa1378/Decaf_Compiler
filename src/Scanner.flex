import java.io.*;
import java_cup.runtime.*;

%%

%cup
%public
%type		Symbol
%char


%{
        StringBuilder string = new StringBuilder();
        String value;
	private int lineNumber = 1;
	public int lineNumber() { return lineNumber; }

    private Symbol token(int type) {
        return new Symbol(type);
    }
    private Symbol token(int type, Object value) {
        return new Symbol(type,value);
    }
%}

LINEBREAK = (\n | \r | \r\n)
NONEBREAK = ([^\r\n])
WHITESPACE = (\s)
DIGIT = ([0-9])
HEXDIGIT = ([a-fA-F0-9])
DECLITERAL  = ({DIGIT}+)
HEXLITERAL = (0 [xX] {HEXDIGIT}+)
EXP = ([eE] [-+]? {DECLITERAL})
FLTLITERAL =  ({DIGIT}+"."{DIGIT}*{EXP}?)
ONELINECOMMENT = ("//" {NONEBREAK}* {LINEBREAK}?)
IDENT = ([a-zA-Z][a-zA-Z0-9_]*)
BOOLLIT = ("true" | "false")

%state STRING, COMMENT

%%


<YYINITIAL> {
    {WHITESPACE} {}

    "void" { return token(Sym.VOID); }
    "int" { return token(Sym.INT); }
    "double" { return token(Sym.DOUBLE);}
    "bool" {return token(Sym.BOOL);}
    "string" { return token(Sym.STRING);}
    "class" { return token(Sym.CLASS);}
    "interface" { return token(Sym.INTERFACE);}
    "null" { return token(Sym.NULL);}
    "this" { return token(Sym.THIS);}
    "extends" { return token(Sym.EXTENDS);}
    "implements" { return token(Sym.IMPLEMENTS);}
    "for" { return token(Sym.FOR);}
    "while" { return token(Sym.WHILE);}
    "if" { return token(Sym.IF);}
    "else" { return token(Sym.ELSE);}
    "return" { return token(Sym.RETURN);}
    "break" { return token(Sym.BREAK);}
    "new" { return token(Sym.NEW);}
    "NewArray" { return token(Sym.NEWARRAY);}
    "Print" { return token(Sym.PRINT);}
    "ReadInteger" { return token(Sym.READINTEGER);}
    "ReadLine" { return token(Sym.READLINE);}
    "-" {return token(Sym.MINUS);}
    "+" {return token(Sym.PLUS);}
    "*" {return token(Sym.MULL);}
    "/" {return token(Sym.DIV);}
    "%" {return token(Sym.PERCENT);}
    "<" {return token(Sym.LESS);}
    ">" {return token(Sym.BIGGER);}
    "!" {return token(Sym.EXCLAMATION);}
    ";" {return token(Sym.SEMI);}
    "," {return token(Sym.COMMA);}
    "." {return token(Sym.DOT);}
    "=" {return token(Sym.ASSIGN);}
    "(" {return token(Sym.LEFTPAREN);}
//    '"' {return token(Sym.DOUBLEQUOTE);}
    ")" {return token(Sym.RIGHTPAREN);}
    "[" {return token(Sym.OPENBRACKET);}
    "[]" {return token(Sym.BRACKETS);}
    "]" {return token(Sym.CLOSEBRACKET);}
    "{" {return token(Sym.OPENAC);}
    "}" {return token(Sym.CLOSEAC);}
    ">=" {return token(Sym.BIGEQUAL);}
    "<=" {return token(Sym.LESSEQUAL);}
    "==" {return token(Sym.EQUALS);}
    "!=" {return token(Sym.NOTEQUALS);}
    "&&" {return token(Sym.AND);}
    "||" {return token(Sym.OR);}
    "[]" {return token(Sym.BRACKETS);}

    {BOOLLIT} {
    return token( Sym.T_BOOLEANLITERAL, yytext() );
    }
    {DECLITERAL} | {HEXLITERAL} {
    return token( Sym.T_INTLITERAL, yytext() );

    }
    {FLTLITERAL} {
     return token( Sym.T_DOUBLELITERAL, yytext() );
    }

    {IDENT} {
        value = yytext();
        if (value.length()>31){
           return token(Sym.UNDEFINED_TOKEN);
        }
        else
       return token( Sym.T_ID,  yytext());
    }


    \"  {
        yybegin(STRING);
        string.setLength(0);
    }

    "/*" {yybegin(COMMENT);}
    {ONELINECOMMENT} {}

    <<EOF>> {return token( Sym.EOF );}
    [^] {return token( Sym.UNDEFINED_TOKEN );}
}
<STRING> {
    \" {
        yybegin(YYINITIAL);
        value = "\"" + string.toString() + "\"";
        return token( Sym.T_STRINGLITERAL,value  );
    }
    [^\r\n\"]+ {string.append(yytext());}
    [\r\n] {return token( Sym.UNDEFINED_TOKEN );}
    <<EOF>> {return token( Sym.UNDEFINED_TOKEN );}
    [^] {return token( Sym.UNDEFINED_TOKEN );}
}
<COMMENT> {
    "*/" {yybegin(YYINITIAL);}
    <<EOF>> {return token( Sym.UNDEFINED_TOKEN );}
    [^] {}
}
