-- Prolog Parser (LPG)
%Options la=2
%Options fp=PrologParser
%options package=lpg.grammars.prolog
%options template=dtParserTemplateF.gi
%options import_terminals=PrologLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    p_text
%End
%Rules
    p_text ::= clause_list
    clause_list ::= $empty | clause_list clause
    clause ::= term DOT
    term ::= VARIABLE
           | INTEGER
           | FLOAT
           | IDENTIFIER
           | IDENTIFIER LPAREN termlist RPAREN
           | LPAREN term RPAREN
           | LBRACKET termlist opt_tail RBRACKET
           | LBRACE termlist RBRACE
    opt_tail ::= $empty | PIPE term
    termlist ::= term | termlist COMMA term
%End
