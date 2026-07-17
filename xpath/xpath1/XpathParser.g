-- XPath 1.0 Parser (LPG)
-- Ported from antlr/grammars-v4 xpath/xpath1/xpath.g4

%Options la=2
%Options fp=XpathParser
%options package=lpg.grammars.xpath.xpath1
%options template=dtParserTemplateF.gi
%options import_terminals=XpathLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    main
%End

%Rules
    main ::= expr

    expr ::= orExpr

    orExpr ::= andExpr
             | orExpr OR andExpr

    andExpr ::= equalityExpr
              | andExpr AND equalityExpr

    equalityExpr ::= relationalExpr
                   | equalityExpr EQ relationalExpr
                   | equalityExpr NE relationalExpr

    relationalExpr ::= additiveExpr
                     | relationalExpr LT additiveExpr
                     | relationalExpr GT additiveExpr
                     | relationalExpr LE additiveExpr
                     | relationalExpr GE additiveExpr

    additiveExpr ::= multiplicativeExpr
                   | additiveExpr PLUS multiplicativeExpr
                   | additiveExpr MINUS multiplicativeExpr

    multiplicativeExpr ::= unaryExpr
                         | multiplicativeExpr STAR unaryExpr
                         | multiplicativeExpr DIV unaryExpr
                         | multiplicativeExpr MOD unaryExpr

    unaryExpr ::= unionExpr
                | MINUS unaryExpr

    unionExpr ::= pathExpr
                | unionExpr PIPE pathExpr

    pathExpr ::= locationPath
               | filterExpr
               | filterExpr SLASH relativeLocationPath
               | filterExpr DSLASH relativeLocationPath

    locationPath ::= relativeLocationPath
                   | absoluteLocationPath

    absoluteLocationPath ::= SLASH
                           | SLASH relativeLocationPath
                           | DSLASH relativeLocationPath

    relativeLocationPath ::= step
                           | relativeLocationPath SLASH step
                           | relativeLocationPath DSLASH step

    step ::= nodeTest predicates
           | AT nodeTest predicates
           | name DCOLON nodeTest predicates
           | abbreviatedStep

    predicates ::= $empty
                 | predicates predicate

    nodeTest ::= nameTest
               | name LPAREN RPAREN

    -- qName path names without trailing '()'; functionCall handles name:name()
    nameTest ::= STAR
               | name
               | name COLON STAR
               | name COLON name

    abbreviatedStep ::= DOT | DOTDOT

    predicate ::= LBRACKET expr RBRACKET

    filterExpr ::= primaryExpr
                 | filterExpr predicate

    primaryExpr ::= DOLLAR name
                  | DOLLAR name COLON name
                  | LPAREN expr RPAREN
                  | LITERAL
                  | NUMBER
                  | functionCall

    functionCall ::= functionName LPAREN optArgs RPAREN

    optArgs ::= $empty | argList
    argList ::= expr | argList COMMA expr

    functionName ::= name COLON name
                   | name

    name ::= IDENTIFIER
           | KW_COMMENT
           | KW_TEXT
           | KW_NODE
           | AND
           | OR
           | DIV
           | MOD
%End
