-- SRT Parser (LPG)
-- Ported from antlr/grammars-v4 srt/srt.g4

%Options la=2
%Options fp=SrtParser
%options package=lpg.grammars.srt
%options template=dtParserTemplateF.gi
%options import_terminals=SrtLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= subtitles

    subtitles ::= subtitle_block
                | subtitles subtitle_block

    subtitle_block ::= subtitle
                     | subtitle newlines

    newlines ::= NEWLINE
               | newlines NEWLINE

    subtitle ::= NUMBER NEWLINE TIMESTAMP NEWLINE text_lines

    text_lines ::= text_line
                 | text_lines text_line

    text_line ::= TEXT
                | TEXT NEWLINE
%End
