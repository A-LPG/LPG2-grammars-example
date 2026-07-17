-- Powerquery Parser (LPG) — curated subset
%Options la=2
%Options fp=PowerqueryParser
%options package=lpg.grammars.powerquery
%options template=dtParserTemplateF.gi
%options import_terminals=PowerqueryLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    document
%End
%Rules

    document ::= SECTION IDENTIFIER SEMI member_list
    member_list ::= member | member_list member
    member ::= IDENTIFIER EQ expr SEMI
    expr ::= NUMBER | STRING | TRUE | FALSE | NULLLITERAL | IDENTIFIER
           | LET IDENTIFIER EQ expr IN expr

%End
