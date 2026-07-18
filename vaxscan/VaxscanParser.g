-- AUTO-GENERATED from antlr/grammars-v4 vaxscan by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=VaxscanParser
%options package=lpg.grammars.vaxscan
%options template=dtParserTemplateF.gi
%options import_terminals=VaxscanLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    smoke_module ::= MODULE id SEMI END MODULE SEMI

    program ::= smoke_module
           | MODULE id opt_ident module_statement_list_nt end_module SEMI

    opt_ident ::= SEMI
           | $empty
           | IDENTIFIER ident_string SEMI

    ident_string ::= CHARACTER_LITERAL

    end_module ::= END MODULE

    module_statement_list_nt ::= $empty
           | module_statement_list_nt module_statement SEMI

    module_statement ::= declaration
           | set_declaration
           | token_declaration
           | group_declaration
           | procedure_declaration
           | macro_declaration
           | directive
           | collate_directive
           | redefine_directive

    body ::= optn0001

    statement_list_nt ::= statement
           | statement_list_nt statement

    statement ::= executable SEMI
           | declaration SEMI
           | procedure_declaration SEMI
           | macro_declaration SEMI
           | directive SEMI

    directive ::= include_directive
           | list_directive

    collate_directive ::= COLLATE collate_seq

    collate_seq ::= NATIVE
           | ASCII
           | EBCDIC
           | DEC_MULTI
           | USER user_seq

    user_seq ::= seq1
           | user_seq alt_ seq1

    alt_ ::= PIPE
           | SLASH

    seq1 ::= seq2
           | seq1 seq2

    seq2 ::= id
           | string_literal
           | string_literal DOTDOT string_literal
           | LBRACE user_seq RBRACE

    redefine_directive ::= REDEFINE redefined_char EQ ctrl_char_literal

    redefined_char ::= SCAN_LITERAL

    include_directive ::= INCLUDE FILE exp

    list_directive ::= LIST ON
           | LIST OFF
           | LIST PAGE
           | LIST TITLE exp

    declaration ::= constant_declaration
           | variable_declaration
           | type_declaration
           | procedure_form_decl

    constant_declaration ::= CONSTANT id constant_type

    constant_type ::= EQ exp
           | EXTERNAL type_dec
           | GLOBAL EQ exp

    set_declaration ::= SET id LPAREN set_exp RPAREN

    set_exp ::= set_term
           | set_exp OR set_term

    set_term ::= set_primary
           | set_term AND set_primary

    set_primary ::= set_item
           | NOT set_item

    set_item ::= id
           | string_literal
           | string_literal DOTDOT string_literal
           | LPAREN set_exp RPAREN

    string_literal ::= CHARACTER_LITERAL
           | ctrl_char_literal
           | SCAN_LITERAL

    ctrl_char_literal ::= NUL
           | SOH
           | STX
           | ETX
           | EOT
           | ENQ
           | ACK
           | BEL
           | BS
           | HT
           | LF
           | VT
           | FF
           | CR
           | SO
           | SI
           | DLE
           | DC1
           | DC2
           | DC3
           | DC4
           | NAK
           | SYN
           | ETB
           | CAN
           | EM
           | SUB
           | ESC
           | FS
           | GS
           | RS
           | US
           | DEL
           | IND
           | NEL
           | SSA
           | ESA
           | HTS
           | HTJ
           | VTS
           | PID
           | PLU
           | RI
           | SS2
           | SS3
           | DCS
           | PU1
           | PU2
           | STS
           | CCH
           | MW
           | SPA
           | EPA
           | CSI
           | ST
           | OSC
           | PM
           | APC

    token_declaration ::= TOKEN id token_attrs LBRACE token_exp RBRACE

    token_attrs ::= optn0002

    token_attr_list_nt ::= token_attr
           | token_attr_list_nt token_attr

    token_attr ::= CASELESS
           | IGNORE
           | ALIAS CHARACTER_LITERAL

    token_exp ::= token_exp1_nt
           | token_exp alt_ token_exp1_nt

    token_exp1_nt ::= token_exp2_nt
           | token_exp1_nt token_exp2_nt

    token_exp2_nt ::= token_exp3_nt
           | token_exp3_nt ELLIPSIS

    token_exp3_nt ::= string_literal
           | id
           | LBRACKET token_exp RBRACKET
           | LBRACE token_exp RBRACE

    group_declaration ::= GROUP id LPAREN group_exp RPAREN

    group_exp ::= group_term
           | group_exp OR group_term

    group_term ::= group_primary
           | group_term AND group_primary

    group_primary ::= group_item
           | NOT group_item

    group_item ::= id
           | token_alias
           | LPAREN group_exp RPAREN

    token_alias ::= CHARACTER_LITERAL

    macro_declaration ::= MACRO id macro_type opt_macro_attrs LBRACE opt_picture RBRACE SEMI body END MACRO

    macro_type ::= TRIGGER
           | SYNTAX

    opt_macro_attrs ::= optn0003

    opt_picture ::= optn0004

    picture ::= pic1
           | picture alt_ pic1

    pic1 ::= pic2
           | pic2 BACKSLASH pic2

    pic2 ::= pic3
           | pic2 pic3

    pic3 ::= pic4
           | pic4 ELLIPSIS

    pic4 ::= macro_item
           | id COLON macro_item
           | id COMMA name_list COLON macro_item
           | no_symbol COMMA name_list COLON macro_item

    no_symbol ::= STAR

    macro_item ::= id
           | id LPAREN optn0005 RPAREN
           | token_alias
           | LBRACKET picture RBRACKET
           | LBRACE picture RBRACE

    type_declaration ::= TYPE id COLON type_dec

    variable_declaration ::= DECLARE name_list COLON optn0006 type_dec

    name_list ::= pic_id
           | name_list COMMA pic_id

    pic_id ::= STAR
           | id

    opt_storage_attr ::= STATIC
           | AUTOMATIC
           | COMMON
           | GLOBAL
           | EXTERNAL

    common_type_dec ::= INTEGER
           | VARYING STRING length
           | STRING length
           | FIXED STRING length
           | BOOLEAN
           | FILL length
           | POINTER TO type_dec
           | TREEPTR LPAREN level_type RPAREN TO type_dec
           | record_keyword component_list_nt END RECORD
           | overlay_keyword component_list_nt END OVERLAY
           | user_defined_type

    type_dec ::= common_type_dec
           | STRING
           | FILE
           | DYNAMIC STRING
           | TREE LPAREN level_types RPAREN OF type_dec

    user_defined_type ::= IDENTIFIER
           | NATIVE
           | ASCII
           | EBCDIC
           | DEC_MULTI
           | USER
           | TITLE
           | ON
           | OFF
           | PAGE
           | OF
           | EXPOSE
           | MAIN
           | CASELESS
           | ALIAS
           | SYNTAX
           | INPUT
           | OUTPUT
           | DATA
           | STACK
           | WIDTH

    length ::= LPAREN int_ct_exp RPAREN

    level_types ::= level_type
           | level_types COMMA level_type

    level_type ::= STRING
           | INTEGER

    record_keyword ::= RECORD

    overlay_keyword ::= OVERLAY

    component_list_nt ::= component
           | component_list_nt component

    component ::= id COLON common_type_dec COMMA

    procedure_form_decl ::= proc_name optn0007 optn0008

    proc_name ::= EXTERNAL PROCEDURE id
           | FORWARD PROCEDURE id

    opt_formal_list ::= LPAREN optn0009 RPAREN

    formal_list_nt ::= formal
           | formal_list_nt COMMA formal

    formal ::= optn0010 type_dec

    opt_passing_mech ::= VALUE
           | REFERENCE
           | DESCRIPTOR

    opt_result ::= OF type_dec

    procedure_declaration ::= proc_start optn0011 optn0012 SEMI body END PROCEDURE

    proc_start ::= PROCEDURE id optn0013

    opt_proc_attr ::= MAIN

    opt_parameter_list ::= LPAREN optn0014 RPAREN

    parameter_list_nt ::= parameter
           | parameter_list_nt COMMA parameter

    parameter ::= id COLON optn0015 type_dec

    executable ::= keyword_statement
           | $empty
           | label COLON executable
           | variable_ref EQ exp

    label ::= id

    executable_list_nt ::= executable SEMI
           | directive SEMI
           | executable_list_nt executable SEMI

    keyword_statement ::= if_statement
           | for_statement
           | while_statement
           | call_statement
           | read_statement
           | write_statement
           | open_statement
           | close_statement
           | goto_statement
           | case_statement
           | return_statement
           | stop_scan_statement
           | answer_statement
           | fail_statement
           | start_scan_statement
           | prune_statement
           | allocate_statement
           | free_statement

    if_statement ::= IF exp THEN optn0016 opt_else_statement END IF

    opt_else_statement ::= $empty
           | ELSE optn0017

    for_statement ::= start_for_loop SEMI optn0018 END FOR

    start_for_loop ::= FOR id EQ exp TO exp optn0020

    while_statement ::= WHILE exp SEMI optn0021 END WHILE

    call_statement ::= CALL id optn0022

    argument_list ::= LPAREN optn0023 RPAREN

    arg_list_nt ::= arg
           | arg_list_nt COMMA arg

    arg ::= exp
           | STAR

    exp_list_nt ::= exp
           | exp_list_nt COMMA exp

    open_statement ::= OPEN file_ref AS exp open_type

    file_ref ::= FILE LPAREN variable_ref RPAREN

    close_statement ::= CLOSE file_ref

    open_type ::= FOR OUTPUT
           | FOR INPUT

    read_statement ::= READ optn0024 optn0025 variable_ref

    prompt ::= PROMPT LPAREN exp RPAREN

    write_statement ::= WRITE optn0026 optn0027

    goto_statement ::= GOTO id

    case_statement ::= start_case SEMI case_list END CASE

    start_case ::= CASE exp FROM int_ct_exp TO int_ct_exp

    case_list ::= case_item
           | case_list case_item

    case_item ::= LBRACKET case_exp_list_nt RBRACKET COLON optn0028

    case_exp_list_nt ::= case_exp
           | case_exp_list_nt COMMA case_exp

    case_exp ::= INRANGE
           | OUTRANGE
           | int_ct_exp
           | int_ct_exp DOTDOT int_ct_exp

    return_statement ::= RETURN optn0029

    answer_statement ::= ANSWER optn0030 exp_list_nt

    trigger ::= TRIGGER

    fail_statement ::= FAIL

    prune_statement ::= PRUNE prune_list

    allocate_statement ::= ALLOCATE alloc_ptr_list

    alloc_ptr_list ::= variable_ref
           | alloc_ptr_list COMMA variable_ref

    free_statement ::= FREE free_ptr_list

    free_ptr_list ::= variable_ref
           | free_ptr_list COMMA variable_ref

    prune_list ::= exp
           | prune_list COMMA exp

    start_scan_statement ::= START SCAN optn0031

    scan_attr_list_nt ::= scan_attr
           | scan_attr_list_nt scan_attr

    scan_attr ::= INPUT FILE exp
           | INPUT STRING exp
           | INPUT PROCEDURE id
           | INPUT WIDTH exp
           | OUTPUT FILE exp
           | OUTPUT STRING variable_ref
           | OUTPUT PROCEDURE id
           | OUTPUT WIDTH exp
           | DATA STACK exp

    stop_scan_statement ::= STOP SCAN

    exp ::= exp1_nt
           | exp OR exp1_nt
           | exp XOR exp1_nt

    exp1_nt ::= exp2_nt
           | exp1_nt AND exp2_nt

    exp2_nt ::= exp3_nt
           | NOT exp2_nt

    exp3_nt ::= exp4_nt
           | exp3_nt EQ exp4_nt
           | exp3_nt EQEQ exp4_nt
           | exp3_nt LTGT exp4_nt
           | exp3_nt OP_70025 exp4_nt
           | exp3_nt LT exp4_nt
           | exp3_nt LTEQ exp4_nt
           | exp3_nt OP_74066 exp4_nt
           | exp3_nt GTEQ exp4_nt
           | exp3_nt FATARROW exp4_nt
           | exp3_nt GT exp4_nt

    exp4_nt ::= exp5_nt
           | exp4_nt AMP exp5_nt

    exp5_nt ::= exp6_nt
           | exp5_nt PLUS exp6_nt
           | exp5_nt MINUS exp6_nt

    exp6_nt ::= exp7_nt
           | exp6_nt STAR exp7_nt
           | exp6_nt SLASH exp7_nt

    exp7_nt ::= exp8_nt
           | MINUS exp7_nt
           | PLUS exp7_nt

    exp8_nt ::= exp9_nt
           | exp9_nt LBRACKET part_ref

    part_ref ::= exp rest_of_part_ref

    rest_of_part_ref ::= RBRACKET
           | DOTDOT RBRACKET
           | DOTDOT exp RBRACKET

    exp9_nt ::= INTEGER_LITERAL
           | string_literal
           | NIL
           | TRUE
           | FALSE
           | ref
           | LPAREN exp RPAREN

    var_ref ::= write_id
           | var_ref argument_list
           | var_ref DOT write_id
           | var_ref ARROW

    write_id ::= id

    ref ::= id
           | ref argument_list
           | ref DOT id
           | ref ARROW

    variable_ref ::= var_ref optn0032

    opt_part_ref ::= LBRACKET part_ref

    int_ct_exp ::= exp

    id ::= IDENTIFIER
           | NATIVE
           | ASCII
           | EBCDIC
           | DEC_MULTI
           | USER
           | TITLE
           | ON
           | OFF
           | PAGE
           | OF
           | TREE
           | RECORD
           | OVERLAY
           | INTEGER
           | STRING
           | BOOLEAN
           | POINTER
           | TREEPTR
           | FILL
           | VARYING
           | FIXED
           | DYNAMIC
           | COMMON
           | STATIC
           | AUTOMATIC
           | GLOBAL
           | EXPOSE
           | MAIN
           | CASELESS
           | ALIAS
           | VALUE
           | REFERENCE
           | DESCRIPTOR
           | SYNTAX
           | INPUT
           | OUTPUT
           | DATA
           | STACK
           | AS
           | IGNORE
           | WIDTH

    optn0001 ::= statement_list_nt
           | $empty

    optn0002 ::= token_attr_list_nt
           | $empty

    optn0003 ::= EXPOSE
           | $empty

    optn0004 ::= picture
           | $empty

    optn0005 ::= exp_list_nt
           | $empty

    optn0006 ::= opt_storage_attr
           | $empty

    optn0007 ::= opt_formal_list
           | $empty

    optn0008 ::= opt_result
           | $empty

    optn0009 ::= formal_list_nt
           | $empty

    optn0010 ::= opt_passing_mech
           | $empty

    optn0011 ::= opt_parameter_list
           | $empty

    optn0012 ::= opt_result
           | $empty

    optn0013 ::= opt_proc_attr
           | $empty

    optn0014 ::= parameter_list_nt
           | $empty

    optn0015 ::= opt_passing_mech
           | $empty

    optn0016 ::= executable_list_nt
           | $empty

    optn0017 ::= executable_list_nt
           | $empty

    optn0018 ::= executable_list_nt
           | $empty

    seqn0019 ::= STEP exp

    optn0020 ::= seqn0019
           | $empty

    optn0021 ::= executable_list_nt
           | $empty

    optn0022 ::= argument_list
           | $empty

    optn0023 ::= arg_list_nt
           | $empty

    optn0024 ::= file_ref
           | $empty

    optn0025 ::= prompt
           | $empty

    optn0026 ::= file_ref
           | $empty

    optn0027 ::= exp_list_nt
           | $empty

    optn0028 ::= executable_list_nt
           | $empty

    optn0029 ::= exp
           | $empty

    optn0030 ::= trigger
           | $empty

    optn0031 ::= scan_attr_list_nt
           | $empty

    optn0032 ::= opt_part_ref
           | $empty

%End
