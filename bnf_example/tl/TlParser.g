-- TL Parser (LPG)
-- Ported from antlr/grammars-v4 tl/tl.g4

%Options la=2
%Options fp=TlParser
%options package=lpg.grammars.tl
%options template=dtParserTemplateF.gi
%options import_terminals=TlLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= proposition

    proposition ::= $empty
                  | TL_UPTACK
                  | ATOMIC
                  | TL_NOT proposition
                  | proposition TL_OR proposition
                  | TL_ALWAYS proposition
                  | TL_WAS proposition
                  | LPAREN proposition RPAREN
%End
