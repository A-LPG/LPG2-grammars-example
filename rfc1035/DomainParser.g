-- Domain Parser (LPG)
-- Ported from antlr/grammars-v4 rfc1035/domain.g4

%Options la=2
%Options fp=DomainParser
%options package=lpg.grammars.rfc1035
%options template=dtParserTemplateF.gi
%options import_terminals=DomainLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    domain
%End

%Rules
    domain ::= subdomain
             | SPACE

    subdomain ::= LABEL
                | subdomain DOT LABEL
%End
