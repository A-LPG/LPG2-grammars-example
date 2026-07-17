-- Bcpl Parser (LPG) — curated subset
%Options la=2
%Options fp=BcplParser
%options package=lpg.grammars.bcpl
%options template=dtParserTemplateF.gi
%options import_terminals=BcplLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    program
%End
%Rules

    program ::= decl_list
    decl_list ::= decl | decl_list decl
    decl ::= GET STRING | LET IDENTIFIER LPAREN RPAREN EQ expr
    expr ::= NUMBER | STRING | IDENTIFIER | VALOF RESULTIS NUMBER

%End
