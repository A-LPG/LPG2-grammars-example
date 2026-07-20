-- B Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example; g4: b/b.g4).
-- Ported from antlr/grammars-v4 b/b.g4
-- Expressions layered for LALR; covers example suite.

%Options la=2,ebnf
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
    program ::= definition*

    definition ::= IDENTIFIER constant? (ival (COMMA ival)*)* SEMI
                 | IDENTIFIER LPAREN (IDENTIFIER (COMMA IDENTIFIER)*)? RPAREN statement

    ival ::= constant | IDENTIFIER

    statement ::= EXTRN IDENTIFIER (COMMA IDENTIFIER)* SEMI
                | AUTO IDENTIFIER constant? (COMMA IDENTIFIER constant?)* SEMI
                | IDENTIFIER COLON statement
                | CASE constant COLON statement
                | LBRACE statement* RBRACE
                | IF LPAREN rvalue RPAREN statement (ELSE statement)?
                | WHILE LPAREN rvalue RPAREN statement
                | SWITCH rvalue statement
                | GOTO rvalue SEMI
                | RETURN (LPAREN rvalue RPAREN)? SEMI
                | rvalue SEMI
                | SEMI

    rvalue ::= assignment
             | ternary
             | comparison
             | expression

    assignment ::= IDENTIFIER EQ rvalue
                 | IDENTIFIER EQ binary rvalue

    ternary ::= expression QUESTION rvalue COLON rvalue

    comparison ::= expression binary rvalue

    -- Keep left-recursion for expression precedence (do not flatten with EBNF).
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

    functioninvocation ::= IDENTIFIER LPAREN (rvalue (COMMA rvalue)*)? RPAREN

    constant ::= INT | STRING1 | STRING2
%End
