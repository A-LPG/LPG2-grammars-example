-- Lua Parser (LPG)
-- Ported from antlr/grammars-v4 lua for parse-level examples.
-- assign vs call unified via prefixexp (slightly permissive vs Lua).

%Options la=2
%Options fp=LuaParser
%options package=lpg.grammars.lua
%options template=dtParserTemplateF.gi
%options import_terminals=LuaLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    chunk
%End

%Rules
    chunk ::= block

    block ::= stat_list opt_retstat

    stat_list ::= $empty
                | stat_list stat

    opt_retstat ::= $empty
                  | retstat

    stat ::= SEMI
           | prefixexp EQ explist
           | prefixexp
           | label
           | BREAK
           | GOTO NAME
           | DO block END
           | WHILE exp DO block END
           | REPEAT block UNTIL exp
           | IF exp THEN block elseif_list opt_else END
           | FOR NAME EQ exp COMMA exp opt_for_step DO block END
           | FOR namelist IN explist DO block END
           | FUNCTION funcname funcbody
           | LOCAL FUNCTION NAME funcbody
           | LOCAL attnamelist opt_assign_explist

    elseif_list ::= $empty
                  | elseif_list ELSEIF exp THEN block

    opt_else ::= $empty
               | ELSE block

    opt_for_step ::= $empty
                   | COMMA exp

    opt_assign_explist ::= $empty
                         | EQ explist

    attnamelist ::= NAME attrib
                  | attnamelist COMMA NAME attrib

    attrib ::= $empty
             | LT NAME GT

    retstat ::= RETURN opt_explist opt_semi

    opt_explist ::= $empty
                  | explist

    opt_semi ::= $empty
               | SEMI

    label ::= CC NAME CC

    funcname ::= NAME funcname_tail

    funcname_tail ::= $empty
                    | funcname_tail DOT NAME
                    | COL NAME

    namelist ::= NAME
               | namelist COMMA NAME

    explist ::= exp
              | explist COMMA exp

    exp ::= or_exp

    or_exp ::= or_exp OR and_exp
             | and_exp
    and_exp ::= and_exp AND cmp_exp
              | cmp_exp
    cmp_exp ::= cmp_exp cmpop bit_exp
              | bit_exp
    bit_exp ::= bit_exp bitop concat_exp
              | concat_exp
    concat_exp ::= concat_exp DD add_exp
                 | add_exp
    add_exp ::= add_exp addop mul_exp
              | mul_exp
    mul_exp ::= mul_exp mulop unary_exp
              | unary_exp
    unary_exp ::= unop unary_exp
                | pow_exp
    pow_exp ::= primary CARET pow_exp
              | primary

    primary ::= NIL
              | FALSE
              | TRUE
              | number
              | string
              | DDD
              | functiondef
              | prefixexp
              | tableconstructor

    cmpop ::= LT | GT | LE | GE | SQEQ | EE
    bitop ::= AMP | PIPE | SQUIG | LL | GG
    addop ::= PLUS | MINUS
    mulop ::= STAR | SLASH | PER | SS
    unop ::= NOT | POUND | MINUS | SQUIG

    prefixexp ::= prefix_primary suffix_list

    prefix_primary ::= NAME
                     | OP exp CP

    suffix_list ::= $empty
                  | suffix_list suffix

    suffix ::= OB exp CB
             | DOT NAME
             | args
             | COL NAME args

    args ::= OP opt_explist CP
           | tableconstructor
           | string

    functiondef ::= FUNCTION funcbody

    funcbody ::= OP parlist CP block END

    parlist ::= $empty
              | namelist opt_dots
              | DDD

    opt_dots ::= $empty
               | COMMA DDD

    tableconstructor ::= OCU opt_fieldlist CCU

    opt_fieldlist ::= $empty
                    | fieldlist

    fieldlist ::= field fieldlist_tail opt_fieldsep

    fieldlist_tail ::= $empty
                     | fieldlist_tail fieldsep field

    opt_fieldsep ::= $empty
                   | fieldsep

    field ::= OB exp CB EQ exp
            | NAME EQ exp
            | exp

    fieldsep ::= COMMA | SEMI

    number ::= INT | HEX | FLOAT | HEX_FLOAT

    string ::= NORMALSTRING | CHARSTRING | LONGSTRING
%End
