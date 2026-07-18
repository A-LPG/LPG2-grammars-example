-- BarrousParser (LPG) from grammars-v4/esolang/barrous/barrous.g4
%Options la=2
%Options fp=BarrousParser
%options package=lpg.grammars.esolang.barrous
%options template=dtParserTemplateF.gi
%options import_terminals=BarrousLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    barrous
%End
%Rules
    barrous ::= command
              | barrous PIPE command

    command ::= forward | backward | add_ | subtract_ | push_ | pop_
              | reset_ | end_cmd | printchar | printval | rand | inpchar | inpnum

    forward ::= GT id
              | id GT id
    backward ::= LT id
               | id LT id
    add_ ::= id PLUS id
    subtract_ ::= id MINUS id
    push_ ::= id SEMI id
    pop_ ::= COLON id
    reset_ ::= BANG
    end_cmd ::= EQ
    printchar ::= AT id
    printval ::= HASH id
    rand ::= id QUESTION id
    inpchar ::= AMP id
    inpnum ::= PERCENT id

    id ::= INDENTIFIER | INT | CARET
%End
