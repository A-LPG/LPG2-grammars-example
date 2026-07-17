-- TSV Parser (LPG)
-- Ported from antlr/grammars-v4 tsv/tsv.g4 for parse-level examples.

%Options la=2
%Options fp=TsvParser
%options package=lpg.grammars.tsv
%options template=dtParserTemplateF.gi
%options import_terminals=TsvLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    tsvFile
%End

%Rules
    -- tsvFile : hdr row* EOF
    tsvFile ::= hdr
              | hdr rows

    hdr ::= row

    rows ::= row
           | rows row

    -- row : field (TAB field)* EOL
    row ::= fields EOL

    fields ::= field
             | fields TAB field

    field ::= TEXT
            | STRING
%End
