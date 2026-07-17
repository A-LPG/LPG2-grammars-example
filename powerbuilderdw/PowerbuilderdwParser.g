-- Powerbuilderdw Parser (LPG) — curated subset
%Options la=2
%Options fp=PowerbuilderdwParser
%options package=lpg.grammars.powerbuilderdw
%options template=dtParserTemplateF.gi
%options import_terminals=PowerbuilderdwLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    start_rule
%End
%Rules

    start_rule ::= header_rule datawindow_rule
    header_rule ::= RELEASE NUMBER SEMI
    datawindow_rule ::= DATAWINDOW LPAREN attr_list RPAREN
    attr_list ::= attr | attr_list attr
    attr ::= IDENTIFIER EQ NUMBER | IDENTIFIER EQ STRING

%End
