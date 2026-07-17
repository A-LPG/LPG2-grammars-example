-- MetricParser (LPG)
%Options la=2
%Options fp=MetricParser
%options package=lpg.grammars.metric
%options template=dtParserTemplateF.gi
%options import_terminals=MetricLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= uom

    uom ::= measure
          | uom STAR measure
          | uom SLASH measure

    measure ::= unit
              | prefix_ unit
              | unit exponent
              | prefix_ unit exponent

    exponent ::= CARET INTE

    prefix_ ::= E | P | T | CAP_M | K | H | DA | D | C | M | N | PICO | F | A_PREFIX

    unit ::= M | UNIT_G | UNIT_S | UNIT_A | UNIT_K | UNIT_MOL | UNIT_CD
           | UNIT_RAD | UNIT_HZ | UNIT_SR | UNIT_N | UNIT_PA | UNIT_J | UNIT_W
           | UNIT_C | UNIT_V | UNIT_F | UNIT_OHM | UNIT_SIEMENS | UNIT_WB
           | T | UNIT_H | UNIT_LM | UNIT_LX | UNIT_BQ | UNIT_GY | UNIT_SV | UNIT_KAT
%End
