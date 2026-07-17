-- DiceNotation Parser (LPG)
-- Ported from antlr/grammars-v4 dice/DiceNotationParser.g4

%Options la=2
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

    addOp ::= multOp
            | addOp ADDOPERATOR multOp

    multOp ::= operand
             | multOp MULTOPERATOR operand

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
