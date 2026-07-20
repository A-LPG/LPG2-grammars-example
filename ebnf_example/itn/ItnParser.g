-- ITN Parser (LPG) — structural port of grammars-v4 itn/itn.g4
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Nonterminals: itinerary / line / longitude / latitude / descr / flag

%Options la=2,ebnf
%Options fp=ItnParser
%options package=lpg.grammars.itn
%options template=dtParserTemplateF.gi
%options import_terminals=ItnLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    itinerary
%End

%Rules
    -- itinerary : line* EOF
    itinerary ::= line*

    -- line : longitude '|' latitude '|' descr '|' flag '|'
    line ::= longitude PIPE latitude PIPE descr PIPE flag PIPE

    longitude ::= NUM

    latitude ::= NUM

    descr ::= TEXT

    flag ::= NUM
%End
