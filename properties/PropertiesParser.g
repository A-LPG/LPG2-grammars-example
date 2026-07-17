-- Properties Parser (LPG) — mode-free port from PropertiesParser.g4 (Wave D)

%Options la=2
%Options fp=PropertiesParser
%options package=lpg.grammars.properties
%options template=dtParserTemplateF.gi
%options import_terminals=PropertiesLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    propertiesFile
%End

%Rules
    propertiesFile ::= row_list

    row_list ::= $empty
               | row_list row

    row ::= comment
          | line
          | NEWLINE

    comment ::= COMMENT eol

    line ::= CHARACTER opt_value eol

    opt_value ::= $empty
                | DELIMITER opt_val_chars

    opt_val_chars ::= $empty
                    | CHARACTER

    eol ::= NEWLINE
%End
