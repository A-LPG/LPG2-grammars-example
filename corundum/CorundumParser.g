-- Corundum Parser (LPG) — curated subset
%Options la=2
%Options fp=CorundumParser
%options package=lpg.grammars.corundum
%options template=dtParserTemplateF.gi
%options import_terminals=CorundumLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    program
%End
%Rules

    program ::= stmt_list
    stmt_list ::= stmt | stmt_list stmt
    stmt ::= IDENTIFIER EQ expr | RETURN expr | expr
    expr ::= primary | expr PLUS primary | expr MINUS primary | expr STAR primary | expr SLASH primary
    primary ::= NUMBER | STRING | TRUE | FALSE | NIL | IDENTIFIER

%End
