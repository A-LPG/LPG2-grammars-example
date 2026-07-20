-- Blueprint Parser (LPG)
-- Ported from antlr/grammars-v4 blueprint/blueprint.g4

%Options la=2
%Options fp=BlueprintParser
%options package=lpg.grammars.blueprint
%options template=dtParserTemplateF.gi
%options import_terminals=BlueprintLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    blueprint
%End

%Rules
    blueprint ::= $empty
                | definitions

    definitions ::= definition
                  | definitions definition

    definition ::= assignment
                 | module

    assignment ::= IDENTIFIER EQ expression
                 | IDENTIFIER PLUS_EQ expression

    module ::= IDENTIFIER LBRACE propertyList RBRACE
             | IDENTIFIER LPAREN propertyList RPAREN

    propertyList ::= $empty
                   | properties OptComma

    properties ::= property
                 | properties COMMA property

    OptComma ::= $empty | COMMA

    property ::= IDENTIFIER COLON expression
               | IDENTIFIER EQ expression

    expression ::= value
                 | value PLUS expression

    value ::= TRUE
            | FALSE
            | select
            | IDENTIFIER
            | INTEGER
            | STRING
            | listValue
            | mapValue

    select ::= SELECT LPAREN conditions COMMA LBRACE selectCases RBRACE RPAREN

    listValue ::= LBRACKET RBRACKET
                | LBRACKET exprList OptComma RBRACKET

    exprList ::= expression
               | exprList COMMA expression

    mapValue ::= LBRACE propertyList RBRACE

    conditions ::= singleCondition
                 | LPAREN condList OptComma RPAREN

    condList ::= singleCondition
               | condList COMMA singleCondition

    singleCondition ::= IDENTIFIER LPAREN RPAREN
                      | IDENTIFIER LPAREN stringList OptComma RPAREN

    stringList ::= STRING
                 | stringList COMMA STRING

    selectCases ::= selectCase
                  | selectCases selectCase

    selectCase ::= selectPatterns COLON expression OptComma
                 | selectPatterns COLON UNSET OptComma

    selectPatterns ::= selectOnePattern
                     | LPAREN patternList OptComma RPAREN

    patternList ::= selectOnePattern
                  | patternList COMMA selectOnePattern

    selectOnePattern ::= ANY
                       | ANY AT IDENTIFIER
                       | DEFAULT
                       | TRUE
                       | FALSE
                       | STRING
%End
