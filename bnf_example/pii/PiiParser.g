-- PII Parser (LPG)
-- Ported from antlr/grammars-v4 pii/pii.g4

%Options la=2
%Options fp=PiiParser
%options package=lpg.grammars.pii
%options template=dtParserTemplateF.gi
%options import_terminals=PiiLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    pii
%End

%Rules
    pii ::= issn item check
          | isbn item check

    issn ::= S DIGIT DIGIT DIGIT DIGIT DIGIT DIGIT DIGIT DIGIT year

    isbn ::= B DIGIT DIGIT DIGIT DIGIT DIGIT DIGIT DIGIT DIGIT DIGIT DIGIT

    year ::= DIGIT DIGIT

    item ::= DIGIT DIGIT DIGIT DIGIT DIGIT

    check ::= DIGIT
            | CHECKX
%End
