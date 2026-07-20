-- Robotwars Parser (LPG) — structural port of grammars-v4 robotwars/robotwar.g4
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Nonterminals: program/line/label/comment/statement/accumstatement/
-- accumexpression/gosubstatement/gotostatement/tostatement/endsubstatement/
-- ifstatement/condition/expression/operation/comparison/argument/number/register_

%Options la=3,ebnf
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

    line_list ::= line+

    line ::= opt_content EOL

    opt_content ::= $empty
                   | label
                   | comment
                   | statement

    label ::= ID

    comment ::= COMMENT

    statement ::= ifstatement
                 | tostatement
                 | gosubstatement
                 | gotostatement
                 | endsubstatement
                 | accumstatement

    accumstatement ::= accumexpression

    accumexpression ::= EQ statement
                       | HASH statement
                       | LT expression statement
                       | GT expression statement

    gosubstatement ::= GOSUB label

    gotostatement ::= GOTO label

    endsubstatement ::= ENDSUB

    tostatement ::= to_regs
                   | expression to_regs

    to_regs ::= TO register_
               | to_regs TO register_

    ifstatement ::= IF condition statement
                   | IF condition DOT statement
                   | IF condition COMMA statement
                   | IF condition EOL statement
                   | condition statement
                   | condition DOT statement
                   | condition COMMA statement
                   | condition EOL statement

    condition ::= expression comparison expression

    comparison ::= LT
                  | GT
                  | EQ
                  | HASH

    expression ::= unary (operation unary)*

    operation ::= PLUS
                 | MINUS
                 | STAR
                 | SLASH

    unary ::= argument
             | PLUS argument
             | MINUS argument

    argument ::= number
                | register_

    number ::= NUMBER
              | PLUS NUMBER
              | MINUS NUMBER

    register_ ::= R_A
                 | R_B
                 | R_C
                 | R_D
                 | R_E
                 | R_F
                 | R_G
                 | R_H
                 | R_I
                 | R_J
                 | R_K
                 | R_L
                 | R_M
                 | R_N
                 | R_O
                 | R_P
                 | R_Q
                 | R_R
                 | R_S
                 | R_T
                 | R_U
                 | R_V
                 | R_W
                 | R_X
                 | R_Y
                 | R_Z
                 | R_SPEEDX
                 | R_SPEEDY
                 | R_RANDOM
                 | R_DAMAGE
                 | R_RADAR
                 | R_INDEX
                 | R_SHOT
                 | R_DATA
                 | R_AIM
%End
