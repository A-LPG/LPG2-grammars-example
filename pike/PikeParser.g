-- AUTO-GENERATED from antlr/grammars-v4 pike by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=PikeParser
%options package=lpg.grammars.pike
%options template=dtParserTemplateF.gi
%options import_terminals=PikeLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= list_1

    definition ::= impo
           | inheritance
           | function_declaration
           | function_definition
           | variables
           | constant
           | class_def

    impo ::= opt_2 IMPORT constant_identifier SEMI

    inheritance ::= opt_3 INHERIT program_specifier opt_5 SEMI

    function_declaration ::= opt_6 type_ identifier LPAREN opt_7 RPAREN SEMI

    function_definition ::= opt_8 type_ identifier LPAREN opt_9 RPAREN block

    variables ::= opt_10 type_ variable_names SEMI

    variable_names ::= variable_name list_12

    variable_name ::= list_13 identifier opt_15

    constant ::= opt_16 CONSTANT constant_names SEMI

    constant_names ::= constant_name list_18

    constant_name ::= identifier EQ expression2

    class_def ::= opt_19 CLASS opt_20

    class_implementation ::= CLASS opt_21 LBRACE program RBRACE

    modifiers ::= STATIC
           | PRIVATE
           | NOMASK
           | PUBLIC
           | PROTECTED
           | INLINE

    block ::= LBRACE list_22 RBRACE

    statement ::= expression2 SEMI
           | cond
           | while_stmt
           | do_while_stmt
           | for_stmt
           | switch_stmt
           | case_stmt
           | default_stmt
           | block
           | return_stmt
           | foreach_stmt
           | break_stmt
           | continue_stmt
           | SEMI

    cond ::= IF statement opt_24

    while_stmt ::= WHILE LPAREN expression RPAREN statement

    return_stmt ::= RETURN expression

    do_while_stmt ::= DO statement while_stmt LPAREN expression RPAREN SEMI

    for_stmt ::= FOR LPAREN opt_25 SEMI opt_26 SEMI opt_27 RPAREN statement

    switch_stmt ::= SWITCH LPAREN expression RPAREN block

    case_stmt ::= CASE expression opt_29 COLON

    default_stmt ::= DEFAULT COLON

    foreach_stmt ::= FOREACH LPAREN expression COLON expression6 RPAREN statement

    break_stmt ::= BREAK SEMI

    continue_stmt ::= CONTINUE SEMI

    expression ::= expression2 list_31

    expression2 ::= list_34 expression3

    expression3 ::= expression4 opt_36

    expression4 ::= list_39 expression5

    expression5 ::= expression6
           | LPAREN type_ RPAREN expression5
           | MINUSMINUS expression6
           | PLUSPLUS expression6
           | expression6 MINUSMINUS
           | expression6 PLUSPLUS
           | TILDE expression5
           | MINUS expression5
           | BANG expression5

    expression6 ::= grp_40 list_41

    extension ::= LPAREN expression_list RPAREN
           | ARROW identifier
           | LBRACKET expression opt_43 RBRACKET

    catch_ ::= CATCH grp_44

    gauge ::= GAUGE grp_45

    sscanf ::= SSCANF LPAREN expression2 COMMA expression2 list_47 RPAREN

    lvalue ::= LAMBDA expression6
           | type_ identifier

    lambda ::= LAMBDA LPAREN opt_48 RPAREN block

    constant_identifier ::= identifier list_50

    array ::= OP_70674 expression_list OP_96327

    multiset ::= OP_43310 expression_list OP_83671

    mapping ::= OP_55100 opt_54 opt_55 OP_1267

    program_specifier ::= constant_identifier

    parenthesis ::= LPAREN expression RPAREN

    expression_list ::= opt_59 opt_60

    splice_expression ::= opt_61 expression2

    argument ::= type_ opt_62 identifier

    arguments ::= seq_65 opt_66

    type_ ::= type__ list_67

    type__ ::= INTTYPE
           | STRINGTYPE
           | FLOATTYPE
           | PROGRAMTYPE
           | seq_70
           | seq_73
           | seq_76
           | seq_79
           | seq_81

    function_type ::= LPAREN type_ list_83 opt_84 RPAREN

    identifier ::= IDENTIFIER

    list_1 ::= $empty | list_1 definition

    opt_2 ::= modifiers | $empty

    opt_3 ::= modifiers | $empty

    seq_4 ::= COLON identifier

    opt_5 ::= seq_4 | $empty

    opt_6 ::= modifiers | $empty

    opt_7 ::= arguments | $empty

    opt_8 ::= modifiers | $empty

    opt_9 ::= arguments | $empty

    opt_10 ::= modifiers | $empty

    seq_11 ::= COMMA variable_name

    list_12 ::= $empty | list_12 seq_11

    list_13 ::= $empty | list_13 STAR

    seq_14 ::= EQ expression2

    opt_15 ::= seq_14 | $empty

    opt_16 ::= modifiers | $empty

    seq_17 ::= COMMA constant_name

    list_18 ::= $empty | list_18 seq_17

    opt_19 ::= modifiers | $empty

    opt_20 ::= SEMI | $empty

    opt_21 ::= identifier | $empty

    list_22 ::= $empty | list_22 statement

    seq_23 ::= ELSE statement

    opt_24 ::= seq_23 | $empty

    opt_25 ::= expression | $empty

    opt_26 ::= expression | $empty

    opt_27 ::= expression | $empty

    seq_28 ::= DOTDOT expression

    opt_29 ::= seq_28 | $empty

    seq_30 ::= COMMA expression2

    list_31 ::= $empty | list_31 seq_30

    grp_33 ::= EQ | PLUSEQ | STAREQ | SLASHEQ | AMPEQ | PIPEEQ | CARETEQ | LSHIFTEQ | RSHIFTEQ | PERCENTEQ

    grp_32 ::= lvalue grp_33

    list_34 ::= $empty | list_34 grp_32

    seq_35 ::= QUESTION expression3 COLON expression3

    opt_36 ::= seq_35 | $empty

    grp_38 ::= OROR | ANDAND | PIPE | CARET | AMP | EQEQ | NOTEQ | GT | LT | GTEQ | LTEQ | LSHIFT | RSHIFT | PLUS | STAR | SLASH | PERCENT

    grp_37 ::= expression5 grp_38

    list_39 ::= $empty | list_39 grp_37

    grp_40 ::= STRING | NUMBER | FLOAT | catch_ | gauge | sscanf | lambda | class_implementation | constant_identifier | mapping | multiset | array | parenthesis

    list_41 ::= $empty | list_41 extension

    seq_42 ::= DOTDOT expression

    opt_43 ::= seq_42 | $empty

    grp_44 ::= LPAREN expression RPAREN | block

    grp_45 ::= LPAREN expression RPAREN | block

    seq_46 ::= COMMA lvalue

    list_47 ::= $empty | list_47 seq_46

    opt_48 ::= arguments | $empty

    seq_49 ::= DOT identifier

    list_50 ::= $empty | list_50 seq_49

    seq_51 ::= COMMA expression COLON expression

    list_52 ::= $empty | list_52 seq_51

    seq_53 ::= expression COLON expression list_52

    opt_54 ::= seq_53 | $empty

    opt_55 ::= COMMA | $empty

    seq_56 ::= COMMA splice_expression

    list_57 ::= $empty | list_57 seq_56

    seq_58 ::= splice_expression list_57

    opt_59 ::= seq_58 | $empty

    opt_60 ::= COMMA | $empty

    opt_61 ::= AT | $empty

    opt_62 ::= ELLIPSIS | $empty

    seq_63 ::= COMMA argument

    list_64 ::= $empty | list_64 seq_63

    seq_65 ::= argument list_64

    opt_66 ::= COMMA | $empty

    list_67 ::= $empty | list_67 STAR

    seq_68 ::= LPAREN program_specifier RPAREN

    opt_69 ::= seq_68 | $empty

    seq_70 ::= OBJECTTYPE opt_69

    seq_71 ::= LPAREN type_ COLON type_ RPAREN

    opt_72 ::= seq_71 | $empty

    seq_73 ::= MAPPINGTYPE opt_72

    seq_74 ::= LPAREN type_ RPAREN

    opt_75 ::= seq_74 | $empty

    seq_76 ::= ARRAYTYPE opt_75

    seq_77 ::= LPAREN type_ RPAREN

    opt_78 ::= seq_77 | $empty

    seq_79 ::= MULTISETTYPE opt_78

    opt_80 ::= function_type | $empty

    seq_81 ::= FUNCTIONTYPE opt_80

    seq_82 ::= COMMA type_

    list_83 ::= $empty | list_83 seq_82

    opt_84 ::= ELLIPSIS | $empty

%End
