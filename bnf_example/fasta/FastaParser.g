-- FASTA Parser (LPG) — structural port of grammars-v4 fasta/fasta.g4
-- Nonterminals: sequence / section / sequencelines / descriptionline / commentline

%Options la=3
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

    section_list ::= section
                   | section_list section

    section ::= descriptionline
              | sequencelines
              | commentline

    sequencelines ::= SEQUENCELINE
                    | sequencelines SEQUENCELINE

    descriptionline ::= DESCRIPTIONLINE

    commentline ::= COMMENTLINE
%End
