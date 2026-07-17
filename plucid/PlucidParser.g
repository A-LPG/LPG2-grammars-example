-- pLucid Parser (LPG) — curated subset
%Options la=2
%Options fp=PlucidParser
%options package=lpg.grammars.plucid
%options template=dtParserTemplateF.gi
%options import_terminals=PlucidLexer.gi
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
    stmt ::= IDENTIFIER EQ NUMBER SEMI
%End
