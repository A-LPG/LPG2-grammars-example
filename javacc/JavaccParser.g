-- Javacc Parser (LPG) — curated subset
%Options la=2
%Options fp=JavaccParser
%options package=lpg.grammars.javacc
%options template=dtParserTemplateF.gi
%options import_terminals=JavaccLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    javacc_input
%End
%Rules

    javacc_input ::= PARSER_BEGIN LPAREN IDENTIFIER RPAREN java_class PARSER_END LPAREN IDENTIFIER RPAREN production
    java_class ::= CLASS IDENTIFIER LBRACE RBRACE
    production ::= VOID IDENTIFIER LPAREN RPAREN COLON LBRACE RBRACE LBRACE STRING RBRACE

%End
