-- Karel Parser (LPG)
%Options la=2
%Options fp=KarelParser
%options package=lpg.grammars.karel
%options template=dtParserTemplateF.gi
%options import_terminals=KarelLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    karel
%End
%Rules
    karel ::= BEGINNING_OF_PROGRAM def_list BEGINNING_OF_EXECUTION stmt_list END_OF_EXECUTION END_OF_PROGRAM

    def_list ::= $empty | def_list definition
    definition ::= DEFINE IDENTIFIER AS statement

    stmt_list ::= $empty | stmt_list statement

    statement ::= block | iteration | loop | conditional | instruction

    block ::= BEGIN stmt_list END
    iteration ::= ITERATE number TIMES statement
    loop ::= WHILE condition DO statement
    conditional ::= IF condition THEN statement
                  | IF condition THEN statement ELSE statement

    instruction ::= MOVE | TURNLEFT | PICKBEEPER | PUTBEEPER | TURNOFF | IDENTIFIER

    condition ::= FRONT_IS_CLEAR | FRONT_IS_BLOCKED | LEFT_IS_CLEAR | LEFT_IS_BLOCKED
                | RIGHT_IS_CLEAR | RIGHT_IS_BLOCKED | BACK_IS_CLEAR | BACK_IS_BLOCKED
                | NEXT_TO_A_BEEPER | NOT_NEXT_TO_A_BEEPER
                | ANY_BEEPERS_IN_BEEPER_BAG | NO_BEEPERS_IN_BEEPER_BAG
                | FACING_NORTH | NOT_FACING_NORTH | FACING_SOUTH | NOT_FACING_SOUTH
                | FACING_EAST | NOT_FACING_EAST | FACING_WEST | NOT_FACING_WEST

    number ::= NUMBER
%End
