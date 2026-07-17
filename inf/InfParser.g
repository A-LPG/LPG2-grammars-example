-- Inf Parser (LPG)
%Options la=2
%Options fp=InfParser
%options package=lpg.grammars.inf
%options template=dtParserTemplateF.gi
%options import_terminals=InfLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    inf
%End
%Rules
    inf ::= inf_items | $empty
    inf_items ::= inf_item | inf_items inf_item
    inf_item ::= section | EOL

    section ::= sectionheader
              | sectionheader line_list

    sectionheader ::= LBRACKET string RBRACKET EOL

    line_list ::= line | line_list line

    line ::= stringlist EOL
           | stringlist EQUAL stringlist EOL

    stringlist ::= string
                 | stringlist COMMA string
                 | stringlist COMMA

    string ::= CHARS | STRING
%End
