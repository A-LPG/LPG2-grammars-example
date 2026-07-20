-- BCL Parser (LPG)
-- Ported from antlr/grammars-v4 bcl/bcl.g4

%Options la=2
%Options fp=BclParser
%options package=lpg.grammars.bcl
%options template=dtParserTemplateF.gi
%options import_terminals=BclLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    bcl
%End

%Rules
    bcl ::= term_list
          | $empty

    term_list ::= term
                | term_list term

    term ::= ZEROZERO
           | ZEROONE
           | ONE term term
%End
