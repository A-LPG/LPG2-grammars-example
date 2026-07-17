-- Cookie Parser (LPG)
-- Ported from antlr/grammars-v4 cookie/cookie.g4

%Options la=2
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
    cookie ::= $empty
             | av_pairs_list

    av_pairs_list ::= av_pairs
                    | av_pairs_list av_pairs

    av_pairs ::= av_pair
               | av_pairs SEMICOLON av_pair

    av_pair ::= attr
              | attr EQUAL value

    attr ::= TOKEN

    value ::= word

    word ::= TOKEN
           | STRING
%End
