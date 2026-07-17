-- Pdn Parser (LPG)
%Options la=2
%Options fp=PdnParser
%options package=lpg.grammars.pdn
%options template=dtParserTemplateF.gi
%options import_terminals=PdnLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    game
%End
%Rules
    game ::= tags moves

    tags ::= $empty | tags tag
    tag ::= LBRACKET TEXT STRING RBRACKET

    moves ::= move_list
            | move_list result_list

    move_list ::= move | move_list move

    result_list ::= result_item | result_list result_item
    result_item ::= DRAW | STAR | MOVE2

    move ::= MOVENUM movespec_list

    movespec_list ::= movespec | movespec_list movespec

    -- Annotation on a move is only * or draw; 1-0/0-1 stay for result_list
    movespec ::= MOVE1 | MOVE2
               | MOVE1 STAR | MOVE2 STAR
               | MOVE1 DRAW | MOVE2 DRAW
%End
