-- VBA CC Parser (LPG) — curated subset
%Options la=2
%Options fp=VbaCcParser
%options package=lpg.grammars.vba.vba_cc
%options template=dtParserTemplateF.gi
%options import_terminals=VbaCcLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    file_
%End
%Rules
    file_ ::= stmt_list
    stmt_list ::= stmt | stmt_list stmt
    stmt ::= ATTRIBUTE IDENTIFIER EQ STRING
           | HASH CONST IDENTIFIER EQ NUMBER
           | HASH IF expr THEN
           | HASH ELSEIF expr THEN
           | HASH ELSE
           | HASH END IF
           | DEBUG DOT PRINT STRING
    expr ::= IDENTIFIER | NUMBER | IDENTIFIER EQ NUMBER
%End
