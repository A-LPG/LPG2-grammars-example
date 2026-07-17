-- DoiurlParser (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options la=2
%Options fp=DoiurlParser
%options package=lpg.grammars.doiurl
%options template=dtParserTemplateF.gi
%options import_terminals=DoiurlLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    doiuri
%End

%Rules
    doiuri ::= scheme COLON encodeddoi
             | scheme COLON encodeddoi QMARK query
             | scheme COLON encodeddoi SHARP fragment_
             | scheme COLON encodeddoi QMARK query SHARP fragment_

    scheme ::= DOI

    encodeddoi ::= prefix_ SLASH suffix

    prefix_ ::= segment

    suffix ::= segment
             | suffix SLASH segment

    segment ::= pchars

    pchars ::= PCHAR
             | pchars PCHAR

    query ::= $empty
            | query query_char

    fragment_ ::= $empty
                | fragment_ query_char

    query_char ::= PCHAR | SLASH | QMARK
%End
