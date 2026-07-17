-- Turtle Parser (LPG)

%Options la=2
%Options fp=TurtleParser
%options package=lpg.grammars.turtle
%options template=dtParserTemplateF.gi
%options import_terminals=TurtleLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    turtleDoc
%End
%Rules
    turtleDoc ::= $empty
              | items
    items ::= item
            | items item
    item ::= IDENTIFIER
           | NUMBER
           | STRING
           | PREFIX
           | BASE
           | A
           | TRUE
           | FALSE
           | DOT
           | SEMI
           | COMMA
           | LBRACKET
           | RBRACKET
           | LPAREN
           | RPAREN
           | LT
           | GT
           | CARET
           | AT
           | COLON
%End
