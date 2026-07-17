-- Graphemes Parser (LPG) — Wave D curated subset
%Options la=2
%Options fp=GraphemesParser
%options package=lpg.grammars.unicode.graphemes
%options template=dtParserTemplateF.gi
%options import_terminals=GraphemesLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    graphemes
%End
%Rules

    graphemes ::= cluster_list
    cluster_list ::= cluster | cluster_list cluster
    cluster ::= CHAR

%End
