-- Hexpat Parser (LPG) — curated subset
%Options la=2
%Options fp=HexpatParser
%options package=lpg.grammars.hexpat
%options template=dtParserTemplateF.gi
%options import_terminals=HexpatLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    file_
%End
%Rules

    file_ ::= decl_list
    decl_list ::= decl | decl_list decl
    decl ::= STRUCT IDENTIFIER LBRACE field_list RBRACE SEMI
    field_list ::= $empty | field_list field
    field ::= type_ IDENTIFIER SEMI
    type_ ::= U8 | U16 | U32 | U64 | IDENTIFIER

%End
