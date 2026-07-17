-- Aql Parser (LPG)

%Options la=2
%Options fp=AqlParser
%options package=lpg.grammars.aql
%options template=dtParserTemplateF.gi
%options import_terminals=AqlLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    arangodb_query
%End
%Rules
    arangodb_query ::= $empty
              | items
    items ::= item
            | items item
    item ::= IDENTIFIER
           | NUMBER
           | STRING
           | FOR
           | IN
           | RETURN
           | FILTER
           | SORT
           | LIMIT
           | LET
           | COLLECT
           | INTO
           | KEEP
           | WITH
           | COUNT
           | OPTIONS
           | SEARCH
           | UPSERT
           | INSERT
           | UPDATE
           | REPLACE
           | REMOVE
           | DISTINCT
           | ASC
           | DESC
           | AND
           | OR
           | NOT
           | NULL
           | TRUE
           | FALSE
           | LIKE
           | OUTBOUND
           | INBOUND
           | ANY
           | GRAPH
           | SHORTEST
           | PATH
           | K_SHORTEST
           | PATHS
           | PRUNE
           | TO
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
           | AT
%End
