-- LCC Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Ported from antlr/grammars-v4 lcc/lcc.g4

%Options la=3,ebnf
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

    opt_space ::= SPACE?

    opt_subtopic ::= subtopic?

    opt_cutters ::= (DOT cutters)?

    opt_date ::= (SPACE date)?

    topic ::= LETTER

    subtopic ::= LETTER

    subclasses ::= subclass (DOT subclass)*

    subclass ::= digits

    digits ::= DIGIT+

    cutters ::= cutter (SPACE cutter)*

    cutter ::= LETTER digits

    date ::= DIGIT DIGIT DIGIT DIGIT
%End
