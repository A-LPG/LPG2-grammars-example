-- Geekcode Parser (LPG) — curated token stream
%Options la=2
%Options fp=GeekcodeParser
%options package=lpg.grammars.geekcode
%options template=dtParserTemplateF.gi
%options import_terminals=GeekcodeLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    file_
%End
%Rules
    file_ ::= tuple_list
    tuple_list ::= tuple | tuple_list tuple
    tuple ::= LETTER sizing
    sizing ::= $empty | sizing PLUS | sizing MINUS | sizing STAR
%End
