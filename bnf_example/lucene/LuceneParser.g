-- Lucene Parser (LPG)
-- Ported from antlr/grammars-v4 lucene/LuceneParser.g4
-- TERM is IDENTIFIER from keyword filter (non AND/OR/NOT/TO).

%Options la=2
%Options fp=LuceneParser
%options package=lpg.grammars.lucene
%options template=dtParserTemplateF.gi
%options import_terminals=LuceneLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    topLevelQuery
%End

%Rules
    topLevelQuery ::= query

    query ::= disjQuery
            | query disjQuery

    disjQuery ::= conjQuery
                | disjQuery OR conjQuery

    conjQuery ::= modClause
                | conjQuery AND modClause

    modClause ::= clause
                | modifier clause

    modifier ::= PLUS
               | MINUS
               | NOT

    clause ::= fieldRangeExpr
             | fieldName OP_COLON term
             | fieldName OP_EQUAL term
             | fieldName OP_COLON groupingExpr
             | fieldName OP_EQUAL groupingExpr
             | term
             | groupingExpr

    fieldRangeExpr ::= fieldName OP_LESSTHAN rangeValue
                     | fieldName OP_MORETHAN rangeValue
                     | fieldName OP_LESSTHANEQ rangeValue
                     | fieldName OP_MORETHANEQ rangeValue

    rangeValue ::= IDENTIFIER
                 | QUOTED
                 | NUMBER

    term ::= IDENTIFIER fuzzy opt_boost
           | REGEXPTERM opt_boost
           | termRangeExpr opt_boost
           | quotedTerm
           | NUMBER opt_boost
           | IDENTIFIER opt_boost

    groupingExpr ::= LPAREN query RPAREN opt_boost

    fieldName ::= IDENTIFIER

    termRangeExpr ::= RANGEIN_START rangeSide TO rangeSide RANGEIN_END
                    | RANGEEX_START rangeSide TO rangeSide RANGEEX_END

    rangeSide ::= IDENTIFIER
                | QUOTED
                | TO
                | NUMBER

    quotedTerm ::= QUOTED opt_boost
                 | QUOTED fuzzy

    fuzzy ::= TILDE
            | TILDE NUMBER

    opt_boost ::= $empty
                | CARAT NUMBER
%End
