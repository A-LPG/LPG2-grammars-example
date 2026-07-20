-- Gff3Parser (LPG) — structural port of grammars-v4 gff3/gff3.g4
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Nonterminals: document / line / dataline / attributes / attribute /
--   seqid / source / type_ / start / end / score / strand / phase / commentline
-- g4 HEADER ('##gff-version 3') is lexed as COMMENTLINE (LPG prefix-safe);
-- document still requires a leading comment line then line+.

%Options la=2,ebnf
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
    -- document: HEADER line+  (HEADER ≈ first COMMENTLINE, typically ##gff-version 3)
    document ::= COMMENTLINE lines

    lines ::= line+

    line ::= commentline
            | dataline

    dataline ::= seqid TAB source TAB type_ TAB start TAB end TAB score TAB strand TAB phase TAB opt_attrs EOL

    opt_attrs ::= (attribute (SEMI attribute)*)?

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
