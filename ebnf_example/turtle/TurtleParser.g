-- AUTO-GENERATED from antlr/grammars-v4 turtle by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=TurtleParser
%options package=lpg.grammars.turtle
%options template=dtParserTemplateF.gi
%options import_terminals=TurtleLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    turtleDoc
%End

%Rules
    turtleDoc ::= list_1

    statement ::= directive
                 | triples DOT

    directive ::= prefixID
                 | base
                 | sparqlPrefix
                 | sparqlBase

    prefixID ::= PREFIX IDENTIFIER COLON IRIREF DOT
                | PREFIX IDENTIFIER IRIREF DOT

    base ::= BASE IRIREF DOT

    sparqlBase ::= BASE IRIREF

    sparqlPrefix ::= PREFIX IDENTIFIER IRIREF

    triples ::= subject predicateObjectList
               | blankNodePropertyList opt_2

    predicateObjectList ::= verb objectList list_6

    objectList ::= object_ list_8

    verb ::= predicate
            | A

    subject ::= iri
               | BlankNode
               | collection

    predicate ::= iri

    object_ ::= iri
               | BlankNode
               | collection
               | blankNodePropertyList
               | literal

    literal ::= rdfLiteral
               | NumericLiteral
               | IDENTIFIER

    blankNodePropertyList ::= LBRACKET predicateObjectList RBRACKET

    collection ::= LPAREN list_9 RPAREN

    rdfLiteral ::= String opt_11

    iri ::= IRIREF
           | PrefixedName

    list_1 ::= (list_1 statement)?

    opt_2 ::= predicateObjectList?

    seq_3 ::= verb objectList

    opt_4 ::= seq_3?

    seq_5 ::= SEMI opt_4

    list_6 ::= (list_6 seq_5)?

    seq_7 ::= COMMA object_

    list_8 ::= (list_8 seq_7)?

    list_9 ::= (list_9 object_)?

    grp_10 ::= LANGTAG
              | OP_40132 iri

    opt_11 ::= grp_10?
%End
