-- Cap'n Proto Parser (LPG) — curated subset
%Options la=2
%Options fp=CapnprotoParser
%options package=lpg.grammars.capnproto
%options template=dtParserTemplateF.gi
%options import_terminals=CapnprotoLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    document
%End
%Rules
    document ::= FILE_ID SEMI def_list
    def_list ::= $empty | def_list struct_def
    struct_def ::= STRUCT IDENTIFIER LBRACE field_list RBRACE
    field_list ::= $empty | field_list field
    field ::= IDENTIFIER LOCATOR COLON IDENTIFIER SEMI
%End
