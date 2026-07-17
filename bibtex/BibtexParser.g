-- BibTeX Parser (LPG)
%Options la=2
%Options fp=BibtexParser
%options package=lpg.grammars.bibtex
%options template=dtParserTemplateF.gi
%options import_terminals=BibtexLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    bibTex
%End
%Rules
    bibTex ::= entry_list
    entry_list ::= $empty | entry_list entry
    entry ::= ARTICLE LBRACE IDENTIFIER COMMA field_list RBRACE
            | BOOK LBRACE IDENTIFIER COMMA field_list RBRACE
            | BOOKLET LBRACE IDENTIFIER COMMA field_list RBRACE
            | INBOOK LBRACE IDENTIFIER COMMA field_list RBRACE
            | INCOLLECTION LBRACE IDENTIFIER COMMA field_list RBRACE
            | INPROCEEDINGS LBRACE IDENTIFIER COMMA field_list RBRACE
            | PROCEEDINGS LBRACE IDENTIFIER COMMA field_list RBRACE
            | MANUAL LBRACE IDENTIFIER COMMA field_list RBRACE
            | MASTERTHESIS LBRACE IDENTIFIER COMMA field_list RBRACE
            | PHDTHESIS LBRACE IDENTIFIER COMMA field_list RBRACE
            | MISC LBRACE IDENTIFIER COMMA field_list RBRACE
            | TECHREPORT LBRACE IDENTIFIER COMMA field_list RBRACE
            | UNPUBLISHED LBRACE IDENTIFIER COMMA field_list RBRACE
    field_list ::= field | field_list field
    field ::= IDENTIFIER EQ value COMMA
    value ::= INTEGER_LITERAL | STRING_LITERAL
%End
