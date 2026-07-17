-- LolcodeParser (LPG)
%Options la=2
%Options fp=LolcodeParser
%options package=lpg.grammars.esolang.lolcode
%options template=dtParserTemplateF.gi
%options import_terminals=LolcodeLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    program
%End
%Rules

    program ::= HAI opt_version statements opt_bye
    opt_version ::= $empty | NUMBER
    opt_bye ::= $empty | KTHXBYE
    statements ::= statement | statements statement
    statement ::= VISIBLE values
                | LABEL
                | ATOM
                | STRING
                | NUMBER
    values ::= $empty | values value
    value ::= STRING | NUMBER | ATOM | LABEL

%End
