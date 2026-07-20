-- Cookie Parser (LPG)
-- Ported from antlr/grammars-v4 cookie/cookie.g4
-- Uses opt-in EBNF sugar for optional/list shapes (equivalent to prior BNF).

%Options la=2,ebnf
%Options fp=CookieParser
%options package=lpg.grammars.cookie
%options template=dtParserTemplateF.gi
%options import_terminals=CookieLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    cookie
%End

%Rules
    cookie ::= av_pairs*

    av_pairs ::= av_pair (SEMICOLON av_pair)*

    av_pair ::= attr [EQUAL value]

    attr ::= TOKEN

    value ::= word

    word ::= TOKEN
           | STRING
%End
