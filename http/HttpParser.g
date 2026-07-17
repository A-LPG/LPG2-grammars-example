-- Http Parser (LPG)
-- Ported from http.g4; token-stream over RFC-ish tokens.
%Options la=2
%Options fp=HttpParser
%options package=lpg.grammars.http
%options template=dtParserTemplateF.gi
%options import_terminals=HttpLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    http_message
%End

%Rules
    http_message ::= $empty
              | items

    items ::= item
            | items item

    item ::= IDENTIFIER
           | NUMBER
           | HTTP
           | SLASH
           | QUESTION
           | COLON
           | DOT
           | EQ
           | AMP
           | PERCENT
           | HASH
           | BANG
           | DOLLAR
           | STAR
           | PLUS
           | MINUS
           | CARET
           | UNDERSCORE
           | BACKTICK
           | VBAR
           | TILDE
           | LPAREN
           | RPAREN
           | SEMI
           | COMMA
           | AT
           | SQUOTE
           | DQUOTE
           | CRLF
           | SP
%End
