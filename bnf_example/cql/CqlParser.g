-- CQL Parser (LPG)
-- Ported from antlr/grammars-v4 cql/cql.g4

%Options la=2
%Options fp=CqlParser
%options package=lpg.grammars.cql
%options template=dtParserTemplateF.gi
%options import_terminals=CqlLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    cql
%End

%Rules
    cql ::= sortedQuery

    sortedQuery ::= prefixAssignment sortedQuery
                  | scopedClause
                  | scopedClause SORTBY sortSpec

    sortSpec ::= singleSpec
               | sortSpec singleSpec

    singleSpec ::= index
                 | index modifierList

    prefixAssignment ::= GT prefix_ EQ uri
                       | GT uri

    scopedClause ::= searchClause
                   | scopedClause booleanGroup searchClause

    booleanGroup ::= boolean_
                   | boolean_ modifierList

    boolean_ ::= AND | OR | NOT | PROX

    searchClause ::= LPAREN cqlQuery RPAREN
                   | index relation searchTerm
                   | searchTerm

    cqlQuery ::= prefixAssignment cqlQuery
               | scopedClause

    relation ::= comparitor
               | comparitor modifierList

    comparitor ::= comparitorSymbol
                 | namedComparitor

    comparitorSymbol ::= EQ | GT | LT | GTE | LTE | NEQ | EQEQ

    namedComparitor ::= identifier

    modifierList ::= modifier
                   | modifierList modifier

    modifier ::= SLASH modifierName
               | SLASH modifierName comparitorSymbol modifierValue

    prefix_ ::= term
    uri ::= term
    modifierName ::= term
    modifierValue ::= term
    searchTerm ::= term
    index ::= term

    term ::= identifier
           | AND | OR | NOT | PROX | SORTBY

    identifier ::= IDENTIFIER
                 | CHARSTRING2
%End
