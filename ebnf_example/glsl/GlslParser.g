-- AUTO-GENERATED from antlr/grammars-v4 glsl by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=GlslParser
%options package=lpg.grammars.glsl
%options template=dtParserTemplateF.gi
%options import_terminals=GlslLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    translation_unit
%End

%Rules
    translation_unit ::= list_1

    variable_identifier ::= IDENTIFIER

    primary_expression ::= variable_identifier
                          | TRUE
                          | FALSE
                          | NUMBER
                          | LPAREN expression RPAREN

    postfix_expression ::= primary_expression
                          | postfix_expression LBRACKET integer_expression RBRACKET
                          | postfix_expression LPAREN opt_2 RPAREN
                          | type_specifier LPAREN opt_3 RPAREN
                          | postfix_expression DOT field_selection
                          | postfix_expression PLUSPLUS
                          | postfix_expression MINUSMINUS

    field_selection ::= variable_identifier
                       | function_call

    integer_expression ::= expression

    function_call ::= function_identifier LPAREN opt_4 RPAREN

    function_identifier ::= type_specifier
                           | postfix_expression

    function_call_parameters ::= assignment_expression list_6
                                | VOID

    unary_expression ::= postfix_expression
                        | PLUSPLUS unary_expression
                        | MINUSMINUS unary_expression
                        | unary_operator unary_expression

    unary_operator ::= PLUS
                      | MINUS
                      | BANG
                      | TILDE

    assignment_expression ::= constant_expression
                             | unary_expression assignment_operator assignment_expression

    assignment_operator ::= EQ
                           | STAREQ
                           | SLASHEQ
                           | PERCENTEQ
                           | PLUSEQ
                           | MINUSEQ
                           | LSHIFTEQ
                           | RSHIFTEQ
                           | AMPEQ
                           | CARETEQ
                           | PIPEEQ

    binary_expression ::= unary_expression
                         | binary_expression grp_7 binary_expression
                         | binary_expression grp_8 binary_expression
                         | binary_expression grp_9 binary_expression
                         | binary_expression grp_10 binary_expression
                         | binary_expression grp_11 binary_expression
                         | binary_expression AMP binary_expression
                         | binary_expression CARET binary_expression
                         | binary_expression VERTICAL_BAR binary_expression
                         | binary_expression ANDAND binary_expression
                         | binary_expression OROR binary_expression

    expression ::= assignment_expression (COMMA assignment_expression)*

    constant_expression ::= binary_expression
                           | binary_expression QUESTION expression COLON assignment_expression

    declaration ::= function_prototype SEMI
                   | init_declarator_list SEMI
                   | PRECISION precision_qualifier type_specifier SEMI
                   | type_qualifier IDENTIFIER LBRACE struct_declaration_list RBRACE opt_14 SEMI
                   | type_qualifier opt_15 SEMI

    identifier_list ::= IDENTIFIER list_17

    function_prototype ::= fully_specified_type IDENTIFIER LPAREN opt_18 RPAREN

    function_parameters ::= parameter_declaration list_20

    parameter_declarator ::= type_specifier IDENTIFIER opt_21

    parameter_declaration ::= type_qualifier grp_22
                             | parameter_declarator
                             | parameter_type_specifier

    parameter_type_specifier ::= type_specifier

    init_declarator_list ::= single_declaration list_24

    single_declaration ::= fully_specified_type opt_25

    typeless_declaration ::= IDENTIFIER opt_26 opt_28

    fully_specified_type ::= type_specifier
                            | type_qualifier type_specifier

    invariant_qualifier ::= INVARIANT

    interpolation_qualifier ::= SMOOTH
                               | FLAT
                               | NOPERSPECTIVE

    layout_qualifier ::= LAYOUT LPAREN layout_qualifier_id_list RPAREN

    layout_qualifier_id_list ::= layout_qualifier_id list_30

    layout_qualifier_id ::= IDENTIFIER opt_32
                           | SHARED

    precise_qualifier ::= PRECISE

    type_qualifier ::= list_33

    single_type_qualifier ::= storage_qualifier
                             | layout_qualifier
                             | precision_qualifier
                             | interpolation_qualifier
                             | invariant_qualifier
                             | precise_qualifier

    storage_qualifier ::= CONST
                         | IN
                         | OUT
                         | INOUT
                         | CENTROID
                         | PATCH
                         | SAMPLE
                         | UNIFORM
                         | BUFFER
                         | SHARED
                         | COHERENT
                         | VOLATILE
                         | RESTRICT
                         | READONLY
                         | WRITEONLY
                         | SUBROUTINE opt_35
                         | ATTRIBUTE
                         | VARYING

    type_name_list ::= type_name list_37

    type_name ::= IDENTIFIER

    type_specifier ::= type_specifier_nonarray opt_38

    array_specifier ::= list_39

    dimension ::= LBRACKET opt_40 RBRACKET

    type_specifier_nonarray ::= VOID
                               | FLOAT
                               | DOUBLE
                               | INT
                               | UINT
                               | BOOL
                               | VEC2
                               | VEC3
                               | VEC4
                               | DVEC2
                               | DVEC3
                               | DVEC4
                               | BVEC2
                               | BVEC3
                               | BVEC4
                               | IVEC2
                               | IVEC3
                               | IVEC4
                               | UVEC2
                               | UVEC3
                               | UVEC4
                               | MAT2
                               | MAT3
                               | MAT4
                               | MAT2X2
                               | MAT2X3
                               | MAT2X4
                               | MAT3X2
                               | MAT3X3
                               | MAT3X4
                               | MAT4X2
                               | MAT4X3
                               | MAT4X4
                               | DMAT2
                               | DMAT3
                               | DMAT4
                               | DMAT2X2
                               | DMAT2X3
                               | DMAT2X4
                               | DMAT3X2
                               | DMAT3X3
                               | DMAT3X4
                               | DMAT4X2
                               | DMAT4X3
                               | DMAT4X4
                               | ATOMIC_UINT
                               | SAMPLER2D
                               | SAMPLER3D
                               | SAMPLERCUBE
                               | SAMPLER2DSHADOW
                               | SAMPLERCUBESHADOW
                               | SAMPLER2DARRAY
                               | SAMPLER2DARRAYSHADOW
                               | SAMPLERCUBEARRAY
                               | SAMPLERCUBEARRAYSHADOW
                               | ISAMPLER2D
                               | ISAMPLER3D
                               | ISAMPLERCUBE
                               | ISAMPLER2DARRAY
                               | ISAMPLERCUBEARRAY
                               | USAMPLER2D
                               | USAMPLER3D
                               | USAMPLERCUBE
                               | USAMPLER2DARRAY
                               | USAMPLERCUBEARRAY
                               | SAMPLER1D
                               | SAMPLER1DSHADOW
                               | SAMPLER1DARRAY
                               | SAMPLER1DARRAYSHADOW
                               | ISAMPLER1D
                               | ISAMPLER1DARRAY
                               | USAMPLER1D
                               | USAMPLER1DARRAY
                               | SAMPLER2DRECT
                               | SAMPLER2DRECTSHADOW
                               | ISAMPLER2DRECT
                               | USAMPLER2DRECT
                               | SAMPLERBUFFER
                               | ISAMPLERBUFFER
                               | USAMPLERBUFFER
                               | SAMPLER2DMS
                               | ISAMPLER2DMS
                               | USAMPLER2DMS
                               | SAMPLER2DMSARRAY
                               | ISAMPLER2DMSARRAY
                               | USAMPLER2DMSARRAY
                               | IMAGE2D
                               | IIMAGE2D
                               | UIMAGE2D
                               | IMAGE3D
                               | IIMAGE3D
                               | UIMAGE3D
                               | IMAGECUBE
                               | IIMAGECUBE
                               | UIMAGECUBE
                               | IMAGEBUFFER
                               | IIMAGEBUFFER
                               | UIMAGEBUFFER
                               | IMAGE1D
                               | IIMAGE1D
                               | UIMAGE1D
                               | IMAGE1DARRAY
                               | IIMAGE1DARRAY
                               | UIMAGE1DARRAY
                               | IMAGE2DRECT
                               | IIMAGE2DRECT
                               | UIMAGE2DRECT
                               | IMAGE2DARRAY
                               | IIMAGE2DARRAY
                               | UIMAGE2DARRAY
                               | IMAGECUBEARRAY
                               | IIMAGECUBEARRAY
                               | UIMAGECUBEARRAY
                               | IMAGE2DMS
                               | IIMAGE2DMS
                               | UIMAGE2DMS
                               | IMAGE2DMSARRAY
                               | IIMAGE2DMSARRAY
                               | UIMAGE2DMSARRAY
                               | struct_specifier
                               | type_name

    precision_qualifier ::= HIGHP
                           | MEDIUMP
                           | LOWP

    struct_specifier ::= STRUCT opt_41 LBRACE struct_declaration_list RBRACE

    struct_declaration_list ::= list_42

    struct_declaration ::= type_specifier struct_declarator_list SEMI
                          | type_qualifier type_specifier struct_declarator_list SEMI

    struct_declarator_list ::= struct_declarator list_44

    struct_declarator ::= IDENTIFIER opt_45

    initializer ::= assignment_expression
                   | LBRACE initializer_list opt_46 RBRACE

    initializer_list ::= initializer list_48

    declaration_statement ::= declaration

    statement ::= compound_statement
                 | simple_statement

    simple_statement ::= declaration_statement
                        | expression_statement
                        | selection_statement
                        | switch_statement
                        | case_label
                        | iteration_statement
                        | jump_statement

    compound_statement ::= LBRACE opt_49 RBRACE

    statement_no_new_scope ::= compound_statement_no_new_scope
                              | simple_statement

    compound_statement_no_new_scope ::= LBRACE opt_50 RBRACE

    statement_list ::= list_51

    expression_statement ::= SEMI
                            | expression SEMI

    selection_statement ::= IF LPAREN expression RPAREN selection_rest_statement

    selection_rest_statement ::= statement opt_53

    condition ::= expression
                 | fully_specified_type IDENTIFIER EQ initializer

    switch_statement ::= SWITCH LPAREN expression RPAREN LBRACE opt_54 RBRACE

    case_label ::= CASE expression COLON
                  | DEFAULT COLON

    iteration_statement ::= WHILE LPAREN condition RPAREN statement_no_new_scope
                           | DO statement WHILE LPAREN expression RPAREN SEMI
                           | FOR LPAREN for_init_statement for_rest_statement RPAREN statement_no_new_scope

    for_init_statement ::= expression_statement
                          | declaration_statement

    for_rest_statement ::= opt_55 SEMI opt_56

    jump_statement ::= CONTINUE SEMI
                      | BREAK SEMI
                      | RETURN opt_57 SEMI
                      | DISCARD SEMI

    external_declaration ::= function_definition
                            | declaration
                            | SEMI

    function_definition ::= function_prototype compound_statement_no_new_scope

    list_1 ::= (list_1 external_declaration)?

    opt_2 ::= function_call_parameters?

    opt_3 ::= function_call_parameters?

    opt_4 ::= function_call_parameters?

    seq_5 ::= COMMA assignment_expression

    list_6 ::= (list_6 seq_5)?

    grp_7 ::= STAR
             | SLASH
             | PERCENT

    grp_8 ::= PLUS
             | MINUS

    grp_9 ::= LSHIFT
             | RSHIFT

    grp_10 ::= LEFT_ANGLE
              | RIGHT_ANGLE
              | LTEQ
              | GTEQ

    grp_11 ::= EQEQ
              | NOTEQ

    opt_12 ::= array_specifier?

    seq_13 ::= IDENTIFIER opt_12

    opt_14 ::= seq_13?

    opt_15 ::= identifier_list?

    seq_16 ::= COMMA IDENTIFIER

    list_17 ::= (list_17 seq_16)?

    opt_18 ::= function_parameters?

    seq_19 ::= COMMA parameter_declaration

    list_20 ::= (list_20 seq_19)?

    opt_21 ::= array_specifier?

    grp_22 ::= parameter_declarator
              | parameter_type_specifier

    seq_23 ::= COMMA typeless_declaration

    list_24 ::= (list_24 seq_23)?

    opt_25 ::= typeless_declaration?

    opt_26 ::= array_specifier?

    seq_27 ::= EQ initializer

    opt_28 ::= seq_27?

    seq_29 ::= COMMA layout_qualifier_id

    list_30 ::= (list_30 seq_29)?

    seq_31 ::= EQ constant_expression

    opt_32 ::= seq_31?

    list_33 ::= single_type_qualifier+

    seq_34 ::= LPAREN type_name_list RPAREN

    opt_35 ::= seq_34?

    seq_36 ::= COMMA type_name

    list_37 ::= (list_37 seq_36)?

    opt_38 ::= array_specifier?

    list_39 ::= dimension+

    opt_40 ::= constant_expression?

    opt_41 ::= IDENTIFIER?

    list_42 ::= struct_declaration+

    seq_43 ::= COMMA struct_declarator

    list_44 ::= (list_44 seq_43)?

    opt_45 ::= array_specifier?

    opt_46 ::= COMMA?

    seq_47 ::= COMMA initializer

    list_48 ::= (list_48 seq_47)?

    opt_49 ::= statement_list?

    opt_50 ::= statement_list?

    list_51 ::= statement+

    seq_52 ::= ELSE statement

    opt_53 ::= seq_52?

    opt_54 ::= statement_list?

    opt_55 ::= condition?

    opt_56 ::= expression?

    opt_57 ::= expression?
%End
