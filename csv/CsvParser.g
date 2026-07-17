-- CSV Parser (LPG)
-- Ported from antlr/grammars-v4 csv/CSV.g4 for parse-level examples.

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
