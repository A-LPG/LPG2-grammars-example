-- Brainfuck Parser (LPG)
-- Ported from antlr/grammars-v4 esolang/brainfuck/brainfuck.g4

%Options la=2
%Options fp=BrainfuckParser
%options package=lpg.grammars.brainfuck
%options template=dtParserTemplateF.gi
%options import_terminals=BrainfuckLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= statements_opt

    statements_opt ::= $empty
                     | statements

    statements ::= statement
                 | statements statement

    statement ::= opcode
                | LPAREN statements_opt RPAREN

    opcode ::= GT
             | LT
             | PLUS
             | MINUS
             | DOT
             | COMMA
%End
