-- Modelica Parser (LPG) — curated subset
%Options la=2
%Options fp=ModelicaParser
%options package=lpg.grammars.modelica
%options template=dtParserTemplateF.gi
%options import_terminals=ModelicaLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    stored_definition
%End
%Rules

    stored_definition ::= MODEL IDENTIFIER component_list EQUATION eq_list END IDENTIFIER SEMI
    component_list ::= $empty | component_list component
    component ::= REAL IDENTIFIER SEMI | PARAMETER REAL IDENTIFIER SEMI
    eq_list ::= $empty | eq_list equation_
    equation_ ::= IDENTIFIER EQ NUMBER SEMI

%End
