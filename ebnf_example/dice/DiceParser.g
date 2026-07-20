-- DiceParser (LPG) from grammars-v4/dice DiceNotationParser.g4
-- EBNF port: %Options ebnf (twin: bnf_example).
%Options la=2,ebnf
%Options fp=DiceParser
%options package=lpg.grammars.dice
%options template=dtParserTemplateF.gi
%options import_terminals=DiceLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    file_
%End
%Rules
    file_ ::= notation

    notation ::= addOp

    addOp ::= multOp (ADDOPERATOR multOp)*

    multOp ::= operand (MULTOPERATOR operand)*

    operand ::= dice
               | number
               | LPAREN notation RPAREN

    dice ::= DSEPARATOR DIGIT
            | DIGIT DSEPARATOR DIGIT
            | ADDOPERATOR DSEPARATOR DIGIT
            | ADDOPERATOR DIGIT DSEPARATOR DIGIT

    number ::= DIGIT
              | ADDOPERATOR DIGIT
%End
