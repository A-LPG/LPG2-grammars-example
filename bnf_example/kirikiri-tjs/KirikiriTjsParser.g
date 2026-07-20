-- Structural subset of grammars-v4 kirikiri-tjs (TJSParser.g4):
-- program / statement / classDeclaration / functionDeclaration / propertyDeclaration /
-- variableStatement / if / while / return / break / expression layers.

%Options la=3
%Options fp=KirikiriTjsParser
%options package=lpg.grammars.kirikiri_tjs
%options template=dtParserTemplateF.gi
%options import_terminals=KirikiriTjsLexer.gi
%options automatic_ast=none
%options conflicts

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

    statement ::= block
                | variableStatement
                | classDeclaration
                | functionDeclaration
                | propertyDeclaration
                | ifStatement
                | whileStatement
                | returnStatement
                | breakStatement
                | expressionStatement

    block ::= LBRACE statement_list RBRACE
            | LBRACE RBRACE

    variableStatement ::= varModifier variable SEMI

    varModifier ::= VAR | CONST

    variable ::= IDENTIFIER
               | IDENTIFIER EQ expression

    classDeclaration ::= CLASS IDENTIFIER LBRACE classBody RBRACE

    classBody ::= $empty
                | classBody classMember

    classMember ::= functionDeclaration
                  | propertyDeclaration
                  | variableStatement

    functionDeclaration ::= FUNCTION IDENTIFIER LPAREN opt_params RPAREN block

    opt_params ::= $empty | param_list
    param_list ::= IDENTIFIER | param_list COMMA IDENTIFIER

    propertyDeclaration ::= PROPERTY IDENTIFIER LBRACE getterBody RBRACE

    getterBody ::= GETTER block

    ifStatement ::= IF LPAREN expression RPAREN statement
                  | IF LPAREN expression RPAREN statement ELSE statement

    whileStatement ::= WHILE LPAREN expression RPAREN statement

    returnStatement ::= RETURN SEMI
                      | RETURN expression SEMI

    breakStatement ::= BREAK SEMI

    expressionStatement ::= expression SEMI

    expression ::= assignment
    assignment ::= equality
                 | equality EQ assignment
    equality ::= relational
               | relational EQEQ relational
    relational ::= additive
                 | additive LT additive
                 | additive GT additive
    additive ::= multiplicative
               | additive PLUS multiplicative
               | additive MINUS multiplicative
    multiplicative ::= unary
                     | multiplicative STAR unary
                     | multiplicative SLASH unary
    unary ::= primary
            | NEW primary
    primary ::= IDENTIFIER
              | THIS
              | NUMBER
              | STRING
              | primary DOT IDENTIFIER
              | primary LPAREN opt_args RPAREN
              | LPAREN expression RPAREN
    opt_args ::= $empty | arg_list
    arg_list ::= expression | arg_list COMMA expression
%End
