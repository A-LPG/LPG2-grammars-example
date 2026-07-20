-- Dif Parser (LPG)
%Options la=2
%Options fp=DifParser
%options package=lpg.grammars.dif
%options template=dtParserTemplateF.gi
%options import_terminals=DifLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    dif
%End

%Rules
    dif ::= header data

    header ::= tableheader vectorsheader tuplesheader dataheader

    tableheader ::= TABLE pair STRING
    vectorsheader ::= VECTORS pair STRING
    tuplesheader ::= TUPLES pair STRING
    dataheader ::= DATA pair STRING

    data ::= datum
           | data datum

    datum ::= directive | string_ | numeric

    directive ::= pair BOT | pair EOD
    string_ ::= pair STRING
    numeric ::= pair V

    pair ::= NUM COMMA NUM
%End
