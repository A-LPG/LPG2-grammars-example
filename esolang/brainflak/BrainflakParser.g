-- Brainflak Parser (LPG)

%Options la=2
%Options fp=BrainflakParser
%options package=lpg.grammars.brainflak
%options template=dtParserTemplateF.gi
%options import_terminals=BrainflakLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= statements

    statements ::= statement
                 | statements statement

    statement ::= parenstmt
                | bracestmt
                | bracketstmt
                | gtltstmt

    parenstmt ::= LPAREN statements_opt RPAREN
    bracestmt ::= LBRACE statements_opt RBRACE
    bracketstmt ::= LBRACK statements_opt RBRACK
    gtltstmt ::= LT statements_opt GT

    statements_opt ::= $empty
                     | statements
%End
