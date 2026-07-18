-- Turtle subset: @prefix / @base / simple triples
%Options la=2
%Options fp=TurtleParser
%options package=lpg.grammars.turtle
%options template=dtParserTemplateF.gi
%options import_terminals=TurtleLexer.gi
%options automatic_ast=none
%Eof
    EOF_TOKEN
%End
%Start
    turtleDoc
%End
%Rules
    turtleDoc ::= statement_list
    statement_list ::= $empty | statement_list statement

    statement ::= directive | triples DOT

    directive ::= AT PREFIX PrefixedName IRIREF DOT
                | AT BASE IRIREF DOT
                | PREFIX PrefixedName IRIREF
                | BASE IRIREF

    triples ::= subject predicateObjectList
    subject ::= IRIREF | PrefixedName | IDENTIFIER
    predicateObjectList ::= verb object_list
    verb ::= IRIREF | PrefixedName | IDENTIFIER | A
    object_list ::= object_ | object_list COMMA object_
    object_ ::= IRIREF | PrefixedName | IDENTIFIER | STRING | NUMBER | TRUE | FALSE
%End
