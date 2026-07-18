-- Graphemes Parser (LPG) — language_subset of grammars-v4/unicode/graphemes
-- Full Unicode Grapheme_Cluster_Break / Emoji property classes unsupported in LPG.

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
    graphemes ::= list_clusters

    list_clusters ::= $empty
                    | list_clusters grapheme_cluster

    grapheme_cluster ::= CRLF
                       | NonControl
%End
