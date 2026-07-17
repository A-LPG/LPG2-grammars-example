-- GuitartabParser (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options la=2
%Options fp=GuitartabParser
%options package=lpg.grammars.guitartab
%options template=dtParserTemplateF.gi
%options import_terminals=GuitartabLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    tab
%End

%Rules
    tab ::= string
          | tab string

    string ::= note fret_group
             | string fret_group

    fret_group ::= position FRET

    position ::= pos_sym
               | position pos_sym

    pos_sym ::= FINGER | BARLNE

    note ::= BA | BB | BC | BD | BE | BF | BG | LA | LB | LC | LD | LE | LF | LG
%End
