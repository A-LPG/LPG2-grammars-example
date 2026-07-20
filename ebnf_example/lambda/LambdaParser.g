-- Lambda Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Ported from antlr/grammars-v4 lambda/lambda.g4

%Options la=2,ebnf
%Options fp=LambdaParser
%options package=lpg.grammars.lambda
%options template=dtParserTemplateF.gi
%options import_terminals=LambdaLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= expression

    expression ::= VARIABLE
                 | function_
                 | application

    function_ ::= LAMBDA VARIABLE DOT scope

    application ::= LPAREN expression expression RPAREN

    scope ::= expression
%End
