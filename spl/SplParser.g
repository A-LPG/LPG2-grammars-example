-- Spl Parser (LPG) — curated subset
%Options la=2
%Options fp=SplParser
%options package=lpg.grammars.spl
%options template=dtParserTemplateF.gi
%options import_terminals=SplLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    query
%End
%Rules

    query ::= SEARCH field_list pipe_list
    field_list ::= $empty | field_list field
    field ::= IDENTIFIER | IDENTIFIER EQ IDENTIFIER | IDENTIFIER EQ STRING | IDENTIFIER EQ NUMBER
    pipe_list ::= $empty | pipe_list PIPE stats
    stats ::= STATS IDENTIFIER BY IDENTIFIER

%End
