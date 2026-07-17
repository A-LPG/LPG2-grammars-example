-- sapf Parser (LPG) — flattened for parse-level examples
%Options la=2
%Options fp=SapfParser
%options package=lpg.grammars.sapf
%options template=dtParserTemplateF.gi
%options import_terminals=SapfLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    file_
%End
%Rules
    file_ ::= $empty | items
    items ::= item | items item
    item ::= NUMBER
           | LITERAL
           | STRING
           | PLUS | MINUS | TIMES | DIV
           | HASH | COLON | EQUAL | BACKSLASH | BACKTICK | QUOTE | COMMA | DOT
           | LPAREN | RPAREN | LBRACK | RBRACK | LCURL | RCURL
%End
