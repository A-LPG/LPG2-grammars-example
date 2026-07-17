-- Recfile Parser (LPG)
-- Ported from antlr/grammars-v4 recfile/recfile.g4 for parse-level examples.

%Options la=2
%Options fp=RecfileParser
%options package=lpg.grammars.recfile
%options template=dtParserTemplateF.gi
%options import_terminals=RecfileLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    -- file_ : line* EOF
    file_ ::= $empty
            | lines

    lines ::= line
            | lines line

    -- line : (descriptor | record)? EOL
    line ::= EOL
           | descriptor EOL
           | record EOL

    -- descriptor : '%' key ':' (EOL '+')? value
    descriptor ::= PERCENT key COLON value
                 | PERCENT key COLON EOL PLUS value

    -- record : key ':' (EOL '+')? value
    record ::= key COLON value
             | key COLON EOL PLUS value

    key ::= STRING
    value ::= STRING
%End
