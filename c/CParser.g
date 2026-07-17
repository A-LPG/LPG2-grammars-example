-- C Parser (LPG) — curated subset: functions, decls, return/if/while, expressions.
-- Keeps BinaryDigit.c; not a full Wave C / grammars-v4 port.

%Options la=2
%Options fp=CParser
%options package=lpg.grammars.c
%options template=dtParserTemplateF.gi
%options import_terminals=CLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    translationUnit
%End

%Rules
    translationUnit ::= external_list

    external_list ::= external_decl
                    | external_list external_decl

    external_decl ::= function_def
                    | declaration

    function_def ::= type_spec IDENTIFIER LPAREN opt_params RPAREN compound_stmt

    opt_params ::= $empty
                 | VOID
                 | param_list

    param_list ::= type_spec IDENTIFIER
                 | param_list COMMA type_spec IDENTIFIER

    declaration ::= type_spec init_declarator_list SEMI

    init_declarator_list ::= init_declarator
                           | init_declarator_list COMMA init_declarator

    init_declarator ::= IDENTIFIER
                      | IDENTIFIER EQ initializer

    initializer ::= expression

    type_spec ::= INT | VOID | CHAR

    compound_stmt ::= LBRACE block_item_list RBRACE

    block_item_list ::= $empty
                      | block_item_list block_item

    block_item ::= declaration
                 | statement

    statement ::= compound_stmt
                | IF LPAREN expression RPAREN statement
                | IF LPAREN expression RPAREN statement ELSE statement
                | WHILE LPAREN expression RPAREN statement
                | RETURN opt_expression SEMI
                | expression SEMI
                | SEMI

    opt_expression ::= $empty
                     | expression

    expression ::= assignment

    assignment ::= equality
                 | IDENTIFIER EQ assignment

    equality ::= relational
               | equality EQEQ relational

    relational ::= sum_
                 | relational LANGLE sum_
                 | relational RANGLE sum_

    sum_ ::= term
           | sum_ PLUS term
           | sum_ MINUS term

    term ::= unary
           | term STAR unary
           | term SLASH unary

    unary ::= BANG unary
            | PLUS unary
            | MINUS unary
            | STAR unary
            | postfix

    postfix ::= primary
              | postfix LPAREN opt_args RPAREN
              | postfix LBRACKET expression RBRACKET

    primary ::= IDENTIFIER
              | INTEGER_LITERAL
              | BINARY_LITERAL
              | STRING_LITERAL
              | LPAREN expression RPAREN

    opt_args ::= $empty
               | arg_list

    arg_list ::= expression
               | arg_list COMMA expression
%End
