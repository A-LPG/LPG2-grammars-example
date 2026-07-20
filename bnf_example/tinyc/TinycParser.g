-- TinycParser (LPG) — structural port of grammars-v4 tinyc/tinyc.g4
-- Nonterminals: program / statement / paren_expr / expr / test / sum_ / term / id_ / integer

%Options la=2
%Options fp=TinycParser
%options package=lpg.grammars.tinyc
%options template=dtParserTemplateF.gi
%options import_terminals=TinycLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    -- program: statement+ EOF
    program ::= statements

    statements ::= statement
                 | statements statement

    -- statement: if / if-else / while / do-while / block / expr; / ;
    statement ::= IF paren_expr statement
                | IF paren_expr statement ELSE statement
                | WHILE paren_expr statement
                | DO statement WHILE paren_expr SEMI
                | LBRACE RBRACE
                | LBRACE stmt_list RBRACE
                | expr SEMI
                | SEMI

    stmt_list ::= statement
                | stmt_list statement

    paren_expr ::= LPAREN expr RPAREN

    expr ::= test
           | id_ EQ expr

    test ::= sum_
           | sum_ LT sum_

    sum_ ::= term
           | sum_ PLUS term
           | sum_ MINUS term

    term ::= id_
           | integer
           | paren_expr

    id_ ::= IDENTIFIER

    integer ::= INT
%End
