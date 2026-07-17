-- Fasta Parser (LPG)
%Options la=2
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
    section_list ::= section | section_list section
    section ::= descriptionline | sequencelines | commentline
    descriptionline ::= DESCRIPTIONLINE
    commentline ::= COMMENTLINE
    sequencelines ::= SEQUENCELINE | sequencelines SEQUENCELINE
%End
