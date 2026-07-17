-- Yini Parser (LPG)

%Options la=2
%Options fp=YiniParser
%options package=lpg.grammars.yini
%options template=dtParserTemplateF.gi
%options import_terminals=YiniLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    yini
%End
%Rules
    yini ::= $empty
              | items
    items ::= item
            | items item
    item ::= IDENTIFIER
           | NUMBER
           | STRING
           | YES
           | NO
           | TRUE
           | FALSE
           | NULL
           | ON
           | OFF
           | EQ
           | COLON
           | COMMA
           | LBRACKET
           | RBRACKET
           | LBRACE
           | RBRACE
           | CARET
           | LT
           | GT
           | PLUS
           | DOLLAR
           | HASH
           | SLASH
%End
