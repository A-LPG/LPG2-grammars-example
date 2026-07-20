-- DoiurlParser (LPG) from grammars-v4/doiurl/doiurl.g4
-- EBNF port: %Options ebnf (twin: bnf_example).
%Options la=2,ebnf
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
              | scheme COLON encodeddoi QUESTION query
              | scheme COLON encodeddoi HASH fragment_
              | scheme COLON encodeddoi QUESTION query HASH fragment_

    scheme ::= DOI

    encodeddoi ::= prefix_ SLASH suffix

    prefix_ ::= segment

    suffix ::= segment (SLASH segment)*

    segment ::= pchars

    pchars ::= PCHAR+

    query ::= (query query_char)?

    fragment_ ::= (fragment_ query_char)?

    query_char ::= PCHAR
                  | SLASH
                  | QUESTION
%End
