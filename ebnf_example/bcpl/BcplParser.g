-- AUTO-GENERATED from antlr/grammars-v4 bcpl by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=BcplParser
%options package=lpg.grammars.bcpl
%options template=dtParserTemplateF.gi
%options import_terminals=BcplLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= listn0001 declaration_part_nt

    number ::= Octal_number
              | Hex_number
              | Digits
              | Binary_number

    identifier ::= IDENTIFIER

    name ::= identifier

    mult_op ::= STAR
               | SLASH
               | REM

    add_op ::= PLUS
              | MINUS

    shift_op ::= LSHIFT
                | RSHIFT

    and_op ::= AMP

    or_op ::= PIPE

    expression ::= NUMBER
                  | e0

    c_element ::= Character_constant
                 | number
                 | identifier
                 | KTRUE
                 | KFALSE
                 | LPAREN constant_expression RPAREN
                 | QUESTION

    c_mult_E ::= c_mult_E mult_op c_element
                | c_element

    c_add_E ::= c_add_E add_op c_mult_E
               | add_op c_mult_E
               | c_mult_E

    c_shift_E ::= c_shift_E shift_op c_add_E
                 | c_add_E

    c_and_E ::= c_and_E and_op c_shift_E
               | c_shift_E

    constant_expression ::= constant_expression or_op c_and_E
                           | c_and_E

    expression_list_nt ::= expression listn0003

    name_list_nt ::= name listn0005

    manifest_item ::= identifier optn0008

    manifest_list ::= manifest_item listn0010

    manifest_declaration ::= KMANIFEST OB manifest_list CB

    static_declaration ::= KSTATIC OB manifest_list CB

    global_item ::= identifier optn0012

    global_list ::= global_item listn0014

    global_declaration ::= KGLOBAL OB global_list CB

    simple_definition ::= name_list_nt grpn0015 expression_list_nt

    vector_definition ::= identifier grpn0016 VEC constant_expression

    function_definition ::= identifier LPAREN name_list_nt RPAREN grpn0017 expression
                           | identifier LPAREN RPAREN grpn0018 expression

    routine_definition ::= identifier LPAREN name_list_nt RPAREN KBE command
                          | identifier LPAREN RPAREN KBE command

    definition ::= simple_definition
                  | vector_definition
                  | function_definition
                  | routine_definition

    simultaneous_declaration ::= KLET definition listn0020

    declaration ::= simultaneous_declaration
                   | manifest_declaration
                   | static_declaration
                   | global_declaration

    lhse ::= e0

    left_hand_side_list ::= lhse listn0022

    assignment ::= left_hand_side_list assop expression_list_nt

    simple_command ::= KBREAK
                      | KLOOP
                      | KENDCASE
                      | RETURN
                      | FINISH

    goto_command ::= GOTO expression

    routine_command ::= bexp LPAREN expression_list_nt RPAREN
                       | bexp LPAREN RPAREN

    resultis_command ::= KRESULTIS expression

    switchon_command ::= SWITCHON expression KINTO compound_command

    repeatable_command ::= assignment
                          | simple_command
                          | goto_command
                          | routine_command
                          | resultis_command
                          | repeatable_command KREPEAT
                          | repeatable_command REPEATUNTIL expression
                          | repeatable_command REPEATWHILE expression
                          | switchon_command
                          | compound_command
                          | block

    repeated_command ::= repeatable_command KREPEAT
                        | repeatable_command REPEATUNTIL expression
                        | repeatable_command REPEATWHILE expression

    until_command ::= KUNTIL expression KDO command

    while_command ::= KWHILE expression KDO command

    for_command ::= KFOR identifier grpn0023 expression KTO expression optn0025 optn0026 command

    repetitive_command ::= repeated_command
                          | until_command
                          | while_command
                          | for_command
                          | unless_command

    test_command ::= TEST expression optn0028 command grpn0029 command

    if_command ::= KIF expression optn0031 command

    unless_command ::= KUNLESS expression optn0033 command

    unlabelled_command ::= repeatable_command
                          | repetitive_command
                          | test_command
                          | if_command

    label_prefix ::= identifier COLON

    case_prefix ::= KCASE constant_expression COLON

    default_prefix ::= KDEFAULT COLON

    prefix_ ::= label_prefix
               | case_prefix
               | default_prefix

    command ::= listn0034 unlabelled_command
               | prefix_ listn0035

    command_list_nt ::= command listn0037

    declaration_part_nt ::= declaration listn0039

    semi ::= listn0040
            | nl

    block ::= OB declaration_part_nt semi optn0041 CB

    compound_command ::= OB optn0042 CB

    directive ::= KGET STRING
                 | SECTION STRING

    fname ::= FLT identifier

    const ::= number
             | Character_constant
             | KTRUE
             | KFALSE
             | QUESTION

    bpat ::= PLUS number
            | MINUS number
            | KTRUE
            | KFALSE
            | QUESTION
            | Character_constant

    string ::= STRING

    relop ::= EQ
             | OP_8906
             | NE
             | LT
             | LTEQ
             | GT
             | GTEQ
             | OP_7439
             | OP_74286
             | OP_22565
             | OP_81771
             | OP_62176
             | OP_4105

    fcond ::= ARROW
             | OP_88084

    range ::= DOTDOT
             | OP_45196

    jcom ::= NEXT
            | EXIT
            | KBREAK
            | KLOOP
            | KENDCASE

    assop ::= COLONEQ
             | OP_40847
             | OP_80369
             | MOD__
             | OP_81177
             | OP_53860
             | OP_17622
             | OP_6982
             | OP_20575
             | OP_27804
             | OP_38414
             | OP_81145
             | OP_52139
             | OP_5914
             | OP_63166
             | EQV__
             | NEQV__
             | XOR__

    nonl ::= $empty

    mlist ::= listn0046 optn0047

    p0 ::= sp listn0049

    p1 ::= sp listn0051

    p2 ::= sp listn0052

    p3 ::= p2

    sp0nt ::= COMMA p1

    sp1nt ::= sp0nt
             | PIPE p2

    sp ::= relop grpn0053
          | jcom
          | LPAREN p0 RPAREN
          | LBRACKET p0 RBRACKET
          | bpat optn0055
          | fname

    bexp ::= name
            | const
            | string
            | SLCT e9 optn0059
            | NEXT
            | EXIT
            | KBREAK
            | KLOOP
            | KENDCASE
            | LPAREN e0 RPAREN
            | grpn0060 e7
            | grpn0061 e5
            | grpn0062 e3
            | TABLE e0 listn0064
            | grpn0065 LPAREN e0 listn0067 RPAREN mlist
            | KVALOF command

    se9 ::= LPAREN optn0071 RPAREN
           | OP_78812 e0 listn0073 RPAREN
           | LBRACKET e0 RBRACKET

    se8 ::= grpn0074 e8

    se6 ::= grpn0075 e6

    se5 ::= grpn0076 e4 listn0078
           | grpn0079 e5

    se4 ::= grpn0080 e4

    se3 ::= AMP e3

    se2 ::= PIPE e2

    se1 ::= grpn0081 e1
           | fcond e0 COMMA e0

    e9 ::= bexp

    e8 ::= bexp listn0083

    e7 ::= bexp listn0086

    e6 ::= bexp listn0089

    e5 ::= bexp listn0092

    e4 ::= bexp listn0095

    e3 ::= bexp listn0098

    e2 ::= bexp listn0101

    e1 ::= bexp listn0104

    e0 ::= bexp listn0107

    nl ::= $empty

    listn0001 ::= (listn0001 directive)?

    seqn0002 ::= COMMA expression

    listn0003 ::= (listn0003 seqn0002)?

    seqn0004 ::= COMMA name

    listn0005 ::= (listn0005 seqn0004)?

    grpn0007 ::= EQ

    grpn0006 ::= grpn0007 constant_expression

    optn0008 ::= grpn0006?

    seqn0009 ::= semi manifest_item

    listn0010 ::= (listn0010 seqn0009)?

    seqn0011 ::= COLON constant_expression

    optn0012 ::= seqn0011?

    seqn0013 ::= semi global_item

    listn0014 ::= (listn0014 seqn0013)?

    grpn0015 ::= EQ

    grpn0016 ::= EQ

    grpn0017 ::= EQ

    grpn0018 ::= EQ

    seqn0019 ::= KAND definition

    listn0020 ::= (listn0020 seqn0019)?

    seqn0021 ::= COMMA lhse

    listn0022 ::= (listn0022 seqn0021)?

    grpn0023 ::= EQ

    seqn0024 ::= BY constant_expression

    optn0025 ::= seqn0024?

    optn0026 ::= KDO?

    grpn0027 ::= THEN
                | KDO

    optn0028 ::= grpn0027?

    grpn0029 ::= ELSE
                | KOR

    grpn0030 ::= THEN
                | KDO

    optn0031 ::= grpn0030?

    grpn0032 ::= THEN
                | KDO

    optn0033 ::= grpn0032?

    listn0034 ::= (listn0034 prefix_)?

    listn0035 ::= (listn0035 prefix_)?

    seqn0036 ::= semi command

    listn0037 ::= (listn0037 seqn0036)?

    seqn0038 ::= semi declaration

    listn0039 ::= (listn0039 seqn0038)?

    listn0040 ::= SEMI+

    optn0041 ::= command_list_nt?

    optn0042 ::= command_list_nt?

    optn0044 ::= p0?

    grpn0045 ::= ARROW e0
                | KBE command

    grpn0043 ::= COLON optn0044 grpn0045

    listn0046 ::= grpn0043+

    optn0047 ::= DOT?

    grpn0048 ::= sp0nt
                | sp1nt
                | p3

    listn0049 ::= (listn0049 grpn0048)?

    grpn0050 ::= sp1nt
                | p3

    listn0051 ::= (listn0051 grpn0050)?

    listn0052 ::= (listn0052 p3)?

    grpn0053 ::= bpat
                | LPAREN e0 RPAREN

    seqn0054 ::= range bpat

    optn0055 ::= seqn0054?

    seqn0056 ::= COLON e9

    optn0057 ::= seqn0056?

    seqn0058 ::= COLON e9 optn0057

    optn0059 ::= seqn0058?

    grpn0060 ::= FLOAT
                | FIX
                | BANG
                | AT

    grpn0061 ::= PLUS
                | MINUS
                | ABS
                | OP_87477
                | OP_99460
                | EMPTY_LIT

    grpn0062 ::= NOT
                | TILDE

    seqn0063 ::= COMMA e0

    listn0064 ::= (listn0064 seqn0063)?

    grpn0065 ::= MATCH
                | EVERY

    seqn0066 ::= COMMA e0

    listn0067 ::= (listn0067 seqn0066)?

    seqn0068 ::= COMMA e0

    listn0069 ::= (listn0069 seqn0068)?

    seqn0070 ::= e0 listn0069

    optn0071 ::= seqn0070?

    seqn0072 ::= COMMA e0

    listn0073 ::= (listn0073 seqn0072)?

    grpn0074 ::= OF
                | COLONCOLON
                | BANG
                | PERCENT

    grpn0075 ::= STAR
                | SLASH
                | MOD
                | OP_88198
                | EMPTY_LIT
                | REM

    grpn0076 ::= EQ
                | OP_8906
                | NE
                | LT
                | LTEQ
                | GT
                | GTEQ
                | OP_7439
                | OP_74286
                | OP_22565
                | OP_81771
                | OP_62176
                | OP_4105

    seqn0077 ::= relop e4

    listn0078 ::= (listn0078 seqn0077)?

    grpn0079 ::= PLUS
                | MINUS
                | OP_87477
                | OP_99460

    grpn0080 ::= LSHIFT
                | RSHIFT

    grpn0081 ::= EQV
                | XOR
                | NEQV

    seqn0082 ::= nonl se9

    listn0083 ::= (listn0083 seqn0082)?

    grpn0085 ::= se9
                | se8

    grpn0084 ::= nonl grpn0085

    listn0086 ::= (listn0086 grpn0084)?

    grpn0088 ::= se9
                | se8

    grpn0087 ::= nonl grpn0088

    listn0089 ::= (listn0089 grpn0087)?

    grpn0091 ::= se9
                | se8
                | se6

    grpn0090 ::= nonl grpn0091

    listn0092 ::= (listn0092 grpn0090)?

    grpn0094 ::= se9
                | se8
                | se6
                | se5

    grpn0093 ::= nonl grpn0094

    listn0095 ::= (listn0095 grpn0093)?

    grpn0097 ::= se9
                | se8
                | se6
                | se5
                | se4

    grpn0096 ::= nonl grpn0097

    listn0098 ::= (listn0098 grpn0096)?

    grpn0100 ::= se9
                | se8
                | se6
                | se5
                | se4
                | se3

    grpn0099 ::= nonl grpn0100

    listn0101 ::= (listn0101 grpn0099)?

    grpn0103 ::= se9
                | se8
                | se6
                | se5
                | se4
                | se3
                | se2

    grpn0102 ::= nonl grpn0103

    listn0104 ::= (listn0104 grpn0102)?

    grpn0106 ::= se9
                | se8
                | se6
                | se5
                | se4
                | se3
                | se2
                | se1

    grpn0105 ::= nonl grpn0106

    listn0107 ::= (listn0107 grpn0105)?
%End
