-- ITN Parser (LPG)
-- Ported from antlr/grammars-v4 itn/itn.g4 for parse-level examples.

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
