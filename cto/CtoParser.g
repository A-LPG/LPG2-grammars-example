-- Cto Parser (LPG)

%Options la=2
%Options fp=CtoParser
%options package=lpg.grammars.cto
%options template=dtParserTemplateF.gi
%options import_terminals=CtoLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    modelUnit
%End
%Rules
    modelUnit ::= $empty
              | items
    items ::= item
            | items item
    item ::= IDENTIFIER
           | NUMBER
           | STRING
           | NAMESPACE
           | IMPORT
           | ASSET
           | PARTICIPANT
           | TRANSACTION
           | EVENT
           | ENUM
           | CONCEPT
           | ABSTRACT
           | EXTENDS
           | IDENTIFIED
           | OPTIONAL
           | DEFAULT
           | REGEX
           | RANGE
           | INSTANCE
           | OF
           | TRUE
           | FALSE
           | SEMI
           | EQ
           | COLON
           | COMMA
           | DOT
           | LBRACE
           | RBRACE
           | LBRACKET
           | RBRACKET
           | LPAREN
           | RPAREN
%End
