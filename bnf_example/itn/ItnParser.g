-- ITN Parser (LPG) — structural port of grammars-v4 itn/itn.g4
-- Nonterminals: itinerary / line / longitude / latitude / descr / flag

%Options la=2
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
    itinerary ::= $empty
                | lines

    lines ::= line
            | lines line

    -- line : longitude '|' latitude '|' descr '|' flag '|'
    line ::= longitude PIPE latitude PIPE descr PIPE flag PIPE

    longitude ::= NUM
    latitude ::= NUM
    descr ::= TEXT
    flag ::= NUM
%End
