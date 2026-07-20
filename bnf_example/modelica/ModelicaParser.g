-- AUTO-GENERATED from antlr/grammars-v4 modelica by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=ModelicaParser
%options package=lpg.grammars.modelica
%options template=btParserTemplateF.gi
%options import_terminals=ModelicaLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    stored_definition
%End

%Rules
    stored_definition ::= list_3 list_6

    class_definition ::= opt_7 class_prefixes class_specifier

    class_specifier ::= long_class_specifier
           | short_class_specifier
           | der_class_specifier

    class_prefixes ::= opt_8 grp_9

    long_class_specifier ::= IDENTIFIER string_comment composition END IDENTIFIER
           | EXTENDS IDENTIFIER opt_16 string_comment composition END IDENTIFIER

    short_class_specifier ::= IDENTIFIER EQ base_prefix name opt_17 opt_18 comment
           | IDENTIFIER EQ ENUMERATION LPAREN grp_19 RPAREN comment

    der_class_specifier ::= IDENTIFIER EQ DER LPAREN name COMMA IDENTIFIER list_22 RPAREN comment

    base_prefix ::= type_prefix

    enum_list ::= enumeration_literal list_24

    enumeration_literal ::= IDENTIFIER comment

    composition ::= element_list list_26 opt_31 opt_33

    language_specification ::= STRING

    external_function_call ::= opt_35 IDENTIFIER LPAREN opt_36 RPAREN

    element_list ::= list_38

    element ::= import_clause
           | extends_clause
           | opt_39 opt_40 opt_41 opt_42 grp_43

    import_clause ::= IMPORT grp_48 comment

    import_list ::= IDENTIFIER list_50

    extends_clause ::= EXTENDS name opt_51 opt_52

    constraining_clause ::= CONSTRAINEDBY name opt_53

    component_clause ::= type_prefix type_specifier opt_54 component_list

    type_prefix ::= opt_56 opt_58 opt_60

    type_specifier ::= name

    component_list ::= component_declaration list_62

    component_declaration ::= declaration opt_63 comment

    condition_attribute ::= IF expression

    declaration ::= IDENTIFIER opt_64 opt_65

    modification ::= class_modification opt_67
           | EQ expression
           | COLONEQ expression

    class_modification ::= LPAREN opt_68 RPAREN

    argument_list ::= argument list_70

    argument ::= element_modification_or_replaceable
           | element_redeclaration

    element_modification_or_replaceable ::= opt_71 opt_72 grp_73

    element_modification ::= name opt_74 string_comment

    element_redeclaration ::= REDECLARE opt_75 opt_76 grp_77

    element_replaceable ::= REPLACEABLE grp_79 opt_80

    component_clause1 ::= type_prefix type_specifier component_declaration1

    component_declaration1 ::= declaration comment

    short_class_definition ::= class_prefixes short_class_specifier

    equation_section ::= opt_81 EQUATION list_83

    algorithm_section ::= opt_84 ALGORITHM list_86

    equation ::= grp_87 comment

    statement ::= grp_88 comment

    if_equation ::= IF expression THEN list_91 list_95 opt_99 END IF

    if_statement ::= IF expression THEN list_101 list_105 opt_109 END IF

    for_equation ::= FOR for_indices LOOP list_111 END FOR

    for_statement ::= FOR for_indices LOOP list_113 END FOR

    for_indices ::= for_index list_115

    for_index ::= IDENTIFIER opt_117

    while_statement ::= WHILE expression LOOP list_119 END WHILE

    when_equation ::= WHEN expression THEN list_121 list_125 END WHEN

    when_statement ::= WHEN expression THEN list_127 list_131 END WHEN

    connect_clause ::= CONNECT LPAREN component_reference COMMA component_reference RPAREN

    expression ::= simple_expression
           | IF expression THEN expression list_133 ELSE expression

    simple_expression ::= logical_expression opt_137

    logical_expression ::= logical_term list_139

    logical_term ::= logical_factor list_141

    logical_factor ::= opt_142 relation

    relation ::= arithmetic_expression opt_144

    rel_op ::= LT
           | LTEQ
           | GT
           | GTEQ
           | EQEQ
           | LTGT

    arithmetic_expression ::= opt_145 term list_147

    add_op ::= PLUS
           | MINUS
           | OP_36876
           | OP_85410

    term ::= factor list_149

    mul_op ::= STAR
           | SLASH
           | DOTSTAR
           | OP_11119

    factor ::= primary opt_152

    primary ::= NUMBER
           | STRING
           | FALSE
           | TRUE
           | grp_153 function_call_args
           | component_reference
           | LPAREN output_expression_list RPAREN
           | LBRACKET expression_list list_155 RBRACKET
           | LBRACE function_arguments RBRACE
           | END

    name ::= opt_156 IDENTIFIER list_158

    component_reference ::= opt_159 IDENTIFIER opt_160 list_163

    function_call_args ::= LPAREN opt_164 RPAREN

    function_arguments ::= function_argument opt_166
           | named_arguments

    named_arguments ::= named_argument opt_168

    named_argument ::= IDENTIFIER EQ function_argument

    function_argument ::= FUNCTION name LPAREN opt_169 RPAREN
           | expression

    output_expression_list ::= opt_170 list_173

    expression_list ::= expression list_175

    array_subscripts ::= LBRACKET subscript_ list_177 RBRACKET

    subscript_ ::= COLON
           | expression

    comment ::= string_comment opt_178

    string_comment ::= opt_182

    annotation ::= ANNOTATION class_modification

    opt_1 ::= name | $empty

    seq_2 ::= WITHIN opt_1 SEMI

    list_3 ::= $empty | list_3 seq_2

    opt_4 ::= FINAL | $empty

    seq_5 ::= opt_4 class_definition SEMI

    list_6 ::= $empty | list_6 seq_5

    opt_7 ::= ENCAPSULATED | $empty

    opt_8 ::= PARTIAL | $empty

    opt_10 ::= OPERATOR | $empty

    opt_11 ::= EXPANDABLE | $empty

    grp_13 ::= PURE | IMPURE

    grp_12 ::= grp_13

    opt_14 ::= grp_12 | $empty

    opt_15 ::= OPERATOR | $empty

    grp_9 ::= CLASS | MODEL | opt_10 RECORD | BLOCK | opt_11 CONNECTOR | TYPE | PACKAGE | opt_14 opt_15 FUNCTION | OPERATOR

    opt_16 ::= class_modification | $empty

    opt_17 ::= array_subscripts | $empty

    opt_18 ::= class_modification | $empty

    opt_20 ::= enum_list | $empty

    grp_19 ::= opt_20 | COLON

    seq_21 ::= COMMA IDENTIFIER

    list_22 ::= $empty | list_22 seq_21

    seq_23 ::= COMMA enumeration_literal

    list_24 ::= $empty | list_24 seq_23

    grp_25 ::= PUBLIC element_list | PROTECTED element_list | equation_section | algorithm_section

    list_26 ::= $empty | list_26 grp_25

    opt_27 ::= language_specification | $empty

    opt_28 ::= external_function_call | $empty

    opt_29 ::= annotation | $empty

    seq_30 ::= EXTERNAL opt_27 opt_28 opt_29 SEMI

    opt_31 ::= seq_30 | $empty

    seq_32 ::= annotation SEMI

    opt_33 ::= seq_32 | $empty

    seq_34 ::= component_reference EQ

    opt_35 ::= seq_34 | $empty

    opt_36 ::= expression_list | $empty

    seq_37 ::= element SEMI

    list_38 ::= $empty | list_38 seq_37

    opt_39 ::= REDECLARE | $empty

    opt_40 ::= FINAL | $empty

    opt_41 ::= INNER | $empty

    opt_42 ::= OUTER | $empty

    grp_44 ::= class_definition | component_clause

    grp_45 ::= class_definition | component_clause

    seq_46 ::= constraining_clause comment

    opt_47 ::= seq_46 | $empty

    grp_43 ::= grp_44 | REPLACEABLE grp_45 opt_47

    grp_48 ::= IDENTIFIER EQ name | name DOTSTAR | name OP_62382 import_list RBRACE | name

    seq_49 ::= COMMA IDENTIFIER

    list_50 ::= $empty | list_50 seq_49

    opt_51 ::= class_modification | $empty

    opt_52 ::= annotation | $empty

    opt_53 ::= class_modification | $empty

    opt_54 ::= array_subscripts | $empty

    grp_55 ::= FLOW | STREAM

    opt_56 ::= grp_55 | $empty

    grp_57 ::= DISCRETE | PARAMETER | CONSTANT

    opt_58 ::= grp_57 | $empty

    grp_59 ::= INPUT | OUTPUT

    opt_60 ::= grp_59 | $empty

    seq_61 ::= COMMA component_declaration

    list_62 ::= $empty | list_62 seq_61

    opt_63 ::= condition_attribute | $empty

    opt_64 ::= array_subscripts | $empty

    opt_65 ::= modification | $empty

    seq_66 ::= EQ expression

    opt_67 ::= seq_66 | $empty

    opt_68 ::= argument_list | $empty

    seq_69 ::= COMMA argument

    list_70 ::= $empty | list_70 seq_69

    opt_71 ::= EACH | $empty

    opt_72 ::= FINAL | $empty

    grp_73 ::= element_modification | element_replaceable

    opt_74 ::= modification | $empty

    opt_75 ::= EACH | $empty

    opt_76 ::= FINAL | $empty

    grp_78 ::= short_class_definition | component_clause1

    grp_77 ::= grp_78 | element_replaceable

    grp_79 ::= short_class_definition | component_clause1

    opt_80 ::= constraining_clause | $empty

    opt_81 ::= INITIAL | $empty

    seq_82 ::= equation SEMI

    list_83 ::= $empty | list_83 seq_82

    opt_84 ::= INITIAL | $empty

    seq_85 ::= statement SEMI

    list_86 ::= $empty | list_86 seq_85

    grp_87 ::= simple_expression EQ expression | if_equation | for_equation | connect_clause | when_equation | name function_call_args

    grp_89 ::= COLONEQ expression | function_call_args

    grp_88 ::= component_reference grp_89 | LPAREN output_expression_list RPAREN COLONEQ component_reference function_call_args | BREAK | RETURN | if_statement | for_statement | while_statement | when_statement

    seq_90 ::= equation SEMI

    list_91 ::= $empty | list_91 seq_90

    seq_92 ::= equation SEMI

    list_93 ::= $empty | list_93 seq_92

    seq_94 ::= ELSEIF expression THEN list_93

    list_95 ::= $empty | list_95 seq_94

    seq_96 ::= equation SEMI

    list_97 ::= $empty | list_97 seq_96

    seq_98 ::= ELSE list_97

    opt_99 ::= seq_98 | $empty

    seq_100 ::= statement SEMI

    list_101 ::= $empty | list_101 seq_100

    seq_102 ::= statement SEMI

    list_103 ::= $empty | list_103 seq_102

    seq_104 ::= ELSEIF expression THEN list_103

    list_105 ::= $empty | list_105 seq_104

    seq_106 ::= statement SEMI

    list_107 ::= $empty | list_107 seq_106

    seq_108 ::= ELSE list_107

    opt_109 ::= seq_108 | $empty

    seq_110 ::= equation SEMI

    list_111 ::= $empty | list_111 seq_110

    seq_112 ::= statement SEMI

    list_113 ::= $empty | list_113 seq_112

    seq_114 ::= COMMA for_index

    list_115 ::= $empty | list_115 seq_114

    seq_116 ::= IN expression

    opt_117 ::= seq_116 | $empty

    seq_118 ::= statement SEMI

    list_119 ::= $empty | list_119 seq_118

    seq_120 ::= equation SEMI

    list_121 ::= $empty | list_121 seq_120

    seq_122 ::= equation SEMI

    list_123 ::= $empty | list_123 seq_122

    seq_124 ::= ELSEWHEN expression THEN list_123

    list_125 ::= $empty | list_125 seq_124

    seq_126 ::= statement SEMI

    list_127 ::= $empty | list_127 seq_126

    seq_128 ::= statement SEMI

    list_129 ::= $empty | list_129 seq_128

    seq_130 ::= ELSEWHEN expression THEN list_129

    list_131 ::= $empty | list_131 seq_130

    seq_132 ::= ELSEIF expression THEN expression

    list_133 ::= $empty | list_133 seq_132

    seq_134 ::= COLON logical_expression

    opt_135 ::= seq_134 | $empty

    seq_136 ::= COLON logical_expression opt_135

    opt_137 ::= seq_136 | $empty

    seq_138 ::= OR logical_term

    list_139 ::= $empty | list_139 seq_138

    seq_140 ::= AND logical_factor

    list_141 ::= $empty | list_141 seq_140

    opt_142 ::= NOT | $empty

    seq_143 ::= rel_op arithmetic_expression

    opt_144 ::= seq_143 | $empty

    opt_145 ::= add_op | $empty

    seq_146 ::= add_op term

    list_147 ::= $empty | list_147 seq_146

    seq_148 ::= mul_op factor

    list_149 ::= $empty | list_149 seq_148

    grp_151 ::= CARET | OP_81157

    grp_150 ::= grp_151 primary

    opt_152 ::= grp_150 | $empty

    grp_153 ::= name | DER | INITIAL

    seq_154 ::= SEMI expression_list

    list_155 ::= $empty | list_155 seq_154

    opt_156 ::= DOT | $empty

    seq_157 ::= DOT IDENTIFIER

    list_158 ::= $empty | list_158 seq_157

    opt_159 ::= DOT | $empty

    opt_160 ::= array_subscripts | $empty

    opt_161 ::= array_subscripts | $empty

    seq_162 ::= DOT IDENTIFIER opt_161

    list_163 ::= $empty | list_163 seq_162

    opt_164 ::= function_arguments | $empty

    grp_165 ::= COMMA function_arguments | FOR for_indices

    opt_166 ::= grp_165 | $empty

    seq_167 ::= COMMA named_arguments

    opt_168 ::= seq_167 | $empty

    opt_169 ::= named_arguments | $empty

    opt_170 ::= expression | $empty

    opt_171 ::= expression | $empty

    seq_172 ::= COMMA opt_171

    list_173 ::= $empty | list_173 seq_172

    seq_174 ::= COMMA expression

    list_175 ::= $empty | list_175 seq_174

    seq_176 ::= COMMA subscript_

    list_177 ::= $empty | list_177 seq_176

    opt_178 ::= annotation | $empty

    seq_179 ::= PLUS STRING

    list_180 ::= $empty | list_180 seq_179

    seq_181 ::= STRING list_180

    opt_182 ::= seq_181 | $empty

%End
