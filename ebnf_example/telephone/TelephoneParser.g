-- Telephone Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Ported from antlr/grammars-v4 telephone/telephone.g4

%Options la=2,ebnf
%Options fp=TelephoneParser
%options package=lpg.grammars.telephone
%options template=dtParserTemplateF.gi
%options import_terminals=TelephoneLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    test
%End

%Rules
    test ::= number

    number ::= opt_plus1 opt_plus variation

    opt_plus1 ::= PLUS1?

    opt_plus ::= PLUS?

    variation ::= nanp
                 | japan

    nanp ::= PREFIX011 areacode exchange subscriber

    japan ::= PREFIX010 areacode exchange subscriber

    areacode ::= DIGIT DIGIT DIGIT

    exchange ::= DIGIT DIGIT DIGIT

    subscriber ::= DIGIT DIGIT DIGIT DIGIT
%End
