-- Squirrel Parser (LPG) — curated subset
%Options la=2
%Options fp=SquirrelParser
%options package=lpg.grammars.squirrel
%options template=dtParserTemplateF.gi
%options import_terminals=SquirrelLexer.gi
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
    stmt ::= FUNCTION IDENTIFIER LPAREN RPAREN block
           | LOCAL IDENTIFIER EQ expr SEMI
           | RETURN expr SEMI
           | expr SEMI
    block ::= LBRACE stmt_list RBRACE | LBRACE RBRACE
    expr ::= NUMBER | STRING | TRUE | FALSE | NULLLITERAL | IDENTIFIER

%End
