-- Racket BSL Parser (LPG)
%Options la=2
%Options fp=RacketBslParser
%options package=lpg.grammars.racket_bsl
%options template=dtParserTemplateF.gi
%options import_terminals=RacketBslLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= forms

    forms ::= form
            | forms form

    form ::= definition
           | expr
           | testCase
           | libraryRequire

    definition ::= LPAREN DEFINE LPAREN NAME names RPAREN expr RPAREN
                 | LPAREN DEFINE NAME expr RPAREN
                 | LPAREN DEFINE_STRUCT NAME LPAREN optNames RPAREN RPAREN

    optNames ::= $empty | names
    names ::= NAME | names NAME

    expr ::= LPAREN NAME exprList RPAREN
           | LPAREN COND condClauses RPAREN
           | LPAREN IF expr expr expr RPAREN
           | LPAREN AND expr exprList RPAREN
           | LPAREN OR expr exprList RPAREN
           | EMPTY_LIST
           | NAME
           | NUMBER
           | BOOLEAN
           | STRING
           | SYMBOL

    exprList ::= expr | exprList expr

    condClauses ::= condClause | condClauses condClause
    condClause ::= LBRACKET expr expr RBRACKET
                 | LBRACKET ELSE expr RBRACKET

    testCase ::= LPAREN CHECK_EXPECT expr expr RPAREN

    libraryRequire ::= LPAREN REQUIRE STRING RPAREN
                     | LPAREN REQUIRE NAME RPAREN
%End
