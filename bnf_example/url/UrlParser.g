-- UrlParser (LPG)
-- Ported from antlr/grammars-v4 url/url.g4

%Options la=3
%Options fp=UrlParser
%options package=lpg.grammars.url
%options template=dtParserTemplateF.gi
%options import_terminals=UrlLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    url
%End

%Rules
    url ::= uri

    uri ::= scheme COLON SLASH SLASH authority opt_path opt_query opt_frag opt_ws

    authority ::= host_port
                | userinfo AT host_port

    userinfo ::= string
               | string COLON string

    host_port ::= hostname
                | hostname COLON port
                | SLASH hostname
                | SLASH hostname COLON port

    opt_path ::= $empty | SLASH | SLASH path
    opt_query ::= $empty | query
    opt_frag ::= $empty | frag
    opt_ws ::= $empty | WS

    scheme ::= string

    hostname ::= string
               | LBRACKET v6host RBRACKET

    v6host ::= v6parts
             | COLON COLON v6parts
             | COLON COLON

    v6parts ::= v6atom
              | v6parts COLON v6atom
              | v6parts COLON COLON v6atom

    v6atom ::= string

    port ::= string

    path ::= string
           | path SLASH string
           | path SLASH

    frag ::= SHARP string

    query ::= QMARK search

    search ::= searchparameter
             | search AMP searchparameter

    searchparameter ::= string
                      | string EQ string
                      | string EQ HEX

    string ::= STRING
%End

