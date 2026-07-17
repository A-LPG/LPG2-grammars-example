-- Bibcode Parser (LPG)
%Options la=2
%Options fp=BibcodeParser
%options package=lpg.grammars.bibcode
%options template=dtParserTemplateF.gi
%options import_terminals=BibcodeLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    bibcode
%End
%Rules
    bibcode ::= year publish volume pagesection author

    year ::= DIGIT DIGIT DIGIT DIGIT

    publish ::= pubchar pubchar pubchar pubchar pubchar
    pubchar ::= letter | digit | DOT

    volume ::= pubchar pubchar pubchar pubchar

    pagesection ::= section page
                  | page

    section ::= letter
    page ::= pagechar
           | page pagechar
    pagechar ::= digit | DOT

    author ::= letter

    letter ::= UPPERLETTER | LOWERLETTER
    digit ::= DIGIT
%End
