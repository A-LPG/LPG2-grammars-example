-- LOLCODE Parser (LPG) — structural subset of grammars-v4 lolcode.g4
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
    program ::= HAI opt_version code_block opt_bye
    opt_version ::= $empty | NUMBER
    opt_bye ::= $empty | KTHXBYE

    code_block ::= statement statements
    statements ::= $empty | statements statement

    statement ::= print_block
                | declaration
                | comment
                | assignment
                | expression

    print_block ::= VISIBLE expr_list opt_mkay
    opt_mkay ::= $empty | MKAY
    expr_list ::= $empty | expr_list expression

    declaration ::= I_HAS_A LABEL
                  | I_HAS_A LABEL ITZ value

    comment ::= BTW STRING
              | OBTW STRING TLDR

    assignment ::= LABEL R expression

    expression ::= LABEL | ATOM | STRING | NUMBER
    value ::= expression
%End
