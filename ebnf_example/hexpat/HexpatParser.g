-- AUTO-GENERATED from antlr/grammars-v4 hexpat by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack,ebnf
%Options fp=HexpatParser
%options package=lpg.grammars.hexpat
%options template=btParserTemplateF.gi
%options import_terminals=HexpatLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End


%Define
    $ast_class /.Object./
    $ast_type /.Object./
%End

%Start
    hexpat
%End

%Rules
    hexpat ::= list_12

    importStatement ::= IMPORT list_13 IDENTIFIER list_16 SEMI

    usingStatement ::= USING grp_17

    namespace ::= NAMESPACE IDENTIFIER LBRACE list_31 RBRACE

    typeParameters ::= LT typeParameter list_33 GT

    typeParameter ::= opt_34 typeName

    typeArgument ::= opt_35 typeName opt_36
                    | literal
                    | expression

    typeArguments ::= LT typeArgument list_38 GT

    struct ::= STRUCT IDENTIFIER opt_39 opt_41 structBlock opt_42 SEMI

    structBlock ::= LBRACE list_43 RBRACE

    structStatement ::= structBlock
                       | structMember
                       | structIf
                       | structMatch
                       | BREAK SEMI
                       | CONTINUE SEMI
                       | RETURN SEMI
                       | expression SEMI
                       | structTryCatch

    structIf ::= IF parExpression structStatement opt_45

    structMatch ::= MATCH LPAREN matchVariables RPAREN LBRACE structMatchCases RBRACE

    structMatchCases ::= list_46

    structMatchCase ::= LPAREN matchPatterns RPAREN COLON structStatement

    bitfield ::= BITFIELD IDENTIFIER opt_47 bitfieldBlock opt_48 SEMI

    bitfieldBlock ::= LBRACE list_49 RBRACE

    bitfieldStatement ::= bitfieldBlock
                         | bitfieldMember opt_50 SEMI
                         | bitfieldIf
                         | bitfieldMatch
                         | BREAK SEMI
                         | CONTINUE SEMI
                         | RETURN SEMI
                         | expression SEMI

    bitfieldIf ::= IF parExpression bitfieldStatement opt_52

    bitfieldMatch ::= MATCH LPAREN matchVariables RPAREN LBRACE bitfieldMatchCases RBRACE

    bitfieldMatchCases ::= list_53

    bitfieldMatchCase ::= LPAREN matchPatterns RPAREN COLON bitfieldStatement

    bitfieldMember ::= seq_55 opt_57 opt_59
                      | PADDING COLON expression

    union ::= UNION IDENTIFIER opt_60 unionBlock opt_61 SEMI

    unionBlock ::= LBRACE list_62 RBRACE

    unionStatement ::= unionBlock
                      | unionMember SEMI
                      | unionIf
                      | unionMatch
                      | BREAK SEMI
                      | CONTINUE SEMI
                      | RETURN SEMI
                      | expression SEMI

    unionIf ::= IF parExpression unionStatement opt_64

    unionMatch ::= MATCH LPAREN matchVariables RPAREN LBRACE unionMatchCases RBRACE

    unionMatchCases ::= list_65

    unionMatchCase ::= LPAREN matchPatterns RPAREN COLON unionStatement

    unionMember ::= typeName IDENTIFIER opt_67 opt_68 opt_69
                   | typeName STAR IDENTIFIER COLON typeName opt_70

    attribute ::= LBRACKET LBRACKET attributeList RBRACKET RBRACKET

    attributeList ::= attributeItem list_72

    attributeItem ::= typeName LPAREN opt_73 RPAREN
                     | IDENTIFIER

    structMemberStatement ::= structMember

    structMemberDeclarators ::= structMemberDeclarator list_75

    structMemberDeclarator ::= opt_76 opt_77 opt_80 opt_82 opt_84 opt_85 opt_86

    structMember ::= opt_87 opt_88 opt_91 structMemberDeclarators opt_92 SEMI
                    | padding SEMI

    padding ::= PADDING LBRACKET grp_93 RBRACKET

    at ::= AT section

    section ::= INTEGER_LITERAL opt_95
               | expression

    whileSize ::= WHILE parExpression

    memberSize ::= expression
                  | whileSize

    typeName ::= list_97 grp_98

    primitiveType ::= U128
                     | U64
                     | U32
                     | U16
                     | U8
                     | S128
                     | S64
                     | S32
                     | S16
                     | S8
                     | DOUBLE
                     | FLOAT
                     | CHAR
                     | STR
                     | BOOL
                     | AUTO

    enum ::= ENUM opt_99 COLON typeName enumBlock opt_100 SEMI

    enumBlock ::= LBRACE list_102 opt_103 RBRACE

    enumEntry ::= IDENTIFIER opt_105

    fn ::= FN IDENTIFIER LPAREN opt_111 RPAREN block SEMI

    parameter ::= opt_112 typeName IDENTIFIER

    block ::= LBRACE list_113 RBRACE

    blockStatement ::= localVariableDeclarationStatement
                      | statement

    localVariableDeclarationStatement ::= localVariableDeclaration SEMI

    localVariableDeclaration ::= opt_114 typeName variableDeclarators

    variableDeclarators ::= variableDeclarator list_116

    variableDeclarator ::= variableDeclaratorId opt_118

    variableDeclaratorId ::= IDENTIFIER opt_120 opt_121

    variableInitializer ::= expression

    forInit ::= localVariableDeclaration
               | expressionList

    forUpdate ::= expressionList

    forControl ::= opt_122 COMMA opt_123 COMMA opt_124

    statement ::= block
                 | IF parExpression statement opt_126
                 | matchStatement
                 | FOR LPAREN forControl RPAREN statement
                 | WHILE parExpression statement
                 | RETURN opt_127 SEMI
                 | BREAK SEMI
                 | CONTINUE SEMI
                 | expression SEMI
                 | padding SEMI
                 | tryCatch

    matchStatement ::= MATCH LPAREN matchVariables RPAREN LBRACE matchCases RBRACE

    matchVariables ::= expression list_129

    matchCases ::= list_130

    matchCase ::= LPAREN matchPatterns RPAREN COLON statement

    matchPatterns ::= patternElement list_132

    patternElement ::= patternItem list_134

    patternItem ::= expression
                   | range

    range ::= expression ELLIPSIS expression

    tryCatch ::= TRY block CATCH block

    structTryCatch ::= TRY structBlock CATCH structBlock

    parExpression ::= LPAREN expression RPAREN

    expression ::= primary
                  | grp_135 expression
                  | grp_136 expression
                  | expression DOT IDENTIFIER
                  | expression COLONCOLON IDENTIFIER
                  | expression LBRACKET expression RBRACKET
                  | expression LPAREN opt_137 RPAREN
                  | ADDRESSOF LPAREN expression RPAREN
                  | SIZEOF LPAREN grp_138 RPAREN
                  | TYPENAMEOF LPAREN expression RPAREN
                  | opt_139 primitiveType LPAREN expression RPAREN
                  | expression grp_140 expression
                  | expression grp_141 expression
                  | expression grp_142 expression
                  | expression grp_143 expression
                  | expression grp_144 expression
                  | expression grp_145 expression
                  | expression OP_3433 expression
                  | expression AMP expression
                  | expression CARET expression
                  | expression PIPE expression
                  | expression ANDAND expression
                  | expression OROR expression
                  | expression QUESTION expression COLON expression
                  | expression grp_146 expression

    expressionList ::= expression list_148

    primary ::= LPAREN expression RPAREN
               | literal
               | IDENTIFIER
               | DOLLAR

    nt_endian ::= LE
                 | BE

    nt_io ::= IN
             | OUT

    literal ::= INTEGER_LITERAL
               | FLOAT_LITERAL
               | CHAR_LITERAL
               | STRING_LITERAL
               | BOOLEAN_LITERAL
               | CHARACTER_LITERAL

    list_2 ::= importStatement+

    list_3 ::= usingStatement+

    list_4 ::= namespace+

    list_5 ::= struct+

    list_6 ::= enum+

    list_7 ::= bitfield+

    list_8 ::= union+

    list_9 ::= fn+

    list_10 ::= structMemberStatement+

    seq_11 ::= expression SEMI

    grp_1 ::= list_2 importStatement
             | list_3 usingStatement
             | list_4 namespace
             | list_5 struct
             | list_6 enum
             | list_7 bitfield
             | list_8 union
             | list_9 fn
             | list_10 structMemberStatement
             | seq_11
             | statement

    list_12 ::= (list_12 grp_1)?

    list_13 ::= IDENTIFIER+

    list_14 ::= IDENTIFIER+

    seq_15 ::= DOT list_14 IDENTIFIER

    list_16 ::= (list_16 seq_15)?

    opt_18 ::= typeArguments?

    seq_19 ::= EQ typeName opt_18

    opt_20 ::= seq_19?

    opt_21 ::= attribute?

    seq_22 ::= typeName typeArguments EQ typeName typeArguments

    grp_17 ::= IDENTIFIER opt_20 opt_21 SEMI
              | seq_22

    list_24 ::= struct+

    list_25 ::= structMemberStatement+

    list_26 ::= enum+

    list_27 ::= bitfield+

    list_28 ::= union+

    list_29 ::= fn+

    list_30 ::= namespace+

    grp_23 ::= list_24 struct
              | list_25 structMemberStatement
              | list_26 enum
              | list_27 bitfield
              | list_28 union
              | list_29 fn
              | usingStatement
              | list_30 namespace

    list_31 ::= (list_31 grp_23)?

    seq_32 ::= COMMA typeParameter

    list_33 ::= (list_33 seq_32)?

    opt_34 ::= AUTO?

    opt_35 ::= AUTO?

    opt_36 ::= typeArguments?

    seq_37 ::= COMMA typeArgument

    list_38 ::= (list_38 seq_37)?

    opt_39 ::= typeParameters?

    seq_40 ::= COLON typeName

    opt_41 ::= seq_40?

    opt_42 ::= attribute?

    list_43 ::= (list_43 structStatement)?

    seq_44 ::= ELSE structStatement

    opt_45 ::= seq_44?

    list_46 ::= structMatchCase+

    opt_47 ::= typeParameters?

    opt_48 ::= attribute?

    list_49 ::= (list_49 bitfieldStatement)?

    opt_50 ::= attribute?

    seq_51 ::= ELSE bitfieldStatement

    opt_52 ::= seq_51?

    list_53 ::= bitfieldMatchCase+

    opt_54 ::= typeName?

    seq_55 ::= opt_54 IDENTIFIER

    seq_56 ::= EQ expression

    opt_57 ::= seq_56?

    seq_58 ::= COLON expression

    opt_59 ::= seq_58?

    opt_60 ::= typeParameters?

    opt_61 ::= attribute?

    list_62 ::= (list_62 unionStatement)?

    seq_63 ::= ELSE unionStatement

    opt_64 ::= seq_63?

    list_65 ::= unionMatchCase+

    seq_66 ::= LBRACKET memberSize RBRACKET

    opt_67 ::= seq_66?

    opt_68 ::= at?

    opt_69 ::= attribute?

    opt_70 ::= attribute?

    seq_71 ::= COMMA attributeItem

    list_72 ::= (list_72 seq_71)?

    opt_73 ::= expressionList?

    seq_74 ::= COMMA structMemberDeclarator

    list_75 ::= (list_75 seq_74)?

    opt_76 ::= STAR?

    opt_77 ::= IDENTIFIER?

    opt_78 ::= memberSize?

    seq_79 ::= LBRACKET opt_78 RBRACKET

    opt_80 ::= seq_79?

    seq_81 ::= COLON typeName

    opt_82 ::= seq_81?

    seq_83 ::= EQ expression

    opt_84 ::= seq_83?

    opt_85 ::= at?

    opt_86 ::= attribute?

    opt_87 ::= CONST?

    opt_88 ::= nt_endian?

    opt_89 ::= typeArguments?

    seq_90 ::= typeName opt_89

    opt_91 ::= seq_90?

    opt_92 ::= nt_io?

    grp_93 ::= expression
              | whileSize

    seq_94 ::= IN IDENTIFIER

    opt_95 ::= seq_94?

    seq_96 ::= IDENTIFIER COLONCOLON

    list_97 ::= (list_97 seq_96)?

    grp_98 ::= primitiveType
              | IDENTIFIER

    opt_99 ::= IDENTIFIER?

    opt_100 ::= attribute?

    seq_101 ::= enumEntry COMMA

    list_102 ::= (list_102 seq_101)?

    opt_103 ::= enumEntry?

    seq_104 ::= EQ patternItem

    opt_105 ::= seq_104?

    list_106 ::= parameters+

    list_107 ::= parameters+

    seq_108 ::= COMMA list_107 parameter

    list_109 ::= (list_109 seq_108)?

    seq_110 ::= list_106 parameter list_109

    opt_111 ::= seq_110?

    opt_112 ::= REF?

    list_113 ::= (list_113 blockStatement)?

    opt_114 ::= CONST?

    seq_115 ::= COMMA variableDeclarator

    list_116 ::= (list_116 seq_115)?

    seq_117 ::= EQ variableInitializer

    opt_118 ::= seq_117?

    seq_119 ::= LBRACKET RBRACKET

    opt_120 ::= seq_119?

    opt_121 ::= at?

    opt_122 ::= forInit?

    opt_123 ::= expression?

    opt_124 ::= forUpdate?

    seq_125 ::= ELSE statement

    opt_126 ::= seq_125?

    opt_127 ::= expression?

    seq_128 ::= COMMA expression

    list_129 ::= (list_129 seq_128)?

    list_130 ::= matchCase+

    seq_131 ::= COMMA patternElement

    list_132 ::= (list_132 seq_131)?

    grp_133 ::= PIPE patternItem

    list_134 ::= (list_134 grp_133)?

    grp_135 ::= PLUS
               | MINUS

    grp_136 ::= TILDE
               | BANG

    opt_137 ::= expressionList?

    grp_138 ::= expression
               | primitiveType

    opt_139 ::= nt_endian?

    grp_140 ::= STAR
               | SLASH
               | PERCENT

    grp_141 ::= PLUS
               | MINUS

    grp_142 ::= PLUS
               | MINUS
               | STAR
               | SLASH

    grp_143 ::= LSHIFT
               | URSHIFT
               | RSHIFT

    grp_144 ::= LTEQ
               | GTEQ
               | GT
               | LT

    grp_145 ::= EQEQ
               | NOTEQ

    grp_146 ::= EQ
               | PLUSEQ
               | MINUSEQ
               | STAREQ
               | SLASHEQ
               | AMPEQ
               | PIPEEQ
               | CARETEQ
               | RSHIFTEQ
               | URSHIFTEQ
               | LSHIFTEQ
               | PERCENTEQ

    seq_147 ::= COMMA expression

    list_148 ::= (list_148 seq_147)?
%End
