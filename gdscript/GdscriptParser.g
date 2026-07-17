-- Gdscript Parser (LPG) — curated subset
%Options la=2
%Options fp=GdscriptParser
%options package=lpg.grammars.gdscript
%options template=dtParserTemplateF.gi
%options import_terminals=GdscriptLexer.gi
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
    stmt ::= EXTENDS IDENTIFIER | VAR IDENTIFIER EQ expr | CONST IDENTIFIER EQ expr
           | FUNC IDENTIFIER LPAREN RPAREN
    expr ::= NUMBER | STRING | IDENTIFIER

%End
