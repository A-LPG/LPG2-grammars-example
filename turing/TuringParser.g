-- Turing Parser (LPG) — curated subset
%Options la=2
%Options fp=TuringParser
%options package=lpg.grammars.turing
%options template=dtParserTemplateF.gi
%options import_terminals=TuringLexer.gi
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
    stmt ::= PUT expr_list | GET IDENTIFIER | VAR IDENTIFIER COLON type_
    expr_list ::= expr | expr_list COMMA expr
    expr ::= STRING | IDENTIFIER
    type_ ::= STRING_KW | INT_KW | NAT
%End
