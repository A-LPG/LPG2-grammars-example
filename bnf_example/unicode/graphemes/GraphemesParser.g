-- Graphemes subset: sequence of CHAR / CRLF clusters (no Unicode property classes)
%Options la=2
%Options fp=GraphemesParser
%options package=lpg.grammars.unicode.graphemes
%options template=dtParserTemplateF.gi
%options import_terminals=GraphemesLexer.gi
%options automatic_ast=none
%Eof
    EOF_TOKEN
%End
%Start
    graphemes
%End
%Rules
    graphemes ::= cluster_list
    cluster_list ::= $empty | cluster_list grapheme_cluster
    grapheme_cluster ::= CHAR | CRLF
%End
