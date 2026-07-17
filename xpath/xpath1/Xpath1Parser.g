-- XPath 1.0 Parser (LPG) — subset covering examples
%Options la=2
%Options fp=Xpath1Parser
%options package=lpg.grammars.xpath.xpath1
%options template=dtParserTemplateF.gi
%options import_terminals=Xpath1Lexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    main
%End
%Rules
    main ::= expr | AND | OR | MOD | DIV | COMMENT | TEXT | NODE
    expr ::= orExpr
    orExpr ::= andExpr | orExpr OR andExpr
    andExpr ::= eqExpr | andExpr AND eqExpr
    eqExpr ::= relExpr | eqExpr EQ relExpr | eqExpr NEQ relExpr
    relExpr ::= addExpr | relExpr LT addExpr | relExpr GT addExpr | relExpr LE addExpr | relExpr GE addExpr
    addExpr ::= mulExpr | addExpr PLUS mulExpr | addExpr MINUS mulExpr
    mulExpr ::= unary | mulExpr STAR unary | mulExpr DIV unary | mulExpr MOD unary
    unary ::= path | MINUS unary
    path ::= locationPath | filter
    locationPath ::= relative | absolute
    absolute ::= SLASH opt_relative | DSLASH relative
    opt_relative ::= $empty | relative
    relative ::= step | relative SLASH step | relative DSLASH step
    step ::= DOT | DOTDOT | AT nameTest | nameTest | axis nodeTest
    axis ::= IDENTIFIER COLONCOLON
    nodeTest ::= nameTest | COMMENT LPAREN RPAREN | TEXT LPAREN RPAREN | NODE LPAREN RPAREN
    nameTest ::= STAR | IDENTIFIER | IDENTIFIER COLON STAR | IDENTIFIER COLON IDENTIFIER
    filter ::= primary predicates
    predicates ::= $empty | predicates LBRACKET expr RBRACKET
    primary ::= DOLLAR IDENTIFIER | DOLLAR COMMENT | DOLLAR TEXT | DOLLAR NODE | LPAREN expr RPAREN | LITERAL | NUMBER
              | functionCall
    functionCall ::= IDENTIFIER LPAREN opt_args RPAREN
                   | IDENTIFIER COLON IDENTIFIER LPAREN opt_args RPAREN
                   | IDENTIFIER COLON COMMENT LPAREN opt_args RPAREN
                   | IDENTIFIER COLON TEXT LPAREN opt_args RPAREN
                   | IDENTIFIER COLON NODE LPAREN opt_args RPAREN
    opt_args ::= $empty | args
    args ::= expr | args COMMA expr
%End
