-- Mdx Parser (LPG)

%Options la=2
%Options fp=MdxParser
%options package=lpg.grammars.mdx
%options template=dtParserTemplateF.gi
%options import_terminals=MdxLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    mdx_statement
%End
%Rules
    mdx_statement ::= $empty
              | items
    items ::= item
            | items item
    item ::= IDENTIFIER
           | NUMBER
           | STRING
           | SELECT
           | FROM
           | WHERE
           | ON
           | COLUMNS
           | ROWS
           | PAGES
           | SECTIONS
           | CHAPTERS
           | PROPERTIES
           | CELL
           | DIMENSION
           | MEMBER
           | SET
           | AS
           | AND
           | OR
           | NOT
           | EMPTY
           | NON
           | AXIS
           | WITH
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
           | AMP
           | SEMI
%End
