-- Clf Parser (LPG)
%Options la=2
%Options fp=ClfParser
%options package=lpg.grammars.clf
%options template=dtParserTemplateF.gi
%options import_terminals=ClfLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    log
%End
%Rules
    log ::= log_body
    log_body ::= line_eol | log_body line_eol | log_body line | line
    line_eol ::= line EOL | EOL
    line ::= host STRING STRING DATETIME LITERAL STRING STRING
           | host STRING STRING DATETIME LITERAL STRING STRING LITERAL LITERAL
    host ::= STRING | IP
%End
