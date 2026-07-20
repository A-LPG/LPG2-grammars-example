-- ABB RAPID Parser (LPG)
%Options la=2
%Options fp=AbbParser
%options package=lpg.grammars.abb
%options template=dtParserTemplateF.gi
%options import_terminals=AbbLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    module_
%End
%Rules
    module_ ::= moduleData
    moduleData ::= MODULE moduleName NEWLINE dataList opt_nl ENDMODULE
    opt_nl ::= $empty | opt_nl NEWLINE
    moduleName ::= IDENTIFIER | procCall
    dataList ::= $empty | dataList NEWLINE | dataList declaration NEWLINE | dataList procedure NEWLINE
    procedure ::= PROC procCall NEWLINE func_calls ENDPROC
    func_calls ::= $empty | func_calls functionCall NEWLINE
    procCall ::= IDENTIFIER | IDENTIFIER procParameter
    procParameter ::= BRACKET_OPEN BRACKET_CLOSE | BRACKET_OPEN IDENTIFIER BRACKET_CLOSE
    functionCall ::= IDENTIFIER functionParameter SEMICOLON
                   | IDENTIFIER functionParameter COMMA functionParameter SEMICOLON
    functionParameter ::= ON_CALL | OFF_CALL | primitive | IDENTIFIER
    declaration ::= init_ type_ IDENTIFIER opt_init SEMICOLON
    opt_init ::= $empty | EQUALS expression
    type_ ::= TOOLDATA | WOBJDATA | SPEEDDATA | ZONEDATA | CLOCK | BOOL
    init_ ::= CONST | PERS | VAR | LOCAL CONST | LOCAL PERS | LOCAL VAR
    expression ::= array_ | primitive
    array_ ::= SQUARE_OPEN expression SQUARE_CLOSE
             | SQUARE_OPEN expr_list SQUARE_CLOSE
    expr_list ::= expression COMMA expression | expr_list COMMA expression
    primitive ::= TRUE | FALSE | CHARLITERAL | STRINGLITERAL
                | FLOATLITERAL | INTLITERAL
                | PLUS FLOATLITERAL | MINUS FLOATLITERAL
                | PLUS INTLITERAL | MINUS INTLITERAL
%End
