-- FASTA Parser (LPG) — structural port of grammars-v4 fasta/fasta.g4
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Nonterminals: sequence / section / sequencelines / descriptionline / commentline

%Options la=3,ebnf
%Options fp=FastaParser
%options package=lpg.grammars.fasta
%options template=dtParserTemplateF.gi
%options import_terminals=FastaLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    sequence
%End

%Rules
    sequence ::= section_list

    section_list ::= section+

    section ::= descriptionline
               | sequencelines
               | commentline

    sequencelines ::= SEQUENCELINE+

    descriptionline ::= DESCRIPTIONLINE

    commentline ::= COMMENTLINE
%End
