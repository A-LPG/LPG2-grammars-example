-- Pddl Parser (LPG) — curated subset
%Options la=2
%Options fp=PddlParser
%options package=lpg.grammars.pddl
%options template=dtParserTemplateF.gi
%options import_terminals=PddlLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    pddlDoc
%End
%Rules

    pddlDoc ::= LPAREN DEFINE LPAREN DOMAIN IDENTIFIER RPAREN section_list RPAREN
    section_list ::= $empty | section_list section
    section ::= LPAREN COLON IDENTIFIER pred_list RPAREN
    pred_list ::= $empty | pred_list pred
    pred ::= LPAREN IDENTIFIER var_list RPAREN
    var_list ::= $empty | var_list VARIABLE

%End
