-- SUOKIF Parser (LPG)
%Options la=2
%Options fp=SuokifParser
%options package=lpg.grammars.suokif
%options template=dtParserTemplateF.gi
%options import_terminals=SuokifLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    top_level
%End
%Rules
    top_level ::= $empty
                | sentences
    sentences ::= sentence | sentences sentence

    sentence ::= WORD
               | VARIABLE
               | LPAREN EQUAL term term RPAREN
               | LPAREN NOT sentence RPAREN
               | LPAREN AND sentences RPAREN
               | LPAREN OR sentences RPAREN
               | LPAREN EQUAL GT sentence sentence RPAREN
               | LPAREN LT EQUAL GT sentence sentence RPAREN
               | LPAREN FORALL LPAREN variables RPAREN sentence RPAREN
               | LPAREN EXISTS LPAREN variables RPAREN sentence RPAREN
               | LPAREN WORD terms RPAREN
               | LPAREN VARIABLE terms RPAREN

    term ::= VARIABLE | WORD | STRING | NUMBER | sentence
    terms ::= term | terms term
    variables ::= VARIABLE | variables VARIABLE
%End
