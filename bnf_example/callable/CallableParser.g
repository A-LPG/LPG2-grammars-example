-- Callable Parser (LPG)
-- Ported from antlr/grammars-v4 callable/callable_.g4

%Options la=2
%Options fp=CallableParser
%options package=lpg.grammars.callable
%options template=dtParserTemplateF.gi
%options import_terminals=CallableLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= line
              | program eols line

    eols ::= EOL
           | eols EOL

    line ::= ID LPAREN RPAREN
           | ID LPAREN f_inner RPAREN

    f_inner ::= f_arg
              | f_inner COMMA f_arg

    f_arg ::= line
            | STRING
%End
