-- AUTO-GENERATED from antlr/grammars-v4 pcre by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=PcreParser
%options package=lpg.grammars.pcre
%options template=dtParserTemplateF.gi
%options import_terminals=PcreLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    pcre
%End

%Rules
    pcre ::= opt_1

    alternation ::= expr list_4

    expr ::= list_5

    element ::= atom opt_6

    atom ::= option_setting
           | backtracking_control
           | callout
           | capture
           | atomic_group
           | lookaround
           | backreference
           | subroutine_reference
           | conditional_pattern
           | comment
           | character
           | character_type
           | character_class
           | posix_character_class
           | letter
           | digit
           | anchor
           | match_point_reset
           | quoting
           | other

    capture ::= LPAREN grp_7 RPAREN

    atomic_group ::= LPAREN QUESTION GT alternation RPAREN

    lookaround ::= LPAREN QUESTION grp_15 alternation RPAREN

    backreference ::= BACKSLASH grp_16
           | LPAREN QUESTION P EQ name RPAREN

    subroutine_reference ::= LPAREN QUESTION grp_18 RPAREN
           | BACKSLASH G grp_21

    conditional_pattern ::= LPAREN QUESTION grp_26 expr opt_32 RPAREN

    comment ::= LPAREN QUESTION HASH list_33 RPAREN

    quantifier ::= grp_34 opt_36
           | LBRACE digits opt_39 RBRACE opt_41

    option_setting ::= LPAREN grp_42 RPAREN

    option_setting_flag ::= I
           | J
           | M
           | S
           | U
           | X

    backtracking_control ::= LPAREN STAR grp_52 RPAREN

    callout ::= LPAREN QUESTION C opt_60 RPAREN

    newline_conventions ::= cr
           | lf
           | crlf
           | anycrlf
           | any

    character ::= BACKSLASH grp_61

    character_type ::= DOT
           | BACKSLASH grp_69

    character_class ::= LBRACKET opt_74 RBRACKET list_75 RBRACKET
           | LBRACKET opt_76 list_77 RBRACKET

    character_class_atom ::= character_class_range
           | posix_character_class
           | character
           | character_type
           | BACKSLASH
           | grp_78

    character_class_range ::= character_class_range_atom MINUS character_class_range_atom

    character_class_range_atom ::= character
           | BACKSLASH
           | grp_79

    posix_character_class ::= OP_94308 opt_80 letters OP_85042

    anchor ::= BACKSLASH grp_8x1
           | CARET
           | DOLLAR

    match_point_reset ::= BACKSLASH K

    quoting ::= BACKSLASH grp_8x2

    digits ::= list_83

    digit ::= D0
           | D1
           | D2
           | D3
           | D4
           | D5
           | D6
           | D7
           | D8
           | D9

    hex ::= digit
           | A
           | B
           | C
           | D
           | E
           | F

    letters ::= list_84

    letter ::= A
           | B
           | C
           | D
           | E
           | F
           | G
           | H
           | I
           | J
           | K
           | L
           | M
           | N
           | O
           | P
           | Q
           | R
           | S
           | T
           | U
           | V
           | W
           | X
           | Y
           | Z
           | UNDERSCORE

    name ::= letter list_86

    other ::= RBRACE
           | RBRACKET
           | COMMA
           | MINUS
           | UNDERSCORE
           | EQ
           | AMP
           | LT
           | GT
           | SQUOTE
           | COLON
           | HASH
           | BANG
           | OTHER

    utf ::= U T F

    ucp ::= U C P

    no_auto_possess ::= N O UNDERSCORE A U T O UNDERSCORE P O S S E S S

    no_start_opt ::= N O UNDERSCORE S T A R T UNDERSCORE O P T

    cr ::= C R

    lf ::= L F

    crlf ::= C R L F

    anycrlf ::= A N Y C R L F

    any ::= A N Y

    limit_match ::= L I M I T UNDERSCORE M A T C H

    limit_recursion ::= L I M I T UNDERSCORE R E C U R S I O N

    bsr_anycrlf ::= B S R UNDERSCORE A N Y C R L F

    bsr_unicode ::= B S R UNDERSCORE U N I C O D E

    accept_ ::= A C C E P T

    fail ::= F opt_88

    mark ::= M A R K

    commit ::= C O M M I T

    prune ::= P R U N E

    skip ::= S K I P

    then ::= T H E N

    opt_1 ::= alternation | $empty

    opt_3 ::= expr | $empty

    grp_2 ::= PIPE opt_3

    list_4 ::= $empty | list_4 grp_2

    list_5 ::= element | list_5 element

    opt_6 ::= quantifier | $empty

    list_9 ::= option_setting_flag | list_9 option_setting_flag

    list_10 ::= option_setting_flag | list_10 option_setting_flag

    seq_11 ::= MINUS list_10

    opt_12 ::= seq_11 | $empty

    seq_13 ::= list_9 opt_12

    opt_14 ::= seq_13 | $empty

    grp_8 ::= LT name GT alternation | SQUOTE name SQUOTE alternation | P LT name GT alternation | opt_14 COLON alternation | PIPE alternation

    grp_7 ::= alternation | QUESTION grp_8

    grp_15 ::= EQ | BANG | LT EQ | LT BANG

    opt_17 ::= MINUS | $empty

    grp_16 ::= G digits | G LBRACE opt_17 digits RBRACE | G LBRACE name RBRACE | K LT name GT | K SQUOTE name SQUOTE | K LBRACE name RBRACE

    grp_19 ::= PLUS | MINUS

    opt_20 ::= grp_19 | $empty

    grp_18 ::= R | opt_20 digits | AMP name | P GT name

    grp_22 ::= PLUS | MINUS

    opt_23 ::= grp_22 | $empty

    grp_24 ::= PLUS | MINUS

    opt_25 ::= grp_24 | $empty

    grp_21 ::= LT name GT | SQUOTE name SQUOTE | LT opt_23 digits GT | SQUOTE opt_25 digits SQUOTE

    grp_28 ::= PLUS | MINUS

    opt_29 ::= grp_28 | $empty

    opt_30 ::= digits | $empty

    grp_27 ::= opt_29 digits | LT name GT | SQUOTE name SQUOTE | R opt_30 | R AMP name | name

    grp_26 ::= LPAREN grp_27 RPAREN | callout | lookaround

    grp_31 ::= PIPE expr

    opt_32 ::= grp_31 | $empty

    list_33 ::= RPAREN | list_33 RPAREN

    grp_34 ::= QUESTION | STAR | PLUS

    grp_35 ::= PLUS | QUESTION

    opt_36 ::= grp_35 | $empty

    opt_37 ::= digits | $empty

    seq_38 ::= COMMA opt_37

    opt_39 ::= seq_38 | $empty

    grp_40 ::= PLUS | QUESTION

    opt_41 ::= grp_40 | $empty

    grp_44 ::= T_8 | T_1 T_6 | T_3 T_2

    opt_45 ::= grp_44 | $empty

    grp_43 ::= utf opt_45 | ucp | no_auto_possess | no_start_opt | newline_conventions | limit_match EQ digits | limit_recursion EQ digits | bsr_anycrlf | bsr_unicode

    list_47 ::= option_setting_flag | list_47 option_setting_flag

    list_48 ::= option_setting_flag | list_48 option_setting_flag

    seq_49 ::= MINUS list_48

    opt_50 ::= seq_49 | $empty

    list_51x ::= option_setting_flag | list_51x option_setting_flag

    grp_46 ::= list_47 opt_50 | MINUS list_51x

    grp_42 ::= STAR grp_43 | QUESTION grp_46

    opt_53 ::= mark | $empty

    seq_54 ::= COLON name

    opt_55 ::= seq_54 | $empty

    seq_56 ::= COLON name

    opt_57 ::= seq_56 | $empty

    seq_58 ::= COLON name

    opt_59 ::= seq_58 | $empty

    grp_52 ::= accept_ | fail | opt_53 COLON name | commit | prune opt_55 | skip opt_57 | then opt_59

    opt_60 ::= digits | $empty

    opt_62 ::= digit | $empty

    seq_63 ::= digit opt_62

    opt_64 ::= seq_63 | $empty

    list_65 ::= digit | list_65 digit

    list_66 ::= hex | list_66 hex

    seq_67 ::= hex hex hex hex

    opt_68 ::= seq_67 | $empty

    grp_61 ::= A | C | E | F | N | R | T | digit opt_64 | O LBRACE digit digit list_65 RBRACE | X hex hex | X LBRACE hex hex list_66 RBRACE | U hex hex hex hex opt_68

    opt_70 ::= CARET | $empty

    opt_71 ::= AMP | $empty

    opt_72 ::= AMP | $empty

    opt_73 ::= letter | $empty

    grp_69 ::= C | D | H | N | P LBRACE opt_70 name opt_71 RBRACE | P LBRACE name opt_72 RBRACE | P letter opt_73 | R | S | V | W | X

    opt_74 ::= CARET | $empty

    list_75 ::= $empty | list_75 character_class_atom

    opt_76 ::= CARET | $empty

    list_77 ::= character_class_atom | list_77 character_class_atom

    grp_78 ::= BACKSLASH | RBRACKET

    grp_79 ::= RBRACKET | BACKSLASH

    opt_80 ::= CARET | $empty

    grp_8x1 ::= B | A | Z | G

    grp_8x2 ::= Q BACKSLASH E

    list_83 ::= digit | list_83 digit

    list_84 ::= letter | list_84 letter

    grp_8x5 ::= letter | digit

    list_86 ::= $empty | list_86 grp_8x5

    seq_87 ::= A I L

    opt_88 ::= seq_87 | $empty

%End
