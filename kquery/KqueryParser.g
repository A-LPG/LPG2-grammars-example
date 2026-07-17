-- Kquery Parser (LPG)

%Options la=2
%Options fp=KqueryParser
%options package=lpg.grammars.kquery
%options template=dtParserTemplateF.gi
%options import_terminals=KqueryLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    kqueryExpression
%End
%Rules
    kqueryExpression ::= $empty
              | items
    items ::= item
            | items item
    item ::= IDENTIFIER
           | NUMBER
           | STRING
           | QUERY
           | ARRAY
           | TRUE
           | FALSE
           | NULL
           | AND
           | OR
           | NOT
           | IN
           | AS
           | BY
           | FROM
           | WHERE
           | SELECT
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
           | QUESTION
           | DOLLAR
           | AT
%End
