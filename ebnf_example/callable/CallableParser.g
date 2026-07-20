-- Callable Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Ported from antlr/grammars-v4 callable/callable_.g4

%Options la=2,ebnf
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
    program ::= line (eols line)*

    eols ::= EOL+

    line ::= ID LPAREN RPAREN
            | ID LPAREN f_inner RPAREN

    f_inner ::= f_arg (COMMA f_arg)*

    f_arg ::= line
             | STRING
%End
