-- Sieve Parser (LPG)
%Options la=2
%Options fp=SieveParser
%options package=lpg.grammars.sieve
%options template=dtParserTemplateF.gi
%options import_terminals=SieveLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    start_
%End
%Rules
    start_ ::= commands
    commands ::= command | commands command
    command ::= IDENTIFIER arguments SEMI
              | IDENTIFIER arguments block
    arguments ::= $empty
                | argument_list
                | argument_list test
                | argument_list testlist
                | test
                | testlist
    argument_list ::= argument | argument_list argument
    argument ::= stringlist | string | NUMBER | TAG
    testlist ::= LPAREN tests RPAREN
    tests ::= test | tests COMMA test
    test ::= IDENTIFIER arguments
    stringlist ::= LBRACKET strings RBRACKET
    strings ::= string | strings COMMA string
    string ::= QUOTEDSTRING
    block ::= LBRACE commands RBRACE
            | LBRACE RBRACE
%End
