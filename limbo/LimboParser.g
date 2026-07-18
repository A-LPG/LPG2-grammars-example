-- AUTO-GENERATED from antlr/grammars-v4 limbo by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=LimboParser
%options package=lpg.grammars.limbo
%options template=dtParserTemplateF.gi
%options import_terminals=LimboLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= IMPLEMENT IDENTIFIER SEMI top_declaration_sequence

    top_declaration_sequence ::= list_1

    top_declaration ::= declaration
           | identifier_list COLONEQ expression SEMI
           | identifier_list ASSIGN expression SEMI
           | LPAREN identifier_list RPAREN COLONEQ expression SEMI
           | module_declaration
           | function_definition
           | adt_declaration

    declaration ::= identifier_list COLON type_ SEMI
           | identifier_list COLON type_ ASSIGN expression SEMI
           | identifier_list COLON CON expression SEMI
           | identifier_list COLON IMPORT IDENTIFIER SEMI
           | identifier_list COLON TYPE type_ SEMI
           | INCLUDE string_constant SEMI

    identifier_list ::= IDENTIFIER
           | identifier_list COMMA IDENTIFIER

    expression_list ::= list_2

    type_ ::= data_type
           | function_type

    data_type ::= byte_
           | int_
           | big
           | real_
           | string_
           | tuple_type
           | ARRAY OF data_type
           | LIST OF data_type
           | CHAN OF data_type
           | adt_type
           | REF adt_type
           | module_type
           | module_qualified_type
           | type_name

    string_ ::= STRING

    real_ ::= REAL

    byte_ ::= INT

    int_ ::= INT

    big ::= INT

    tuple_type ::= LPAREN data_type_list RPAREN

    data_type_list ::= data_type list_4

    adt_type ::= IDENTIFIER
           | module_qualified_type

    module_type ::= IDENTIFIER

    module_qualified_type ::= IDENTIFIER ARROW IDENTIFIER

    type_name ::= IDENTIFIER

    function_type ::= FN function_arg_ret

    function_arg_ret ::= LPAREN opt_5 RPAREN
           | LPAREN opt_6 RPAREN COLON data_type

    formal_arg_list ::= formal_arg list_8

    formal_arg ::= nil_or_D_list COLON type_
           | nil_or_D COLON SELF REFOPT IDENTIFIER
           | nil_or_D COLON SELF IDENTIFIER
           | STAR

    nil_or_D_list ::= nil_or_D list_10

    nil_or_D ::= IDENTIFIER
           | NIL

    module_declaration ::= IDENTIFIER COLON MODULE LBRACE opt_11 RBRACE SEMI

    mod_member_list ::= list_12

    mod_member ::= identifier_list COLON function_type SEMI
           | identifier_list COLON data_type SEMI
           | adt_declaration SEMI
           | identifier_list COLON CON expression SEMI
           | identifier_list COLON TYPE type_ SEMI

    adt_declaration ::= IDENTIFIER COLON ADT LBRACE opt_13 RBRACE SEMI

    adt_member_list ::= adt_member
           | adt_member_list adt_member

    adt_member ::= identifier_list COLON CYCLICOPT data_type SEMI
           | identifier_list COLON CON expression SEMI
           | identifier_list COLON function_type SEMI
           | PICK LBRACE pick_member_list RBRACE SEMI

    pick_member_list ::= pick_tag_list FATARROW
           | pick_member_list pick_tag_list FATARROW
           | pick_member_list identifier_list COLON CYCLICOPT data_type SEMI

    pick_tag_list ::= IDENTIFIER list_15

    function_definition ::= function_name_part function_arg_ret LBRACE statements_ RBRACE

    function_name_part ::= IDENTIFIER list_17

    statements_ ::= list_19

    statement ::= expression SEMI
           | SEMI
           | LBRACE statements_ RBRACE
           | IF LPAREN expression RPAREN statement
           | IF LPAREN expression RPAREN statement ELSE statement
           | opt_20 WHILE LPAREN opt_21 RPAREN statement
           | opt_22 DO statement WHILE LPAREN opt_23 RPAREN SEMI
           | opt_24 FOR LPAREN opt_25 SEMI opt_26 SEMI opt_27 RPAREN statement
           | opt_28 CASE expression LBRACE qual_statement_sequence RBRACE
           | opt_29 ALT LBRACE qual_statement_sequence RBRACE
           | opt_30 PICK IDENTIFIER COLONEQ expression LBRACE pqual_statement_sequence RBRACE
           | BREAK opt_31 SEMI
           | CONTINUE opt_32 SEMI
           | RETURN opt_33 SEMI
           | SPAWN term LPAREN opt_34 RPAREN SEMI
           | EXIT SEMI

    label ::= IDENTIFIER COLON

    qual_statement_sequence ::= qual_list FATARROW
           | qual_statement_sequence qual_list FATARROW
           | qual_statement_sequence statement
           | qual_statement_sequence declaration

    qual_list ::= qualifier list_36

    qualifier ::= expression
           | expression TO expression
           | STAR

    pqual_statement_sequence ::= pqual_list FATARROW
           | pqual_statement_sequence pqual_list FATARROW
           | pqual_statement_sequence statement
           | pqual_statement_sequence declaration

    pqual_list ::= pqualifier list_38

    pqualifier ::= IDENTIFIER
           | STAR

    expression ::= binary_expression
           | lvalue_expression ASSIGNMENT_OPERATOR expression
           | LPAREN lvalue_expression_list RPAREN ASSIGN expression
           | send_expression
           | declare_expression
           | load_expression

    binary_expression ::= monadic_expression
           | binary_expression BINARY_OPERATOR binary_expression

    lvalue_expression ::= IDENTIFIER
           | NIL
           | term LBRACKET expression RBRACKET
           | term LBRACKET expression COLON RBRACKET
           | term DOT IDENTIFIER
           | LPAREN lvalue_expression_list RPAREN
           | STAR monadic_expression

    lvalue_expression_list ::= lvalue_expression list_40

    init_list ::= element list_42

    term ::= IDENTIFIER
           | real_constant
           | string_constant
           | NIL
           | LPAREN expression_list RPAREN
           | term DOT IDENTIFIER
           | term ARROW term
           | term LPAREN opt_43 RPAREN
           | term LBRACKET expression RBRACKET
           | term LBRACKET expression COLON expression RBRACKET
           | term LBRACKET expression COLON RBRACKET
           | term PLUSPLUS
           | term MINUSMINUS

    real_constant ::= REAL

    string_constant ::= STRING

    element ::= expression
           | expression FATARROW expression
           | STAR FATARROW expression

    send_expression ::= lvalue_expression RECEIVE ASSIGN expression

    declare_expression ::= lvalue_expression COLONEQ expression

    load_expression ::= LOAD IDENTIFIER expression

    monadic_expression ::= term
           | MONADICOPERATOR monadic_expression
           | ARRAY LBRACKET expression RBRACKET OF data_type
           | ARRAY LBRACKET opt_44 RBRACKET OF LBRACE init_list RBRACE
           | LIST OF LBRACE expression_list RBRACE
           | CHAN OF data_type
           | data_type monadic_expression

    list_1 ::= top_declaration | list_1 top_declaration

    list_2 ::= expression | list_2 expression

    seq_3 ::= COMMA data_type

    list_4 ::= $empty | list_4 seq_3

    opt_5 ::= formal_arg_list | $empty

    opt_6 ::= formal_arg_list | $empty

    seq_7 ::= COMMA formal_arg

    list_8 ::= $empty | list_8 seq_7

    seq_9 ::= COMMA nil_or_D

    list_10 ::= $empty | list_10 seq_9

    opt_11 ::= mod_member_list | $empty

    list_12 ::= mod_member | list_12 mod_member

    opt_13 ::= adt_member_list | $empty

    seq_14 ::= OR IDENTIFIER

    list_15 ::= $empty | list_15 seq_14

    seq_16 ::= DOT IDENTIFIER

    list_17 ::= $empty | list_17 seq_16

    grp_18 ::= declaration | statement

    list_19 ::= $empty | list_19 grp_18

    opt_20 ::= label | $empty

    opt_21 ::= expression | $empty

    opt_22 ::= label | $empty

    opt_23 ::= expression | $empty

    opt_24 ::= label | $empty

    opt_25 ::= expression | $empty

    opt_26 ::= expression | $empty

    opt_27 ::= expression | $empty

    opt_28 ::= label | $empty

    opt_29 ::= label | $empty

    opt_30 ::= label | $empty

    opt_31 ::= IDENTIFIER | $empty

    opt_32 ::= IDENTIFIER | $empty

    opt_33 ::= expression | $empty

    opt_34 ::= expression_list | $empty

    seq_35 ::= OR qualifier

    list_36 ::= $empty | list_36 seq_35

    seq_37 ::= OR pqualifier

    list_38 ::= $empty | list_38 seq_37

    seq_39 ::= COMMA lvalue_expression

    list_40 ::= $empty | list_40 seq_39

    seq_41 ::= COMMA element

    list_42 ::= $empty | list_42 seq_41

    opt_43 ::= expression_list | $empty

    opt_44 ::= expression | $empty

%End
