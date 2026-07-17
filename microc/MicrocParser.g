-- Microc Parser (LPG)
%Options la=2
%Options fp=MicrocParser
%options package=lpg.grammars.microc
%options template=dtParserTemplateF.gi
%options import_terminals=MicrocLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    program
%End
%Rules
    program ::= statement_list
    statement_list ::= statement
                     | statement_list statement

    statement ::= ifstatement | whilestatement | blockstatement | exprstatement

    ifstatement ::= IF paren_expr statement
                  | IF paren_expr statement ELSE statement

    whilestatement ::= WHILE paren_expr statement
    blockstatement ::= LBRACE RBRACE
                     | LBRACE statement_list RBRACE
    exprstatement ::= expr SEMI
    paren_expr ::= LPAREN expr RPAREN

    expr ::= test
           | IDENTIFIER EQUAL expr

    test ::= sum_
           | sum_ LESS sum_

    sum_ ::= term
           | sum_ PLUS term
           | sum_ MINUS term

    term ::= IDENTIFIER | INT | paren_expr
%End
