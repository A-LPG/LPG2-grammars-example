-- Jpa Parser (LPG) — curated subset
%Options la=2
%Options fp=JpaParser
%options package=lpg.grammars.jpa
%options template=dtParserTemplateF.gi
%options import_terminals=JpaLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    file_
%End
%Rules

    file_ ::= ql_statement
    ql_statement ::= SELECT IDENTIFIER FROM IDENTIFIER
                   | SELECT IDENTIFIER FROM IDENTIFIER WHERE expr
    expr ::= IDENTIFIER EQ NUMBER | IDENTIFIER EQ STRING | IDENTIFIER

%End
