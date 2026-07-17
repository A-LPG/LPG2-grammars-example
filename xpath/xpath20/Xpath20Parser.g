-- Xpath20 Parser (LPG) — curated subset
%Options la=2
%Options fp=Xpath20Parser
%options package=lpg.grammars.xpath.xpath20
%options template=dtParserTemplateF.gi
%options import_terminals=Xpath20Lexer.gi
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
    orExpr ::= andExpr | orExpr OR andExpr
    andExpr ::= path
    path ::= locationPath | filter
    locationPath ::= relative | absolute
    absolute ::= SLASH opt_relative | DSLASH relative
    opt_relative ::= $empty | relative
    relative ::= step | relative SLASH step | relative DSLASH step
    step ::= DOT | DOTDOT | AT nameTest | nameTest | TEXT LPAREN RPAREN | NODE LPAREN RPAREN | COMMENT LPAREN RPAREN
    nameTest ::= STAR | IDENTIFIER
    filter ::= primary
    primary ::= LITERAL | NUMBER | IDENTIFIER LPAREN opt_args RPAREN | LPAREN expr RPAREN
    opt_args ::= $empty | args
    args ::= expr | args COMMA expr

%End
