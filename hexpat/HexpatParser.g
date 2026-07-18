-- AUTO-GENERATED from antlr/grammars-v4 hexpat by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=HexpatParser
%options package=lpg.grammars.hexpat
%options template=dtParserTemplateF.gi
%options import_terminals=HexpatLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
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

    endian ::= LE
           | BE

    io ::= IN
           | OUT

    literal ::= INTEGER_LITERAL
           | FLOAT_LITERAL
           | CHAR_LITERAL
           | STRING_LITERAL
           | BOOLEAN_LITERAL
           | CHARACTER_LITERAL

    list_2 ::= importStatements | list_2 importStatements

    list_3 ::= usingStatements | list_3 usingStatements

    list_4 ::= namespaces | list_4 namespaces

    list_5 ::= structs | list_5 structs

    list_6 ::= enums | list_6 enums

    list_7 ::= bitfields | list_7 bitfields

    list_8 ::= unions | list_8 unions

    list_9 ::= fns | list_9 fns

    list_10 ::= structMemberStatements | list_10 structMemberStatements

    seq_11 ::= expression SEMI

    grp_1 ::= list_2 importStatement | list_3 usingStatement | list_4 namespace | list_5 struct | list_6 enum | list_7 bitfield | list_8 union | list_9 fn | list_10 structMemberStatement | seq_11 | statement

    list_12 ::= $empty | list_12 grp_1

    list_13 ::= parts | list_13 parts

    list_14 ::= parts | list_14 parts

    seq_15 ::= DOT list_14 IDENTIFIER

    list_16 ::= $empty | list_16 seq_15

    opt_18 ::= typeArguments | $empty

    seq_19 ::= EQ typeName opt_18

    opt_20 ::= seq_19 | $empty

    opt_21 ::= attribute | $empty

    seq_22 ::= typeName typeArguments EQ typeName typeArguments

    grp_17 ::= IDENTIFIER opt_20 opt_21 SEMI | seq_22

    list_24 ::= structs | list_24 structs

    list_25 ::= structMemberStatements | list_25 structMemberStatements

    list_26 ::= enums | list_26 enums

    list_27 ::= bitfields | list_27 bitfields

    list_28 ::= unions | list_28 unions

    list_29 ::= fns | list_29 fns

    list_30 ::= namespaces | list_30 namespaces

    grp_23 ::= list_24 struct | list_25 structMemberStatement | list_26 enum | list_27 bitfield | list_28 union | list_29 fn | usingStatement | list_30 namespace

    list_31 ::= $empty | list_31 grp_23

    seq_32 ::= COMMA typeParameter

    list_33 ::= $empty | list_33 seq_32

    opt_34 ::= AUTO | $empty

    opt_35 ::= AUTO | $empty

    opt_36 ::= typeArguments | $empty

    seq_37 ::= COMMA typeArgument

    list_38 ::= $empty | list_38 seq_37

    opt_39 ::= typeParameters | $empty

    seq_40 ::= COLON typeName

    opt_41 ::= seq_40 | $empty

    opt_42 ::= attribute | $empty

    list_43 ::= $empty | list_43 structStatement

    seq_44 ::= ELSE structStatement

    opt_45 ::= seq_44 | $empty

    list_46 ::= structMatchCase | list_46 structMatchCase

    opt_47 ::= typeParameters | $empty

    opt_48 ::= attribute | $empty

    list_49 ::= $empty | list_49 bitfieldStatement

    opt_50 ::= attribute | $empty

    seq_51 ::= ELSE bitfieldStatement

    opt_52 ::= seq_51 | $empty

    list_53 ::= bitfieldMatchCase | list_53 bitfieldMatchCase

    opt_54 ::= typeName | $empty

    seq_55 ::= opt_54 IDENTIFIER

    seq_56 ::= EQ expression

    opt_57 ::= seq_56 | $empty

    seq_58 ::= COLON expression

    opt_59 ::= seq_58 | $empty

    opt_60 ::= typeParameters | $empty

    opt_61 ::= attribute | $empty

    list_62 ::= $empty | list_62 unionStatement

    seq_63 ::= ELSE unionStatement

    opt_64 ::= seq_63 | $empty

    list_65 ::= unionMatchCase | list_65 unionMatchCase

    seq_66 ::= LBRACKET memberSize RBRACKET

    opt_67 ::= seq_66 | $empty

    opt_68 ::= at | $empty

    opt_69 ::= attribute | $empty

    opt_70 ::= attribute | $empty

    seq_71 ::= COMMA attributeItem

    list_72 ::= $empty | list_72 seq_71

    opt_73 ::= expressionList | $empty

    seq_74 ::= COMMA structMemberDeclarator

    list_75 ::= $empty | list_75 seq_74

    opt_76 ::= STAR | $empty

    opt_77 ::= IDENTIFIER | $empty

    opt_78 ::= memberSize | $empty

    seq_79 ::= LBRACKET opt_78 RBRACKET

    opt_80 ::= seq_79 | $empty

    seq_81 ::= COLON typeName

    opt_82 ::= seq_81 | $empty

    seq_83 ::= EQ expression

    opt_84 ::= seq_83 | $empty

    opt_85 ::= at | $empty

    opt_86 ::= attribute | $empty

    opt_87 ::= CONST | $empty

    opt_88 ::= endian | $empty

    opt_89 ::= typeArguments | $empty

    seq_90 ::= typeName opt_89

    opt_91 ::= seq_90 | $empty

    opt_92 ::= io | $empty

    grp_93 ::= expression | whileSize

    seq_94 ::= IN IDENTIFIER

    opt_95 ::= seq_94 | $empty

    seq_96 ::= IDENTIFIER COLONCOLON

    list_97 ::= $empty | list_97 seq_96

    grp_98 ::= primitiveType | IDENTIFIER

    opt_99 ::= IDENTIFIER | $empty

    opt_100 ::= attribute | $empty

    seq_101 ::= enumEntry COMMA

    list_102 ::= $empty | list_102 seq_101

    opt_103 ::= enumEntry | $empty

    seq_104 ::= EQ patternItem

    opt_105 ::= seq_104 | $empty

    list_106 ::= parameters | list_106 parameters

    list_107 ::= parameters | list_107 parameters

    seq_108 ::= COMMA list_107 parameter

    list_109 ::= $empty | list_109 seq_108

    seq_110 ::= list_106 parameter list_109

    opt_111 ::= seq_110 | $empty

    opt_112 ::= REF | $empty

    list_113 ::= $empty | list_113 blockStatement

    opt_114 ::= CONST | $empty

    seq_115 ::= COMMA variableDeclarator

    list_116 ::= $empty | list_116 seq_115

    seq_117 ::= EQ variableInitializer

    opt_118 ::= seq_117 | $empty

    seq_119 ::= LBRACKET RBRACKET

    opt_120 ::= seq_119 | $empty

    opt_121 ::= at | $empty

    opt_122 ::= forInit | $empty

    opt_123 ::= expression | $empty

    opt_124 ::= forUpdate | $empty

    seq_125 ::= ELSE statement

    opt_126 ::= seq_125 | $empty

    opt_127 ::= expression | $empty

    seq_128 ::= COMMA expression

    list_129 ::= $empty | list_129 seq_128

    list_130 ::= matchCase | list_130 matchCase

    seq_131 ::= COMMA patternElement

    list_132 ::= $empty | list_132 seq_131

    grp_133 ::= PIPE patternItem

    list_134 ::= $empty | list_134 grp_133

    grp_135 ::= PLUS | MINUS

    grp_136 ::= TILDE | BANG

    opt_137 ::= expressionList | $empty

    grp_138 ::= expression | primitiveType

    opt_139 ::= endian | $empty

    grp_140 ::= STAR | SLASH | PERCENT

    grp_141 ::= PLUS | MINUS

    grp_142 ::= PLUS | MINUS | STAR | SLASH

    grp_143 ::= LSHIFT | URSHIFT | RSHIFT

    grp_144 ::= LTEQ | GTEQ | GT | LT

    grp_145 ::= EQEQ | NOTEQ

    grp_146 ::= EQ | PLUSEQ | MINUSEQ | STAREQ | SLASHEQ | AMPEQ | PIPEEQ | CARETEQ | RSHIFTEQ | URSHIFTEQ | LSHIFTEQ | PERCENTEQ

    seq_147 ::= COMMA expression

    list_148 ::= $empty | list_148 seq_147

%End
