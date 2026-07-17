-- Caql Parser (LPG)

%Options la=2
%Options fp=CaqlParser
%options package=lpg.grammars.caql
%options template=dtParserTemplateF.gi
%options import_terminals=CaqlLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    start_
%End
%Rules
    start_ ::= $empty
              | items
    items ::= item
            | items item
    item ::= IDENTIFIER
           | NUMBER
           | STRING
           | AND
           | OR
           | NOT
           | TRUE
           | FALSE
           | NULL
           | FROM
           | WHERE
           | GROUP
           | BY
           | AS
           | SELECT
           | IN
           | BETWEEN
           | LIKE
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
           | PLUS
           | MINUS
           | STAR
           | SLASH
           | LT
           | GT
           | BANG
           | PIPE
           | QUESTION
%End
