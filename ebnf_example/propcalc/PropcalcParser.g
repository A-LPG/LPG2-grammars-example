-- PropcalcParser (LPG) from grammars-v4/propcalc/propcalc.g4
-- EBNF port: %Options ebnf (twin: bnf_example).
%Options la=2,ebnf
%Options fp=PropcalcParser
%options package=lpg.grammars.propcalc
%options template=dtParserTemplateF.gi
%options import_terminals=PropcalcLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    proposition
%End
%Rules
    proposition ::= expression THEREFORE expression

    expression ::= relExpression
                  | expression AND relExpression
                  | expression OR relExpression

    relExpression ::= atom
                     | equiv
                     | implies

    atom ::= variable
            | NOT atom
            | LPAREN expression RPAREN

    equiv ::= atom EQUIV atom

    implies ::= atom IMPLIES atom

    variable ::= LETTER*
%End
