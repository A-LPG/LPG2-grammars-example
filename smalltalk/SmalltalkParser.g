-- Smalltalk Parser (LPG)
%Options la=2
%Options fp=SmalltalkParser
%options package=lpg.grammars.smalltalk
%options template=dtParserTemplateF.gi
%options import_terminals=SmalltalkLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    script
%End
%Rules
    script ::= sequence
    sequence ::= statements
    statements ::= expression
    expression ::= literal
    literal ::= STRING | NUMBER | IDENTIFIER
%End
