-- B Parser (LPG)
-- Ported from antlr/grammars-v4 b/b.g4
-- Expressions layered for LALR; covers example suite.

%Options la=2
%Options fp=BParser
%options package=lpg.grammars.b
%options template=dtParserTemplateF.gi
%options import_terminals=BLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= $empty
              | definitions

    definitions ::= definition
                  | definitions definition

    definition ::= IDENTIFIER opt_const ival_lists SEMI
                 | IDENTIFIER LPAREN opt_params RPAREN statement

    opt_const ::= $empty | constant
    opt_params ::= $empty | name_list
    name_list ::= IDENTIFIER
                | name_list COMMA IDENTIFIER

    ival_lists ::= $empty
                 | ival_lists ival_list

    ival_list ::= ival
                | ival_list COMMA ival

    ival ::= constant | IDENTIFIER

    statement ::= EXTRN name_list SEMI
                | AUTO auto_list SEMI
                | IDENTIFIER COLON statement
                | CASE constant COLON statement
                | LBRACE statements RBRACE
                | LBRACE RBRACE
                | IF LPAREN rvalue RPAREN statement
                | IF LPAREN rvalue RPAREN statement ELSE statement
                | WHILE LPAREN rvalue RPAREN statement
                | SWITCH rvalue statement
                | GOTO rvalue SEMI
                | RETURN SEMI
                | RETURN LPAREN rvalue RPAREN SEMI
                | rvalue SEMI
                | SEMI

    statements ::= statement
                 | statements statement

    auto_list ::= IDENTIFIER opt_const
                | auto_list COMMA IDENTIFIER opt_const

    rvalue ::= assignment
             | ternary
             | comparison
             | expression

    assignment ::= IDENTIFIER EQ rvalue
                 | IDENTIFIER EQ binary rvalue

    ternary ::= expression QUESTION rvalue COLON rvalue

    comparison ::= expression binary rvalue

    expression ::= primary
                 | PLUSPLUS IDENTIFIER
                 | MINUSMINUS IDENTIFIER
                 | IDENTIFIER PLUSPLUS
                 | IDENTIFIER MINUSMINUS
                 | unary expression
                 | AND IDENTIFIER
                 | expression binary primary

    unary ::= MINUS | NOT

    binary ::= OR | AND | EQEQ | NEQ | LT | LTE | GT | GTE
             | LSHIFT | RSHIFT | MINUS | PLUS | PERCENT | STAR | SLASH

    primary ::= LPAREN rvalue RPAREN
              | IDENTIFIER
              | constant
              | functioninvocation

    functioninvocation ::= IDENTIFIER LPAREN RPAREN
                         | IDENTIFIER LPAREN args RPAREN

    args ::= rvalue
           | args COMMA rvalue

    constant ::= INT | STRING1 | STRING2
%End
