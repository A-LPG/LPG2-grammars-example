-- Robotwars Parser (LPG)
%Options la=3
%Options fp=RobotwarsParser
%options package=lpg.grammars.robotwars
%options template=dtParserTemplateF.gi
%options import_terminals=RobotwarsLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    program
%End
%Rules
    program ::= line_list
    line_list ::= line | line_list line
    line ::= opt_content EOL
    opt_content ::= %Empty | ID | COMMENT | statement

    statement ::= ifstatement | tostatement | gosubstatement | gotostatement
                | endsubstatement | accumstatement

    accumstatement ::= EQ statement
                     | HASH statement
                     | LT expression statement
                     | GT expression statement

    gosubstatement ::= GOSUB ID
    gotostatement ::= GOTO ID
    endsubstatement ::= ENDSUB

    tostatement ::= to_regs
                  | expression to_regs
    to_regs ::= TO register_
              | to_regs TO register_

    -- EOL separator allows statement body on the following physical line
    ifstatement ::= IF condition statement
                  | IF condition DOT statement
                  | IF condition COMMA statement
                  | IF condition EOL statement
                  | condition statement
                  | condition DOT statement
                  | condition COMMA statement
                  | condition EOL statement

    condition ::= expression comparison expression
    comparison ::= LT | GT | EQ | HASH

    expression ::= unary
                 | expression PLUS unary
                 | expression MINUS unary
                 | expression STAR unary
                 | expression SLASH unary
    unary ::= argument | PLUS argument | MINUS argument
    argument ::= NUMBER | register_

    register_ ::= R_A | R_B | R_C | R_D | R_E | R_F | R_G | R_H | R_I | R_J | R_K | R_L | R_M | R_N | R_O | R_P | R_Q | R_R | R_S | R_T | R_U | R_V | R_W | R_X | R_Y | R_Z | R_SPEEDX | R_SPEEDY | R_RANDOM | R_DAMAGE | R_RADAR | R_INDEX | R_SHOT | R_DATA | R_AIM
%End
