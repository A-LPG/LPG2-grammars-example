-- Erlang Parser (LPG) — curated subset
%Options la=2
%Options fp=ErlangParser
%options package=lpg.grammars.erlang
%options template=dtParserTemplateF.gi
%options import_terminals=ErlangLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    forms
%End
%Rules

    forms ::= form_list
    form_list ::= form | form_list form
    form ::= MINUS MODULE LPAREN IDENTIFIER RPAREN DOT
           | MINUS EXPORT LPAREN LBRACKET export_list RBRACKET RPAREN DOT
           | IDENTIFIER LPAREN RPAREN ARROW expr DOT
    export_list ::= export_item | export_list COMMA export_item
    export_item ::= IDENTIFIER SLASH NUMBER
    expr ::= IDENTIFIER | NUMBER | STRING | TRUE | FALSE

%End
