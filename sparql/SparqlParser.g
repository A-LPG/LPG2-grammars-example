-- Sparql Parser (LPG)

%Options la=2
%Options fp=SparqlParser
%options package=lpg.grammars.sparql
%options template=dtParserTemplateF.gi
%options import_terminals=SparqlLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    query
%End
%Rules
    query ::= $empty
              | items
    items ::= item
            | items item
    item ::= IDENTIFIER
           | NUMBER
           | STRING
           | BASE
           | PREFIX
           | SELECT
           | DISTINCT
           | REDUCED
           | CONSTRUCT
           | DESCRIBE
           | ASK
           | FROM
           | NAMED
           | WHERE
           | GROUP
           | BY
           | HAVING
           | ORDER
           | ASC
           | DESC
           | LIMIT
           | OFFSET
           | VALUES
           | OPTIONAL
           | GRAPH
           | UNION
           | KW_MINUS
           | FILTER
           | BIND
           | SERVICE
           | SILENT
           | A
           | TRUE
           | FALSE
           | IN
           | NOT
           | AS
           | EXISTS
           | SEPARATOR
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
           | SEMI
           | CARET
%End
