-- CSV Parser (LPG) — structural port of grammars-v4 csv/CSV.g4
-- Nonterminals mirror g4: csvFile / hdr / row / field (not token-stream soup).

%Options la=2
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
    csvFile ::= hdr rows

    hdr ::= row

    rows ::= row
           | rows row

    -- row: field (',' field)* '\r'? '\n'
    row ::= fields NL

    fields ::= field
             | fields COMMA field

    -- field: TEXT | STRING | /* empty */
    field ::= TEXT
            | STRING
            | $empty
%End
