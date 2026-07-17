-- Promql Parser (LPG)

%Options la=2
%Options fp=PromqlParser
%options package=lpg.grammars.promql
%options template=dtParserTemplateF.gi
%options import_terminals=PromqlLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    expression
%End
%Rules
    expression ::= $empty
              | items
    items ::= item
            | items item
    item ::= IDENTIFIER
           | NUMBER
           | STRING
           | AND
           | OR
           | UNLESS
           | BY
           | WITHOUT
           | ON
           | IGNORING
           | GROUP_LEFT
           | GROUP_RIGHT
           | OFFSET
           | BOOL
           | TRUE
           | FALSE
           | INF
           | NAN
           | SUM
           | MIN
           | MAX
           | AVG
           | GROUP
           | STDDEV
           | STDVAR
           | COUNT
           | COUNT_VALUES
           | BOTTOMK
           | TOPK
           | QUANTILE
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
           | AT
           | CARET
           | PERCENT
%End
