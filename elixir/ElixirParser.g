-- AUTO-GENERATED from antlr/grammars-v4 elixir by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=ElixirParser
%options package=lpg.grammars.elixir
%options template=btParserTemplateF.gi
%options import_terminals=ElixirLexer.gi
%options automatic_ast=none
%options conflicts

%Define
    $ast_class /.Object./
    $ast_type /.Object./
%End


%Eof
    EOF_TOKEN
%End

%Start
    parse
%End

%Rules
    parse ::= block

    block ::= opt_1 expression list_3 opt_4

    eoe ::= list_6

    expression ::= expression expression_tail
           | expression opt_7 LPAREN opt_12 RPAREN
           | expression opt_13 LPAREN list_14 options_ list_15 RPAREN
           | module_def
           | function_def
           | macro_def
           | for
           | with
           | try
           | expression expressions_ opt_18
           | expression opt_19 expressions_
           | expression options_
           | anonymous_function
           | LPAREN expression RPAREN
           | AT expression opt_20
           | unaryOp expression
           | expression mulOp expression
           | expression addOp expression
           | expression listOp expression
           | expression inOp expression
           | expression OP_58743 expression
           | expression otherOp expression
           | expression bitOp expression
           | expression relOp expression
           | expression eqOp expression
           | expression andOp expression
           | expression orOp expression
           | expression EQ expression
           | AMP expression
           | expression PIPE expression
           | expression COLONCOLON expression
           | expression WHEN expression
           | expression OP_26680 expression
           | expression ARROW list_21 expression
           | expression RECEIVE expression
           | list
           | tuple
           | map
           | bool_
           | bitstring
           | case
           | cond
           | if
           | unless
           | operator
           | do_block
           | variables
           | ATOM
           | INTEGER
           | HEXADECIMAL
           | OCTAL
           | BINARY
           | FLOAT
           | SIGIL
           | SINGLE_LINE_STRING
           | MULTI_LINE_STRING
           | SINGLE_LINE_CHARLIST
           | MULTI_LINE_CHARLIST
           | ALIAS
           | CODEPOINT
           | NIL

    unaryOp ::= PLUS
           | MINUS
           | BANG
           | CARET
           | NOT
           | OP_77509

    mulOp ::= STAR
           | SLASH

    addOp ::= PLUS
           | MINUS

    listOp ::= PLUSPLUS
           | MINUSMINUS
           | OP_4446
           | OP_3988
           | DOTDOT
           | LTGT

    inOp ::= IN
           | NOT IN

    relOp ::= LT
           | GT
           | LTEQ
           | GTEQ

    eqOp ::= EQEQ
           | NOTEQ
           | OP_14124
           | EQEQEQ
           | NOTEQEQ

    andOp ::= ANDAND
           | OP_21969
           | AND

    orOp ::= OROR
           | OP_87504
           | OR

    bitOp ::= OP_9195
           | URSHIFT

    otherOp ::= OP_14884
           | OP_92679
           | OP_29954
           | OP_28425
           | OP_56955
           | OP_71613

    operator ::= unaryOp
           | mulOp
           | addOp
           | listOp
           | inOp
           | relOp
           | eqOp
           | andOp
           | orOp
           | bitOp
           | otherOp

    expression_tail ::= LBRACKET expression RBRACKET
           | DOT expression

    do_block ::= DO list_22 opt_23 list_24 opt_28 END

    bool_ ::= TRUE
           | FALSE

    list ::= LBRACKET list_29 expressions_ opt_30 list_31 RBRACKET
           | LBRACKET list_32 opt_36 RBRACKET
           | LBRACKET list_37 tuples opt_39 list_40 RBRACKET
           | LBRACKET list_41 short_map_entries list_42 RBRACKET

    tuples ::= tuple list_44

    tuple ::= LBRACE opt_47 RBRACE

    map ::= OMAP list_48 RBRACE
           | OMAP list_49 opt_51 map_entries opt_52 list_53 RBRACE
           | OMAP list_54 opt_56 short_map_entries opt_57 list_58 RBRACE
           | OMAP list_59 opt_61 map_entries opt_63 opt_64 list_65 RBRACE

    map_entries ::= map_entry list_67

    map_entry ::= expression FATARROW expression

    short_map_entries ::= short_map_entry list_70

    short_map_entry ::= variable COLON expression

    anonymous_function ::= FN list_71 opt_72 ARROW list_73 opt_74 list_75 END
           | FN LPAREN opt_76 RPAREN ARROW list_77 opt_78 list_79 END

    case ::= CASE expression DO list_80 list_81 END

    condition ::= expression ARROW list_82 expression list_83

    cond ::= COND DO list_84 list_85 END

    if ::= IF expression DO list_86 block list_87 opt_91 END
           | IF expression COMMA list_92 DO COLON list_93 expression opt_97

    unless ::= UNLESS expression do_block

    bitstring ::= LSHIFT opt_100 RSHIFT

    module_def ::= DEFMODULE IDENTIFIER do_block

    function_def ::= grp_101 variable list_104 opt_106 do_block
           | grp_107 variable list_110 opt_112 COMMA DO COLON expression
           | grp_113 variable COMMA DO COLON expression

    macro_def ::= DEFMACRO variable LPAREN opt_114 RPAREN opt_116 do_block
           | DEFMACRO variable LPAREN opt_117 RPAREN opt_119 COMMA DO COLON expression

    for ::= FOR expressions_ opt_122 do_block
           | FOR expressions_ opt_125 COMMA DO COLON list_126 expression

    options_ ::= option list_129

    option ::= variable COLON expression

    with ::= WITH expressions_ do_block

    try ::= TRY DO list_130 block grp_131 list_132 expressions_ opt_135 opt_139 list_140 END

    expressions_ ::= expression list_143

    variables ::= variable list_146

    variable ::= VARIABLE
           | CASE
           | COND
           | IF
           | UNLESS
           | DEFMODULE
           | DEFMACRO
           | DEF
           | DEFP
           | FOR
           | WITH
           | TRY

    opt_1 ::= eoe | $empty

    seq_2 ::= eoe expression

    list_3 ::= $empty | list_3 seq_2

    opt_4 ::= eoe | $empty

    grp_5 ::= SEMI | NL

    list_6 ::= grp_5 | list_6 grp_5

    opt_7 ::= DOT | $empty

    list_8 ::= $empty | list_8 NL

    seq_9 ::= COMMA list_8 options_

    opt_10 ::= seq_9 | $empty

    seq_11 ::= expressions_ opt_10

    opt_12 ::= seq_11 | $empty

    opt_13 ::= DOT | $empty

    list_14 ::= $empty | list_14 NL

    list_15 ::= $empty | list_15 NL

    list_16 ::= $empty | list_16 NL

    seq_17 ::= COMMA list_16 options_

    opt_18 ::= seq_17 | $empty

    opt_19 ::= options_ | $empty

    opt_20 ::= options_ | $empty

    list_21 ::= $empty | list_21 NL

    list_22 ::= $empty | list_22 NL

    opt_23 ::= block | $empty

    list_24 ::= $empty | list_24 NL

    list_25 ::= $empty | list_25 NL

    list_26 ::= $empty | list_26 NL

    seq_27 ::= AFTER list_25 block list_26

    opt_28 ::= seq_27 | $empty

    list_29 ::= $empty | list_29 NL

    opt_30 ::= COMMA | $empty

    list_31 ::= $empty | list_31 NL

    list_32 ::= $empty | list_32 NL

    opt_33 ::= COMMA | $empty

    list_34 ::= $empty | list_34 NL

    seq_35 ::= expressions_ opt_33 list_34

    opt_36 ::= seq_35 | $empty

    list_37 ::= $empty | list_37 NL

    seq_38 ::= COMMA short_map_entries

    opt_39 ::= seq_38 | $empty

    list_40 ::= $empty | list_40 NL

    list_41 ::= $empty | list_41 NL

    list_42 ::= $empty | list_42 NL

    seq_43 ::= COMMA tuple

    list_44 ::= $empty | list_44 seq_43

    opt_45 ::= COMMA | $empty

    seq_46 ::= expressions_ opt_45

    opt_47 ::= seq_46 | $empty

    list_48 ::= $empty | list_48 NL

    list_49 ::= $empty | list_49 NL

    grp_50 ::= expression PIPE

    opt_51 ::= grp_50 | $empty

    opt_52 ::= COMMA | $empty

    list_53 ::= $empty | list_53 NL

    list_54 ::= $empty | list_54 NL

    grp_55 ::= expression PIPE

    opt_56 ::= grp_55 | $empty

    opt_57 ::= COMMA | $empty

    list_58 ::= $empty | list_58 NL

    list_59 ::= $empty | list_59 NL

    grp_60 ::= expression PIPE

    opt_61 ::= grp_60 | $empty

    seq_62 ::= COMMA short_map_entries

    opt_63 ::= seq_62 | $empty

    opt_64 ::= COMMA | $empty

    list_65 ::= $empty | list_65 NL

    seq_66 ::= COMMA map_entry

    list_67 ::= $empty | list_67 seq_66

    list_68 ::= $empty | list_68 NL

    seq_69 ::= COMMA list_68 short_map_entry

    list_70 ::= $empty | list_70 seq_69

    list_71 ::= $empty | list_71 NL

    opt_72 ::= expressions_ | $empty

    list_73 ::= $empty | list_73 NL

    opt_74 ::= block | $empty

    list_75 ::= $empty | list_75 NL

    opt_76 ::= expressions_ | $empty

    list_77 ::= $empty | list_77 NL

    opt_78 ::= block | $empty

    list_79 ::= $empty | list_79 NL

    list_80 ::= NL | list_80 NL

    list_81 ::= condition | list_81 condition

    list_82 ::= $empty | list_82 NL

    list_83 ::= NL | list_83 NL

    list_84 ::= NL | list_84 NL

    list_85 ::= condition | list_85 condition

    list_86 ::= $empty | list_86 NL

    list_87 ::= $empty | list_87 NL

    list_88 ::= $empty | list_88 NL

    list_89 ::= $empty | list_89 NL

    seq_90 ::= ELSE list_88 block list_89

    opt_91 ::= seq_90 | $empty

    list_92 ::= $empty | list_92 NL

    list_93 ::= $empty | list_93 NL

    list_94 ::= $empty | list_94 NL

    list_95 ::= $empty | list_95 NL

    seq_96 ::= COMMA list_94 ELSE COLON list_95 expression

    opt_97 ::= seq_96 | $empty

    opt_98 ::= COMMA | $empty

    seq_99 ::= expressions_ opt_98

    opt_100 ::= seq_99 | $empty

    grp_101 ::= DEF | DEFP

    opt_102 ::= expressions_ | $empty

    seq_103 ::= LPAREN opt_102 RPAREN

    list_104 ::= seq_103 | list_104 seq_103

    seq_105 ::= WHEN expression

    opt_106 ::= seq_105 | $empty

    grp_107 ::= DEF | DEFP

    opt_108 ::= expressions_ | $empty

    seq_109 ::= LPAREN opt_108 RPAREN

    list_110 ::= seq_109 | list_110 seq_109

    seq_111 ::= WHEN expression

    opt_112 ::= seq_111 | $empty

    grp_113 ::= DEF | DEFP

    opt_114 ::= expressions_ | $empty

    seq_115 ::= WHEN expression

    opt_116 ::= seq_115 | $empty

    opt_117 ::= expressions_ | $empty

    seq_118 ::= WHEN expression

    opt_119 ::= seq_118 | $empty

    list_120 ::= $empty | list_120 NL

    seq_121 ::= COMMA list_120 options_

    opt_122 ::= seq_121 | $empty

    list_123 ::= $empty | list_123 NL

    seq_124 ::= COMMA list_123 options_

    opt_125 ::= seq_124 | $empty

    list_126 ::= $empty | list_126 NL

    list_127 ::= $empty | list_127 NL

    seq_128 ::= COMMA list_127 option

    list_129 ::= $empty | list_129 seq_128

    list_130 ::= $empty | list_130 NL

    grp_131 ::= RECUE | CATCH | AFTER

    list_132 ::= $empty | list_132 NL

    list_133 ::= $empty | list_133 NL

    seq_134 ::= list_133 block

    opt_135 ::= seq_134 | $empty

    list_136 ::= $empty | list_136 NL

    list_137 ::= $empty | list_137 NL

    seq_138 ::= list_136 ELSE list_137 block

    opt_139 ::= seq_138 | $empty

    list_140 ::= $empty | list_140 NL

    list_141 ::= $empty | list_141 NL

    seq_142 ::= COMMA list_141 expression

    list_143 ::= $empty | list_143 seq_142

    list_144 ::= $empty | list_144 NL

    seq_145 ::= COMMA list_144 variable

    list_146 ::= $empty | list_146 seq_145

%End
