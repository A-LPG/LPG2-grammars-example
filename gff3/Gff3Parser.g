-- Gff3Parser (LPG)
-- Ported from antlr/grammars-v4 gff3/gff3.g4
-- Header line is a COMMENTLINE (##gff-version 3).

%Options la=2
%Options fp=Gff3Parser
%options package=lpg.grammars.gff3
%options template=dtParserTemplateF.gi
%options import_terminals=Gff3Lexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    document
%End

%Rules
    document ::= lines

    lines ::= line
            | lines line

    line ::= commentline | dataline

    dataline ::= seqid TAB source TAB type_ TAB start TAB end TAB score TAB strand TAB phase TAB opt_attrs EOL

    opt_attrs ::= $empty | attributes

    attributes ::= attribute
                 | attributes SEMI attribute

    attribute ::= TEXT EQUAL TEXT

    seqid ::= TEXT
    source ::= TEXT
    type_ ::= TEXT
    start ::= TEXT
    end ::= TEXT
    strand ::= TEXT
    score ::= TEXT
    phase ::= TEXT

    commentline ::= COMMENTLINE
%End
