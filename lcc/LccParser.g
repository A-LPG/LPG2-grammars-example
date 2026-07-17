-- LCC Parser (LPG)
-- Ported from antlr/grammars-v4 lcc/lcc.g4

%Options la=3
%Options fp=LccParser
%options package=lpg.grammars.lcc
%options template=dtParserTemplateF.gi
%options import_terminals=LccLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    lcc
%End

%Rules
    lcc ::= topic opt_space opt_subtopic opt_space subclasses opt_space opt_cutters opt_date

    opt_space ::= $empty
                | SPACE

    opt_subtopic ::= $empty
                   | subtopic

    opt_cutters ::= $empty
                  | DOT cutters

    opt_date ::= $empty
               | SPACE date

    topic ::= LETTER
    subtopic ::= LETTER

    subclasses ::= subclass
                 | subclasses DOT subclass

    subclass ::= digits

    digits ::= DIGIT
             | digits DIGIT

    cutters ::= cutter
              | cutters SPACE cutter

    cutter ::= LETTER digits

    date ::= DIGIT DIGIT DIGIT DIGIT
%End
