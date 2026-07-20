-- PBM Parser (LPG) — structural port of grammars-v4 pbm/pbm.g4
-- Nonterminals: file_ / magic / width / height / table / number

%Options la=2
%Options fp=PbmParser
%options package=lpg.grammars.pbm
%options template=dtParserTemplateF.gi
%options import_terminals=PbmLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= magic width height table

    magic ::= MAGIC

    width ::= number
    height ::= number

    -- table : ('0' | '1')+
    table ::= bit
            | table bit

    bit ::= ZERO
          | ONE

    number ::= DIGITS
             | ZERO
             | ONE
%End
