-- Orwell Parser (LPG) — curated def subset
%Options la=2
%Options fp=OrwellParser
%options package=lpg.grammars.orwell
%options template=dtParserTemplateF.gi
%options import_terminals=OrwellLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    program
%End
%Rules
    program ::= decl_list
    decl_list ::= decl | decl_list decl
    decl ::= IDENTIFIER id_list EQ expr
    id_list ::= $empty | id_list IDENTIFIER
    expr ::= NUMBER | IDENTIFIER
%End
