-- Metric Parser (LPG) — structural port of grammars-v4 metric/metric.g4
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Nonterminals: file_ / uom / measure / exponent / prefix_ / unit / baseunit / derivedunit.
-- Subset: µ and ˚C omitted (AfterASCII); ohm ASCII alias for Ω.

%Options la=2,ebnf
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

    prefix_ ::= PREFIX_E | PREFIX_P | PREFIX_T | PREFIX_G | PREFIX_MEGA
              | PREFIX_K | PREFIX_H | PREFIX_DA | PREFIX_D | PREFIX_C
              | UNIT_M | PREFIX_N | PREFIX_PICO
              | PREFIX_F | PREFIX_A

    unit ::= baseunit | derivedunit

    baseunit ::= UNIT_M | UNIT_G | UNIT_S | UNIT_A | UNIT_K | UNIT_MOL | UNIT_CD

    derivedunit ::= UNIT_RAD | UNIT_HZ | UNIT_SR | UNIT_N | UNIT_PA | UNIT_J
                  | UNIT_W | UNIT_C | UNIT_V | UNIT_F | UNIT_OHM | UNIT_SIEMENS
                  | UNIT_WB | UNIT_T | UNIT_H | UNIT_LM | UNIT_LX | UNIT_BQ
                  | UNIT_GY | UNIT_SV | UNIT_KAT
%End
