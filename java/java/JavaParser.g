-- Java Parser (LPG) — curated subset: package/class + statements/expressions.
-- Covers curated Wave examples (Foo4391, ConsecutiveSemicolons, locals, exprs, if/return).

%Options la=2
%Options fp=JavaParser
%options package=lpg.grammars.java.java
%options template=dtParserTemplateF.gi
%options import_terminals=JavaLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    compilationUnit
%End

%Rules
    compilationUnit ::= opt_package import_list type_list

    opt_package ::= $empty
                  | PACKAGE qualifiedName semi_list

    import_list ::= $empty
                  | import_list IMPORT qualifiedName semi_list

    semi_list ::= SEMI
                | semi_list SEMI

    type_list ::= typeDeclaration
                | type_list typeDeclaration

    typeDeclaration ::= modifier_list CLASS IDENTIFIER classBody

    modifier_list ::= $empty
                    | modifier_list modifier

    modifier ::= PUBLIC | PRIVATE | STATIC

    classBody ::= LBRACE classBodyDecl_list RBRACE

    classBodyDecl_list ::= $empty
                         | classBodyDecl_list classBodyDecl

    classBodyDecl ::= methodDecl
                    | fieldDecl

    fieldDecl ::= modifier_list type IDENTIFIER opt_init SEMI

    opt_init ::= $empty
               | EQ expression

    methodDecl ::= modifier_list typeOrVoid IDENTIFIER LPAREN opt_params RPAREN block

    opt_params ::= $empty
                 | param_list

    param_list ::= type IDENTIFIER
                 | param_list COMMA type IDENTIFIER

    typeOrVoid ::= VOID
                 | type

    type ::= primitiveType dims
           | qualifiedName dims

    dims ::= $empty
           | dims LBRACKET RBRACKET

    primitiveType ::= BOOLEAN | INT

    block ::= LBRACE blockStatement_list RBRACE

    blockStatement_list ::= $empty
                          | blockStatement_list blockStatement

    -- Foo4391: "boolean;" as a lone type + semi inside method body
    blockStatement ::= localVarDecl
                     | statement
                     | typeOrVoid SEMI
                     | SEMI

    localVarDecl ::= type IDENTIFIER opt_init SEMI

    statement ::= block
                | IF LPAREN expression RPAREN statement
                | IF LPAREN expression RPAREN statement ELSE statement
                | WHILE LPAREN expression RPAREN statement
                | RETURN opt_expression SEMI
                | expression SEMI

    opt_expression ::= $empty
                     | expression

    expression ::= assignment

    assignment ::= conditional
                 | conditional EQ assignment

    conditional ::= or_expr

    or_expr ::= and_expr

    and_expr ::= equality

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
            | postfix

    postfix ::= primary
              | postfix DOT IDENTIFIER
              | postfix DOT IDENTIFIER LPAREN opt_args RPAREN
              | postfix LPAREN opt_args RPAREN
              | postfix LBRACKET expression RBRACKET

    primary ::= IDENTIFIER
              | INTEGER_LITERAL
              | STRING_LITERAL
              | TRUE
              | FALSE
              | NULL
              | NEW type LPAREN opt_args RPAREN
              | LPAREN expression RPAREN

    opt_args ::= $empty
               | arg_list

    arg_list ::= expression
               | arg_list COMMA expression

    qualifiedName ::= IDENTIFIER
                    | qualifiedName DOT IDENTIFIER
%End
