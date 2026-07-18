-- DoiurlParser (LPG) from grammars-v4/doiurl/doiurl.g4
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
             | scheme COLON encodeddoi QUESTION query
             | scheme COLON encodeddoi HASH fragment_
             | scheme COLON encodeddoi QUESTION query HASH fragment_

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
    query_char ::= PCHAR | SLASH | QUESTION
%End
