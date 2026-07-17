-- TinyosNesc Parser (LPG) — curated subset
%Options la=2
%Options fp=TinyosNescParser
%options package=lpg.grammars.tinyos_nesc
%options template=dtParserTemplateF.gi
%options import_terminals=TinyosNescLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    nesc_file
%End
%Rules

    nesc_file ::= CONFIGURATION IDENTIFIER LBRACE RBRACE IMPLEMENTATION LBRACE body RBRACE
    body ::= $empty | body COMPONENTS IDENTIFIER SEMI

%End
