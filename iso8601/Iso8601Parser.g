-- Iso8601 Parser (LPG)

%Options la=2
%Options fp=Iso8601Parser
%options package=lpg.grammars.iso8601
%options template=dtParserTemplateF.gi
%options import_terminals=Iso8601Lexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    iso
%End

%Rules
    iso ::= $empty
              | items

    items ::= item
            | items item

    item ::= DIGIT
           | T
           | Z
           | W
           | P
           | Y
           | M
           | D
           | H
           | S
           | R
           | FRACTION
           | MINUS
           | PLUS
           | COLON
           | SLASH
%End
