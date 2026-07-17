-- Teal Parser (LPG) — curated subset
%Options la=2
%Options fp=TealParser
%options package=lpg.grammars.teal
%options template=dtParserTemplateF.gi
%options import_terminals=TealLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    chunk
%End
%Rules
    chunk ::= stmt_list
    stmt_list ::= stmt | stmt_list stmt
    stmt ::= LOCAL IDENTIFIER EQ expr
           | LOCAL IDENTIFIER COLON type_ EQ expr
    type_ ::= IDENTIFIER | LBRACE type_ RBRACE
    expr ::= STRING | IDENTIFIER | table
    table ::= LBRACE RBRACE | LBRACE expr_list RBRACE
    expr_list ::= expr | expr_list COMMA expr
%End
