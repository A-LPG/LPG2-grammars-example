-- Turtle parser — structural port of grammars-v4 turtle-doc/turtle.g4
-- Nonterminals: turtleDoc / statement / directive / triples / …

%Options la=2
%Options fp=TurtleDocParser
%options package=lpg.grammars.turtle_doc
%options template=dtParserTemplateF.gi
%options import_terminals=TurtleDocLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    turtleDoc
%End

%Rules
    turtleDoc ::= $empty
                | statements

    statements ::= statement
                 | statements statement

    statement ::= directive
                | triples Dot

    directive ::= prefixID
                | base
                | sparqlPrefix
                | sparqlBase

    prefixID ::= AtPrefixKeyword prefixedName IRIREF Dot

    base ::= AtBaseKeyword IRIREF Dot

    sparqlBase ::= BaseKeyword IRIREF

    sparqlPrefix ::= PrefixKeyword prefixedName IRIREF

    prefixedName ::= IDENTIFIER COLON
                   | COLON

    triples ::= subject predicateObjectList
              | blankNodePropertyList
              | blankNodePropertyList predicateObjectList

    predicateObjectList ::= predicateObject
                          | predicateObjectList Semi
                          | predicateObjectList Semi predicateObject

    objectList ::= object_
                 | objectList Coma object_

    predicateObject ::= verb objectList

    verb ::= predicate
           | LetterA

    subject ::= iri
              | blankNode
              | collection

    predicate ::= iri

    object_ ::= iri
              | blankNode
              | collection
              | blankNodePropertyList
              | literal

    literal ::= rDFLiteral
              | numericLiteral
              | bool_

    blankNodePropertyList ::= LEnd predicateObjectList REnd

    collection ::= LParen RParen
                 | LParen object_list RParen

    object_list ::= object_
                  | object_list object_

    numericLiteral ::= NUMBER

    rDFLiteral ::= string_

    bool_ ::= TrueKeyword
            | FalseKeyword

    string_ ::= StringLiteralQuote
              | StringLiteralSingleQuote

    -- PNameLn / PNameNs (g4 lexer rules) split across IDENTIFIER/COLON/LetterA
    iri ::= IRIREF
          | IDENTIFIER COLON IDENTIFIER
          | IDENTIFIER COLON LetterA
          | IDENTIFIER COLON
          | COLON IDENTIFIER
          | COLON

    blankNode ::= BlankNodeLabel
                | LEnd REnd
%End
