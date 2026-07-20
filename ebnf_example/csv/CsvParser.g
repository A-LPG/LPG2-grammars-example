-- CSV Parser (LPG, EBNF) — structural port of grammars-v4 csv/CSV.g4
-- Nonterminals mirror g4: csvFile / hdr / row / field (not token-stream soup).

%Options la=2,ebnf
%Options fp=CsvParser
%options package=lpg.grammars.csv
%options template=dtParserTemplateF.gi
%options import_terminals=CsvLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    csvFile
%End

%Rules
    -- csvFile: hdr row+ EOF
    csvFile ::= hdr row+

    hdr ::= row

    -- row: field (',' field)* '\r'? '\n'
    row ::= field (COMMA field)* NL

    -- field: TEXT | STRING | /* empty */
    field ::= TEXT
            | STRING
            | $empty
%End
