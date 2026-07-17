-- TinycParser (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

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
    program ::= statements

    statements ::= statement
                 | statements statement

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
           | IDENTIFIER EQ expr

    test ::= sum_
           | sum_ LT sum_

    sum_ ::= term
           | sum_ PLUS term
           | sum_ MINUS term

    term ::= IDENTIFIER
           | INT
           | paren_expr
%End
