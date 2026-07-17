-- Wren Parser (LPG) — curated subset
%Options la=2
%Options fp=WrenParser
%options package=lpg.grammars.wren
%options template=dtParserTemplateF.gi
%options import_terminals=WrenLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    script
%End
%Rules

    script ::= stmt_list
    stmt_list ::= stmt | stmt_list stmt
    stmt ::= expr | VAR IDENTIFIER EQ expr | RETURN expr
    expr ::= primary | expr DOT IDENTIFIER | expr LPAREN opt_args RPAREN
    primary ::= NUMBER | STRING | TRUE | FALSE | NULLLITERAL | IDENTIFIER
    opt_args ::= $empty | args
    args ::= expr | args COMMA expr

%End
