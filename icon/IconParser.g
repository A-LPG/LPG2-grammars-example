-- Icon Parser (LPG)
%Options la=2
%Options fp=IconParser
%options package=lpg.grammars.icon
%options template=dtParserTemplateF.gi
%options import_terminals=IconLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    start_
%End
%Rules
    start_ ::= prog
    prog ::= declaration
    declaration ::= PROCEDURE IDENTIFIER LPAREN RPAREN expr END
    expr ::= WRITE LPAREN STRING RPAREN
%End
