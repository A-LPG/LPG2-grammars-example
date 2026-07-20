-- XPath 1.0 parser — structural port of grammars-v4 xpath/xpath1/xpath.g4
-- Nonterminals: main / locationPath / step / expr / orExpr / pathExprNoRoot…

%Options la=3
%Options fp=XpathXpath1Parser
%options package=lpg.grammars.xpath.xpath1
%options template=dtParserTemplateF.gi
%options import_terminals=XpathXpath1Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    main
%End

%Rules
    main ::= expr

    locationPath ::= relativeLocationPath
                   | absoluteLocationPathNoroot

    absoluteLocationPathNoroot ::= SLASH relativeLocationPath
                                 | SLASHSLASH relativeLocationPath

    relativeLocationPath ::= step
                           | relativeLocationPath SLASH step
                           | relativeLocationPath SLASHSLASH step

    step ::= axisSpecifier nodeTest
           | axisSpecifier nodeTest predicates
           | abbreviatedStep

    predicates ::= predicate
                 | predicates predicate

    axisSpecifier ::= IDENTIFIER COLONCOLON
                    | AT
                    | $empty

    nodeTest ::= nameTest
               | IDENTIFIER LPAREN RPAREN
               | IDENTIFIER LPAREN STRING RPAREN

    predicate ::= LBRACKET expr RBRACKET

    abbreviatedStep ::= DOT
                      | DOTDOT

    expr ::= orExpr

    primaryExpr ::= variableReference
                  | LPAREN expr RPAREN
                  | STRING
                  | NUMBER
                  | functionCall

    functionCall ::= functionName LPAREN RPAREN
                   | functionName LPAREN arg_list RPAREN

    arg_list ::= expr
               | arg_list COMMA expr

    unionExprNoRoot ::= pathExprNoRoot
                      | pathExprNoRoot PIPE unionExprNoRoot
                      | SLASH PIPE unionExprNoRoot

    pathExprNoRoot ::= locationPath
                     | filterExpr
                     | filterExpr SLASH relativeLocationPath
                     | filterExpr SLASHSLASH relativeLocationPath

    filterExpr ::= primaryExpr
                 | primaryExpr predicates

    orExpr ::= andExpr
             | orExpr OR andExpr

    andExpr ::= equalityExpr
              | andExpr AND equalityExpr

    equalityExpr ::= relationalExpr
                   | equalityExpr EQ relationalExpr
                   | equalityExpr NOTEQ relationalExpr

    relationalExpr ::= additiveExpr
                     | relationalExpr LT additiveExpr
                     | relationalExpr GT additiveExpr
                     | relationalExpr LTEQ additiveExpr
                     | relationalExpr GTEQ additiveExpr

    additiveExpr ::= multiplicativeExpr
                   | additiveExpr PLUS multiplicativeExpr
                   | additiveExpr MINUS multiplicativeExpr

    multiplicativeExpr ::= unaryExprNoRoot
                         | unaryExprNoRoot STAR multiplicativeExpr
                         | unaryExprNoRoot DIV multiplicativeExpr
                         | unaryExprNoRoot MOD multiplicativeExpr
                         | SLASH
                         | SLASH DIV multiplicativeExpr
                         | SLASH MOD multiplicativeExpr

    unaryExprNoRoot ::= unionExprNoRoot
                      | MINUS unaryExprNoRoot

    qName ::= nCName
            | nCName COLON nCName

    functionName ::= nCName COLON nCName
                   | IDENTIFIER
                   | AND
                   | OR
                   | DIV
                   | MOD

    variableReference ::= DOLLAR qName

    nameTest ::= STAR
               | nCName COLON STAR
               | qName

    nCName ::= IDENTIFIER
             | AND
             | OR
             | DIV
             | MOD
%End
