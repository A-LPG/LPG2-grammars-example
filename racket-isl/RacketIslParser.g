-- Racket ISL Parser (LPG)
%Options la=2
%Options fp=RacketIslParser
%options package=lpg.grammars.racket_isl
%options template=dtParserTemplateF.gi
%options import_terminals=RacketIslLexer.gi
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

    expr ::= LPAREN BEGIN exprList RPAREN
           | LPAREN LAMBDA LPAREN optNames RPAREN expr RPAREN
           | LPAREN LOCAL LBRACKET optDefs RBRACKET expr RPAREN
           | LPAREN LET LPAREN optBindings RPAREN expr RPAREN
           | LPAREN IF expr expr expr RPAREN
           | LPAREN COND condClauses RPAREN
           | LPAREN AND expr exprList RPAREN
           | LPAREN OR expr exprList RPAREN
           | LPAREN expr exprListOpt RPAREN
           | EMPTY_LIST
           | NAME
           | NUMBER
           | BOOLEAN
           | STRING
           | SYMBOL
           | QUOTE EMPTY_LIST

    exprList ::= expr | exprList expr
    exprListOpt ::= $empty | exprList

    optDefs ::= $empty | definitions
    definitions ::= definition | definitions definition

    optBindings ::= $empty | bindings
    bindings ::= binding | bindings binding
    binding ::= LBRACKET NAME expr RBRACKET

    condClauses ::= condClause | condClauses condClause
    condClause ::= LBRACKET expr expr RBRACKET
                 | LBRACKET ELSE expr RBRACKET

    testCase ::= LPAREN CHECK_EXPECT expr expr RPAREN

    libraryRequire ::= LPAREN REQUIRE STRING RPAREN
                     | LPAREN REQUIRE NAME RPAREN
%End
