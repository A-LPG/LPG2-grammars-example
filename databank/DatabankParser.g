-- Databank Parser (LPG)
-- Ported from antlr/grammars-v4 databank/databank.g4

%Options la=2
%Options fp=DatabankParser
%options package=lpg.grammars.databank
%options template=dtParserTemplateF.gi
%options import_terminals=DatabankLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    databank
%End

%Rules
    databank ::= optEols series samples optEols

    optEols ::= $empty | EOL

    series ::= datedseries | undatedseries

    datedseries ::= DATATYPE dateline dateline

    undatedseries ::= dateline dateline

    dateline ::= FLOATINGPOINT EOL

    samples ::= sample
              | samples sample

    sample ::= FLOATINGPOINT optEol
             | NA optEol

    optEol ::= $empty | EOL
%End
