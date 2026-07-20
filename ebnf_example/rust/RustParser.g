-- AUTO-GENERATED from antlr/grammars-v4 rust by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=RustParser
%options package=lpg.grammars.rust
%options template=dtParserTemplateF.gi
%options import_terminals=RustLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    crate
%End

%Rules
    crate ::= list_1 list_2

    macroInvocation ::= simplePath NOT delimTokenTree

    delimTokenTree ::= LPAREN list_3 RPAREN
           | LBRACKET list_4 RBRACKET
           | LBRACE list_5 RBRACE

    tokenTree ::= list_6
           | delimTokenTree

    tokenTreeToken ::= macroIdentifierLikeToken
           | macroLiteralToken
           | macroPunctuationToken
           | macroRepOp
           | DOLLAR

    macroInvocationSemi ::= simplePath NOT LPAREN list_7 RPAREN SEMI
           | simplePath NOT LBRACKET list_8 RBRACKET SEMI
           | simplePath NOT LBRACE list_9 RBRACE

    macroRulesDefinition ::= KW_MACRORULES NOT identifier macroRulesDef

    macroRulesDef ::= LPAREN macroRules RPAREN SEMI
           | LBRACKET macroRules RBRACKET SEMI
           | LBRACE macroRules RBRACE

    macroRules ::= macroRule list_11 opt_12

    macroRule ::= macroMatcher FATARROW macroTranscriber

    macroMatcher ::= LPAREN list_13 RPAREN
           | LBRACKET list_14 RBRACKET
           | LBRACE list_15 RBRACE

    macroMatch ::= list_16
           | macroMatcher
           | DOLLAR grp_17 COLON macroFragSpec
           | DOLLAR LPAREN list_18 RPAREN opt_19 macroRepOp

    macroMatchToken ::= macroIdentifierLikeToken
           | macroLiteralToken
           | macroPunctuationToken
           | macroRepOp

    macroFragSpec ::= identifier

    macroRepSep ::= macroIdentifierLikeToken
           | macroLiteralToken
           | macroPunctuationToken
           | DOLLAR

    macroRepOp ::= STAR
           | PLUS
           | QUESTION

    macroTranscriber ::= delimTokenTree

    item ::= list_20 grp_21

    visItem ::= opt_22 grp_23

    macroItem ::= macroInvocationSemi
           | macroRulesDefinition

    module ::= opt_24 KW_MOD identifier grp_25

    externCrate ::= KW_EXTERN KW_CRATE crateRef opt_28 SEMI

    crateRef ::= identifier
           | KW_SELFVALUE

    asClause ::= KW_AS grp_29

    useDeclaration ::= KW_USE useTree SEMI

    useTree ::= opt_32 grp_33
           | simplePath opt_41

    function_ ::= functionQualifiers KW_FN identifier opt_42 LPAREN opt_43 RPAREN opt_44 opt_45 grp_46

    functionQualifiers ::= opt_47 opt_48 opt_49 opt_52

    abi ::= STRING_LITERAL
           | RAW_STRING_LITERAL

    functionParameters ::= selfParam opt_53
           | opt_55 functionParam list_57 opt_58

    selfParam ::= list_59 grp_60

    shorthandSelf ::= opt_63 opt_64 KW_SELFVALUE

    typedSelf ::= opt_65 KW_SELFVALUE COLON type_

    functionParam ::= list_66 grp_67

    functionParamPattern ::= identifier COLON grp_68

    functionReturnType ::= ARROW type_

    typeAlias ::= KW_TYPE identifier opt_69 opt_70 opt_72 SEMI

    struct_ ::= structStruct
           | tupleStruct

    structStruct ::= KW_STRUCT identifier opt_73 opt_74 grp_75

    tupleStruct ::= KW_STRUCT identifier opt_77 LPAREN opt_78 RPAREN opt_79 SEMI

    structFields ::= structField list_81 opt_82

    structField ::= list_83 opt_84 identifier COLON type_

    tupleFields ::= tupleField list_86 opt_87

    tupleField ::= list_88 opt_89 type_

    enumeration ::= KW_ENUM identifier opt_90 opt_91 LBRACE opt_92 RBRACE

    enumItems ::= enumItem list_94 opt_95

    enumItem ::= list_96 opt_97 identifier opt_99

    enumItemTuple ::= LPAREN opt_100 RPAREN

    enumItemStruct ::= LBRACE opt_101 RBRACE

    enumItemDiscriminant ::= EQ expression

    union_ ::= KW_UNION identifier opt_102 opt_103 LBRACE structFields RBRACE

    constantItem ::= KW_CONST grp_104 COLON type_ opt_106 SEMI

    staticItem ::= KW_STATIC opt_107 identifier COLON type_ opt_109 SEMI

    trait_ ::= opt_110 KW_TRAIT identifier opt_111 opt_114 opt_115 LBRACE list_116 list_117 RBRACE

    implementation ::= inherentImpl
           | traitImpl

    inherentImpl ::= KW_IMPL opt_118 type_ opt_119 LBRACE list_120 list_121 RBRACE

    traitImpl ::= opt_122 KW_IMPL opt_123 opt_124 typePath KW_FOR type_ opt_125 LBRACE list_126 list_127 RBRACE

    externBlock ::= opt_128 KW_EXTERN opt_129 LBRACE list_130 list_131 RBRACE

    externalItem ::= list_132 grp_133

    genericParams ::= LT opt_140 GT

    genericParam ::= list_141 grp_142

    lifetimeParam ::= opt_143 LIFETIME_OR_LABEL opt_145

    typeParam ::= opt_146 identifier opt_149 opt_151

    constParam ::= KW_CONST identifier COLON type_

    whereClause ::= KW_WHERE list_153 opt_154

    whereClauseItem ::= lifetimeWhereClauseItem
           | typeBoundWhereClauseItem

    lifetimeWhereClauseItem ::= lifetime COLON lifetimeBounds

    typeBoundWhereClauseItem ::= opt_155 type_ COLON opt_156

    forLifetimes ::= KW_FOR genericParams

    associatedItem ::= list_157 grp_158

    innerAttribute ::= HASH NOT LBRACKET attr RBRACKET

    outerAttribute ::= HASH LBRACKET attr RBRACKET

    attr ::= simplePath opt_161

    attrInput ::= delimTokenTree
           | EQ literalExpression

    statement ::= SEMI
           | item
           | letStatement
           | expressionStatement
           | macroInvocationSemi

    letStatement ::= list_162 KW_LET identifierPattern opt_164 opt_166 SEMI

    expressionStatement ::= expression SEMI
           | expressionWithBlock opt_167

    expression ::= literalExpression
           | pathExpression
           | expression DOT pathExprSegment LPAREN opt_169 RPAREN
           | expression DOT identifier
           | expression DOT tupleIndex
           | expression DOT KW_AWAIT
           | expression LPAREN opt_170 RPAREN
           | expression LBRACKET expression RBRACKET
           | expression QUESTION
           | grp_171 opt_172 expression
           | STAR expression
           | grp_173 expression
           | expression KW_AS typeNoBounds
           | expression grp_174 expression
           | expression grp_175 expression
           | expression grp_176 expression
           | expression AND expression
           | expression CARET expression
           | expression OR expression
           | expression comparisonOperator expression
           | expression ANDAND expression
           | expression OROR expression
           | expression DOTDOT opt_177
           | DOTDOT opt_178
           | DOTDOTEQ expression
           | expression DOTDOTEQ expression
           | expression EQ expression
           | expression compoundAssignOperator expression
           | KW_CONTINUE opt_179 opt_180
           | KW_BREAK opt_181 opt_182
           | KW_RETURN opt_183
           | LPAREN list_184 expression RPAREN
           | LBRACKET list_185 opt_186 RBRACKET
           | LPAREN list_187 opt_188 RPAREN
           | structExpression
           | enumerationVariantExpression
           | closureExpression
           | expressionWithBlock
           | macroInvocation

    comparisonOperator ::= EQEQ
           | NE
           | GT
           | LT
           | GE
           | LE

    compoundAssignOperator ::= PLUSEQ
           | MINUSEQ
           | STAREQ
           | SLASHEQ
           | PERCENTEQ
           | ANDEQ
           | OREQ
           | CARETEQ
           | LSHIFTEQ
           | RSHIFTEQ

    expressionWithBlock ::= blockExpression
           | asyncBlockExpression
           | unsafeBlockExpression
           | loopExpression
           | ifExpression
           | ifLetExpression
           | matchExpression

    literalExpression ::= CHAR_LITERAL
           | STRING_LITERAL
           | RAW_STRING_LITERAL
           | BYTE_LITERAL
           | BYTE_STRING_LITERAL
           | RAW_BYTE_STRING_LITERAL
           | INTEGER_LITERAL
           | FLOAT_LITERAL
           | KW_TRUE
           | KW_FALSE

    pathExpression ::= pathInExpression
           | qualifiedPathInExpression

    blockExpression ::= LBRACE list_190 opt_191 RBRACE

    statements ::= list_192 opt_193
           | expression

    asyncBlockExpression ::= KW_ASYNC opt_194 blockExpression

    unsafeBlockExpression ::= KW_UNSAFE blockExpression

    arrayElements ::= expression list_196 opt_197
           | expression SEMI expression

    tupleElements ::= list_199 opt_200

    tupleIndex ::= INTEGER_LITERAL

    structExpression ::= structExprStruct
           | structExprTuple
           | structExprUnit

    structExprStruct ::= pathInExpression LBRACE list_201 opt_203 RBRACE

    structExprFields ::= structExprField list_205 grp_206

    structExprField ::= list_208 grp_209

    structBase ::= DOTDOT expression

    structExprTuple ::= pathInExpression LPAREN list_211 opt_216 RPAREN

    structExprUnit ::= pathInExpression

    enumerationVariantExpression ::= enumExprStruct
           | enumExprTuple
           | enumExprFieldless

    enumExprStruct ::= pathInExpression LBRACE opt_217 RBRACE

    enumExprFields ::= enumExprField list_219 opt_220

    enumExprField ::= identifier
           | grp_221 COLON expression

    enumExprTuple ::= pathInExpression LPAREN opt_226 RPAREN

    enumExprFieldless ::= pathInExpression

    callParams ::= expression list_228 opt_229

    closureExpression ::= opt_230 grp_231 grp_233

    closureParameters ::= closureParam list_235 opt_236

    closureParam ::= list_237 pattern opt_239

    loopExpression ::= opt_240 grp_241

    infiniteLoopExpression ::= KW_LOOP blockExpression

    predicateLoopExpression ::= KW_WHILE expression blockExpression

    predicatePatternLoopExpression ::= KW_WHILE KW_LET pattern EQ expression blockExpression

    iteratorLoopExpression ::= KW_FOR pattern KW_IN expression blockExpression

    loopLabel ::= LIFETIME_OR_LABEL COLON

    ifExpression ::= KW_IF expression blockExpression opt_244

    ifLetExpression ::= KW_IF KW_LET pattern EQ expression blockExpression opt_247

    matchExpression ::= KW_MATCH expression LBRACE list_248 opt_249 RBRACE

    matchArms ::= list_251 matchArm FATARROW expression opt_252

    matchArmExpression ::= expression COMMA
           | expressionWithBlock opt_253

    matchArm ::= list_254 pattern opt_255

    matchArmGuard ::= KW_IF expression

    pattern ::= opt_256 patternNoTopAlt list_258

    patternNoTopAlt ::= patternWithoutRange
           | rangePattern

    patternWithoutRange ::= identifierPattern
           | literalPattern
           | wildcardPattern
           | restPattern
           | referencePattern
           | structPattern
           | tupleStructPattern
           | tuplePattern
           | groupedPattern
           | slicePattern
           | pathPattern
           | macroInvocation

    literalPattern ::= KW_TRUE
           | KW_FALSE
           | CHAR_LITERAL
           | BYTE_LITERAL
           | STRING_LITERAL
           | RAW_STRING_LITERAL
           | BYTE_STRING_LITERAL
           | RAW_BYTE_STRING_LITERAL
           | opt_259 INTEGER_LITERAL
           | opt_260 FLOAT_LITERAL

    identifierPattern ::= opt_261 opt_262 identifier opt_264

    wildcardPattern ::= UNDERSCORE

    restPattern ::= DOTDOT

    rangePattern ::= rangePatternBound DOTDOTEQ rangePatternBound
           | rangePatternBound DOTDOT
           | rangePatternBound DOTDOTDOT rangePatternBound

    rangePatternBound ::= CHAR_LITERAL
           | BYTE_LITERAL
           | opt_265 INTEGER_LITERAL
           | opt_266 FLOAT_LITERAL
           | pathPattern

    referencePattern ::= grp_267 opt_268 patternWithoutRange

    structPattern ::= pathInExpression LBRACE opt_269 RBRACE

    structPatternElements ::= structPatternFields opt_272
           | structPatternEtCetera

    structPatternFields ::= structPatternField list_274

    structPatternField ::= list_275 grp_276

    structPatternEtCetera ::= list_279 DOTDOT

    tupleStructPattern ::= pathInExpression LPAREN opt_280 RPAREN

    tupleStructItems ::= pattern list_282 opt_283

    tuplePattern ::= LPAREN opt_284 RPAREN

    tuplePatternItems ::= pattern COMMA
           | restPattern
           | pattern list_286 opt_287

    groupedPattern ::= LPAREN pattern RPAREN

    slicePattern ::= LBRACKET opt_288 RBRACKET

    slicePatternItems ::= pattern list_290 opt_291

    pathPattern ::= pathInExpression
           | qualifiedPathInExpression

    type_ ::= typeNoBounds
           | implTraitType
           | traitObjectType

    typeNoBounds ::= parenthesizedType
           | implTraitTypeOneBound
           | traitObjectTypeOneBound
           | typePath
           | tupleType
           | neverType
           | rawPointerType
           | referenceType
           | arrayType
           | sliceType
           | inferredType
           | qualifiedPathInType
           | bareFunctionType
           | macroInvocation

    parenthesizedType ::= LPAREN type_ RPAREN

    neverType ::= NOT

    tupleType ::= LPAREN opt_296 RPAREN

    arrayType ::= LBRACKET type_ SEMI expression RBRACKET

    sliceType ::= LBRACKET type_ RBRACKET

    referenceType ::= AND opt_297 opt_298 typeNoBounds

    rawPointerType ::= STAR grp_299 typeNoBounds

    bareFunctionType ::= opt_300 functionTypeQualifiers KW_FN LPAREN opt_301 RPAREN opt_302

    functionTypeQualifiers ::= opt_303 opt_306

    bareFunctionReturnType ::= ARROW typeNoBounds

    functionParametersMaybeNamedVariadic ::= maybeNamedFunctionParameters
           | maybeNamedFunctionParametersVariadic

    maybeNamedFunctionParameters ::= maybeNamedParam list_308 opt_309

    maybeNamedParam ::= list_310 opt_313 type_

    maybeNamedFunctionParametersVariadic ::= list_315 maybeNamedParam COMMA list_316 DOTDOTDOT

    traitObjectType ::= opt_317 typeParamBounds

    traitObjectTypeOneBound ::= opt_318 traitBound

    implTraitType ::= KW_IMPL typeParamBounds

    implTraitTypeOneBound ::= KW_IMPL traitBound

    inferredType ::= UNDERSCORE

    typeParamBounds ::= typeParamBound list_320 opt_321

    typeParamBound ::= lifetime
           | traitBound

    traitBound ::= opt_322 opt_323 typePath
           | LPAREN opt_324 opt_325 typePath RPAREN

    lifetimeBounds ::= list_327 opt_328

    lifetime ::= LIFETIME_OR_LABEL
           | KW_STATICLIFETIME
           | KW_UNDERLINELIFETIME

    simplePath ::= opt_329 simplePathSegment list_331

    simplePathSegment ::= identifier
           | KW_SUPER
           | KW_SELFVALUE
           | KW_CRATE
           | KW_DOLLARCRATE

    pathInExpression ::= opt_332 pathExprSegment list_334

    pathExprSegment ::= pathIdentSegment opt_336

    pathIdentSegment ::= identifier
           | KW_SUPER
           | KW_SELFVALUE
           | KW_SELFTYPE
           | KW_CRATE
           | KW_DOLLARCRATE

    genericArgs ::= LT GT
           | LT genericArgsLifetimes opt_338 opt_340 opt_341 GT
           | LT genericArgsTypes opt_343 opt_344 GT
           | LT list_346 genericArg opt_347 GT

    genericArg ::= lifetime
           | type_
           | genericArgsConst
           | genericArgsBinding

    genericArgsConst ::= blockExpression
           | opt_348 literalExpression
           | simplePathSegment

    genericArgsLifetimes ::= lifetime list_350

    genericArgsTypes ::= type_ list_352

    genericArgsBindings ::= genericArgsBinding list_354

    genericArgsBinding ::= identifier EQ type_

    qualifiedPathInExpression ::= qualifiedPathType list_356

    qualifiedPathType ::= LT type_ opt_358 GT

    qualifiedPathInType ::= qualifiedPathType list_360

    typePath ::= opt_361 typePathSegment list_363

    typePathSegment ::= pathIdentSegment opt_364 opt_366

    typePathFn ::= LPAREN opt_367 RPAREN opt_369

    typePathInputs ::= type_ list_371 opt_372

    visibility ::= KW_PUB opt_375

    identifier ::= IDENTIFIER

    keyword ::= KW_AS
           | KW_BREAK
           | KW_CONST
           | KW_CONTINUE
           | KW_CRATE
           | KW_ELSE
           | KW_ENUM
           | KW_EXTERN
           | KW_FALSE
           | KW_FN
           | KW_FOR
           | KW_IF
           | KW_IMPL
           | KW_IN
           | KW_LET
           | KW_LOOP
           | KW_MATCH
           | KW_MOD
           | KW_MOVE
           | KW_MUT
           | KW_PUB
           | KW_REF
           | KW_RETURN
           | KW_SELFVALUE
           | KW_SELFTYPE
           | KW_STATIC
           | KW_STRUCT
           | KW_SUPER
           | KW_TRAIT
           | KW_TRUE
           | KW_TYPE
           | KW_UNSAFE
           | KW_USE
           | KW_WHERE
           | KW_WHILE
           | KW_ASYNC
           | KW_AWAIT
           | KW_DYN
           | KW_ABSTRACT
           | KW_BECOME
           | KW_BOX
           | KW_DO
           | KW_FINAL
           | KW_MACRO
           | KW_OVERRIDE
           | KW_PRIV
           | KW_TYPEOF
           | KW_UNSIZED
           | KW_VIRTUAL
           | KW_YIELD
           | KW_TRY
           | KW_UNION
           | KW_STATICLIFETIME

    macroIdentifierLikeToken ::= keyword
           | identifier
           | KW_MACRORULES
           | KW_UNDERLINELIFETIME
           | KW_DOLLARCRATE
           | LIFETIME_OR_LABEL

    macroLiteralToken ::= literalExpression

    macroPunctuationToken ::= MINUS
           | SLASH
           | PERCENT
           | CARET
           | NOT
           | AND
           | OR
           | ANDAND
           | OROR
           | PLUSEQ
           | MINUSEQ
           | STAREQ
           | SLASHEQ
           | PERCENTEQ
           | CARETEQ
           | ANDEQ
           | OREQ
           | LSHIFTEQ
           | RSHIFTEQ
           | EQ
           | EQEQ
           | NE
           | GT
           | LT
           | GE
           | LE
           | AT
           | UNDERSCORE
           | DOT
           | DOTDOT
           | DOTDOTDOT
           | DOTDOTEQ
           | COMMA
           | SEMI
           | COLON
           | COLONCOLON
           | ARROW
           | FATARROW
           | HASH

    shl ::= opt_376 LT

    shr ::= opt_377 GT

    list_1 ::= $empty | list_1 innerAttribute

    list_2 ::= $empty | list_2 item

    list_3 ::= $empty | list_3 tokenTree

    list_4 ::= $empty | list_4 tokenTree

    list_5 ::= $empty | list_5 tokenTree

    list_6 ::= tokenTreeToken | list_6 tokenTreeToken

    list_7 ::= $empty | list_7 tokenTree

    list_8 ::= $empty | list_8 tokenTree

    list_9 ::= $empty | list_9 tokenTree

    seq_10 ::= SEMI macroRule

    list_11 ::= $empty | list_11 seq_10

    opt_12 ::= SEMI | $empty

    list_13 ::= $empty | list_13 macroMatch

    list_14 ::= $empty | list_14 macroMatch

    list_15 ::= $empty | list_15 macroMatch

    list_16 ::= macroMatchToken | list_16 macroMatchToken

    grp_17 ::= identifier | KW_SELFVALUE

    list_18 ::= macroMatch | list_18 macroMatch

    opt_19 ::= macroRepSep | $empty

    list_20 ::= $empty | list_20 outerAttribute

    grp_21 ::= visItem | macroItem

    opt_22 ::= visibility | $empty

    grp_23 ::= module | externCrate | useDeclaration | function_ | typeAlias | struct_ | enumeration | union_ | constantItem | staticItem | trait_ | implementation | externBlock

    opt_24 ::= KW_UNSAFE | $empty

    list_26 ::= $empty | list_26 innerAttribute

    list_27 ::= $empty | list_27 item

    grp_25 ::= SEMI | LBRACE list_26 list_27 RBRACE

    opt_28 ::= asClause | $empty

    grp_29 ::= identifier | UNDERSCORE

    opt_30 ::= simplePath | $empty

    seq_31 ::= opt_30 COLONCOLON

    opt_32 ::= seq_31 | $empty

    seq_34 ::= COMMA useTree

    list_35 ::= $empty | list_35 seq_34

    opt_36 ::= COMMA | $empty

    seq_37 ::= useTree list_35 opt_36

    opt_38 ::= seq_37 | $empty

    grp_33 ::= STAR | LBRACE opt_38 RBRACE

    grp_40 ::= identifier | UNDERSCORE

    grp_39 ::= KW_AS grp_40

    opt_41 ::= grp_39 | $empty

    -- genericParams disabled in this position (LALR prefers LT over LPAREN); still in grammar elsewhere
    opt_42 ::= $empty

    opt_43 ::= functionParameters | $empty

    opt_44 ::= functionReturnType | $empty

    opt_45 ::= whereClause | $empty

    grp_46 ::= blockExpression | SEMI

    opt_47 ::= KW_CONST | $empty

    opt_48 ::= KW_ASYNC | $empty

    opt_49 ::= KW_UNSAFE | $empty

    opt_50 ::= abi | $empty

    seq_51 ::= KW_EXTERN opt_50

    opt_52 ::= seq_51 | $empty

    opt_53 ::= COMMA | $empty

    seq_54 ::= selfParam COMMA

    opt_55 ::= seq_54 | $empty

    seq_56 ::= COMMA functionParam

    list_57 ::= $empty | list_57 seq_56

    opt_58 ::= COMMA | $empty

    list_59 ::= $empty | list_59 outerAttribute

    grp_60 ::= shorthandSelf | typedSelf

    opt_61 ::= lifetime | $empty

    seq_62 ::= AND opt_61

    opt_63 ::= seq_62 | $empty

    opt_64 ::= KW_MUT | $empty

    opt_65 ::= KW_MUT | $empty

    list_66 ::= $empty | list_66 outerAttribute

    grp_67 ::= functionParamPattern | DOTDOTDOT | type_

    grp_68 ::= type_ | DOTDOTDOT

    opt_69 ::= genericParams | $empty

    opt_70 ::= whereClause | $empty

    seq_71 ::= EQ type_

    opt_72 ::= seq_71 | $empty

    opt_73 ::= genericParams | $empty

    opt_74 ::= whereClause | $empty

    opt_76 ::= structFields | $empty

    grp_75 ::= LBRACE opt_76 RBRACE | SEMI

    opt_77 ::= genericParams | $empty

    opt_78 ::= tupleFields | $empty

    opt_79 ::= whereClause | $empty

    seq_80 ::= COMMA structField

    list_81 ::= $empty | list_81 seq_80

    opt_82 ::= COMMA | $empty

    list_83 ::= $empty | list_83 outerAttribute

    opt_84 ::= visibility | $empty

    seq_85 ::= COMMA tupleField

    list_86 ::= $empty | list_86 seq_85

    opt_87 ::= COMMA | $empty

    list_88 ::= $empty | list_88 outerAttribute

    opt_89 ::= visibility | $empty

    opt_90 ::= genericParams | $empty

    opt_91 ::= whereClause | $empty

    opt_92 ::= enumItems | $empty

    seq_93 ::= COMMA enumItem

    list_94 ::= $empty | list_94 seq_93

    opt_95 ::= COMMA | $empty

    list_96 ::= $empty | list_96 outerAttribute

    opt_97 ::= visibility | $empty

    grp_98 ::= enumItemTuple | enumItemStruct | enumItemDiscriminant

    opt_99 ::= grp_98 | $empty

    opt_100 ::= tupleFields | $empty

    opt_101 ::= structFields | $empty

    opt_102 ::= genericParams | $empty

    opt_103 ::= whereClause | $empty

    grp_104 ::= identifier | UNDERSCORE

    seq_105 ::= EQ expression

    opt_106 ::= seq_105 | $empty

    opt_107 ::= KW_MUT | $empty

    seq_108 ::= EQ expression

    opt_109 ::= seq_108 | $empty

    opt_110 ::= KW_UNSAFE | $empty

    opt_111 ::= genericParams | $empty

    opt_112 ::= typeParamBounds | $empty

    seq_113 ::= COLON opt_112

    opt_114 ::= seq_113 | $empty

    opt_115 ::= whereClause | $empty

    list_116 ::= $empty | list_116 innerAttribute

    list_117 ::= $empty | list_117 associatedItem

    opt_118 ::= genericParams | $empty

    opt_119 ::= whereClause | $empty

    list_120 ::= $empty | list_120 innerAttribute

    list_121 ::= $empty | list_121 associatedItem

    opt_122 ::= KW_UNSAFE | $empty

    opt_123 ::= genericParams | $empty

    opt_124 ::= NOT | $empty

    opt_125 ::= whereClause | $empty

    list_126 ::= $empty | list_126 innerAttribute

    list_127 ::= $empty | list_127 associatedItem

    opt_128 ::= KW_UNSAFE | $empty

    opt_129 ::= abi | $empty

    list_130 ::= $empty | list_130 innerAttribute

    list_131 ::= $empty | list_131 externalItem

    list_132 ::= $empty | list_132 outerAttribute

    opt_134 ::= visibility | $empty

    grp_135 ::= staticItem | function_

    grp_133 ::= macroInvocationSemi | opt_134 grp_135

    seq_136 ::= genericParam COMMA

    list_137 ::= $empty | list_137 seq_136

    opt_138 ::= COMMA | $empty

    seq_139 ::= list_137 genericParam opt_138

    opt_140 ::= seq_139 | $empty

    list_141 ::= $empty | list_141 outerAttribute

    grp_142 ::= lifetimeParam | typeParam | constParam

    opt_143 ::= outerAttribute | $empty

    seq_144 ::= COLON lifetimeBounds

    opt_145 ::= seq_144 | $empty

    opt_146 ::= outerAttribute | $empty

    opt_147 ::= typeParamBounds | $empty

    seq_148 ::= COLON opt_147

    opt_149 ::= seq_148 | $empty

    seq_150 ::= EQ type_

    opt_151 ::= seq_150 | $empty

    seq_152 ::= whereClauseItem COMMA

    list_153 ::= $empty | list_153 seq_152

    opt_154 ::= whereClauseItem | $empty

    opt_155 ::= forLifetimes | $empty

    opt_156 ::= typeParamBounds | $empty

    list_157 ::= $empty | list_157 outerAttribute

    opt_159 ::= visibility | $empty

    grp_160 ::= typeAlias | constantItem | function_

    grp_158 ::= macroInvocationSemi | opt_159 grp_160

    opt_161 ::= attrInput | $empty

    list_162 ::= $empty | list_162 outerAttribute

    seq_163 ::= COLON type_

    opt_164 ::= seq_163 | $empty

    seq_165 ::= EQ expression

    opt_166 ::= seq_165 | $empty

    opt_167 ::= SEMI | $empty

    list_168 ::= outerAttribute | list_168 outerAttribute

    opt_169 ::= callParams | $empty

    opt_170 ::= callParams | $empty

    grp_171 ::= AND | ANDAND

    opt_172 ::= KW_MUT | $empty

    grp_173 ::= MINUS | NOT

    grp_174 ::= STAR | SLASH | PERCENT

    grp_175 ::= PLUS | MINUS

    grp_176 ::= shl | shr

    opt_177 ::= expression | $empty

    opt_178 ::= expression | $empty

    opt_179 ::= LIFETIME_OR_LABEL | $empty

    opt_180 ::= expression | $empty

    opt_181 ::= LIFETIME_OR_LABEL | $empty

    opt_182 ::= expression | $empty

    opt_183 ::= expression | $empty

    list_184 ::= $empty | list_184 innerAttribute

    list_185 ::= $empty | list_185 innerAttribute

    opt_186 ::= arrayElements | $empty

    list_187 ::= $empty | list_187 innerAttribute

    opt_188 ::= tupleElements | $empty

    list_189 ::= outerAttribute | list_189 outerAttribute

    list_190 ::= $empty | list_190 innerAttribute

    opt_191 ::= statements | $empty

    list_192 ::= $empty | list_192 statement

    opt_193 ::= expression | $empty

    opt_194 ::= KW_MOVE | $empty

    seq_195 ::= COMMA expression

    list_196 ::= $empty | list_196 seq_195

    opt_197 ::= COMMA | $empty

    seq_198 ::= expression COMMA

    list_199 ::= seq_198 | list_199 seq_198

    opt_200 ::= expression | $empty

    list_201 ::= $empty | list_201 innerAttribute

    grp_202 ::= structExprFields | structBase

    opt_203 ::= grp_202 | $empty

    seq_204 ::= COMMA structExprField

    list_205 ::= $empty | list_205 seq_204

    opt_207 ::= COMMA | $empty

    grp_206 ::= COMMA structBase | opt_207

    list_208 ::= $empty | list_208 outerAttribute

    grp_210 ::= identifier | tupleIndex

    grp_209 ::= identifier | grp_210 COLON expression

    list_211 ::= $empty | list_211 innerAttribute

    seq_212 ::= COMMA expression

    list_213 ::= $empty | list_213 seq_212

    opt_214 ::= COMMA | $empty

    seq_215 ::= expression list_213 opt_214

    opt_216 ::= seq_215 | $empty

    opt_217 ::= enumExprFields | $empty

    seq_218 ::= COMMA enumExprField

    list_219 ::= $empty | list_219 seq_218

    opt_220 ::= COMMA | $empty

    grp_221 ::= identifier | tupleIndex

    seq_222 ::= COMMA expression

    list_223 ::= $empty | list_223 seq_222

    opt_224 ::= COMMA | $empty

    seq_225 ::= expression list_223 opt_224

    opt_226 ::= seq_225 | $empty

    seq_227 ::= COMMA expression

    list_228 ::= $empty | list_228 seq_227

    opt_229 ::= COMMA | $empty

    opt_230 ::= KW_MOVE | $empty

    opt_232 ::= closureParameters | $empty

    grp_231 ::= OROR | OR opt_232 OR

    grp_233 ::= expression | ARROW typeNoBounds blockExpression

    seq_234 ::= COMMA closureParam

    list_235 ::= $empty | list_235 seq_234

    opt_236 ::= COMMA | $empty

    list_237 ::= $empty | list_237 outerAttribute

    seq_238 ::= COLON type_

    opt_239 ::= seq_238 | $empty

    opt_240 ::= loopLabel | $empty

    grp_241 ::= infiniteLoopExpression | predicateLoopExpression | predicatePatternLoopExpression | iteratorLoopExpression

    grp_243 ::= blockExpression | ifExpression | ifLetExpression

    grp_242 ::= KW_ELSE grp_243

    opt_244 ::= grp_242 | $empty

    grp_246 ::= blockExpression | ifExpression | ifLetExpression

    grp_245 ::= KW_ELSE grp_246

    opt_247 ::= grp_245 | $empty

    list_248 ::= $empty | list_248 innerAttribute

    opt_249 ::= matchArms | $empty

    seq_250 ::= matchArm FATARROW matchArmExpression

    list_251 ::= $empty | list_251 seq_250

    opt_252 ::= COMMA | $empty

    opt_253 ::= COMMA | $empty

    list_254 ::= $empty | list_254 outerAttribute

    opt_255 ::= matchArmGuard | $empty

    opt_256 ::= OR | $empty

    seq_257 ::= OR patternNoTopAlt

    list_258 ::= $empty | list_258 seq_257

    opt_259 ::= MINUS | $empty

    opt_260 ::= MINUS | $empty

    opt_261 ::= KW_REF | $empty

    opt_262 ::= KW_MUT | $empty

    seq_263 ::= AT pattern

    opt_264 ::= seq_263 | $empty

    opt_265 ::= MINUS | $empty

    opt_266 ::= MINUS | $empty

    grp_267 ::= AND | ANDAND

    opt_268 ::= KW_MUT | $empty

    opt_269 ::= structPatternElements | $empty

    opt_270 ::= structPatternEtCetera | $empty

    seq_271 ::= COMMA opt_270

    opt_272 ::= seq_271 | $empty

    seq_273 ::= COMMA structPatternField

    list_274 ::= $empty | list_274 seq_273

    list_275 ::= $empty | list_275 outerAttribute

    opt_277 ::= KW_REF | $empty

    opt_278 ::= KW_MUT | $empty

    grp_276 ::= tupleIndex COLON pattern | identifier COLON pattern | opt_277 opt_278 identifier

    list_279 ::= $empty | list_279 outerAttribute

    opt_280 ::= tupleStructItems | $empty

    seq_281 ::= COMMA pattern

    list_282 ::= $empty | list_282 seq_281

    opt_283 ::= COMMA | $empty

    opt_284 ::= tuplePatternItems | $empty

    seq_285 ::= COMMA pattern

    list_286 ::= seq_285 | list_286 seq_285

    opt_287 ::= COMMA | $empty

    opt_288 ::= slicePatternItems | $empty

    seq_289 ::= COMMA pattern

    list_290 ::= $empty | list_290 seq_289

    opt_291 ::= COMMA | $empty

    seq_292 ::= type_ COMMA

    list_293 ::= seq_292 | list_293 seq_292

    opt_294 ::= type_ | $empty

    seq_295 ::= list_293 opt_294

    opt_296 ::= seq_295 | $empty

    opt_297 ::= lifetime | $empty

    opt_298 ::= KW_MUT | $empty

    grp_299 ::= KW_MUT | KW_CONST

    opt_300 ::= forLifetimes | $empty

    opt_301 ::= functionParametersMaybeNamedVariadic | $empty

    opt_302 ::= bareFunctionReturnType | $empty

    opt_303 ::= KW_UNSAFE | $empty

    opt_304 ::= abi | $empty

    seq_305 ::= KW_EXTERN opt_304

    opt_306 ::= seq_305 | $empty

    seq_307 ::= COMMA maybeNamedParam

    list_308 ::= $empty | list_308 seq_307

    opt_309 ::= COMMA | $empty

    list_310 ::= $empty | list_310 outerAttribute

    grp_312 ::= identifier | UNDERSCORE

    grp_311 ::= grp_312 COLON

    opt_313 ::= grp_311 | $empty

    seq_314 ::= maybeNamedParam COMMA

    list_315 ::= $empty | list_315 seq_314

    list_316 ::= $empty | list_316 outerAttribute

    opt_317 ::= KW_DYN | $empty

    opt_318 ::= KW_DYN | $empty

    seq_319 ::= PLUS typeParamBound

    list_320 ::= $empty | list_320 seq_319

    opt_321 ::= PLUS | $empty

    opt_322 ::= QUESTION | $empty

    opt_323 ::= forLifetimes | $empty

    opt_324 ::= QUESTION | $empty

    opt_325 ::= forLifetimes | $empty

    seq_326 ::= lifetime PLUS

    list_327 ::= $empty | list_327 seq_326

    opt_328 ::= lifetime | $empty

    opt_329 ::= COLONCOLON | $empty

    seq_330 ::= COLONCOLON simplePathSegment

    list_331 ::= $empty | list_331 seq_330

    opt_332 ::= COLONCOLON | $empty

    seq_333 ::= COLONCOLON pathExprSegment

    list_334 ::= $empty | list_334 seq_333

    seq_335 ::= COLONCOLON genericArgs

    opt_336 ::= seq_335 | $empty

    seq_337 ::= COMMA genericArgsTypes

    opt_338 ::= seq_337 | $empty

    seq_339 ::= COMMA genericArgsBindings

    opt_340 ::= seq_339 | $empty

    opt_341 ::= COMMA | $empty

    seq_342 ::= COMMA genericArgsBindings

    opt_343 ::= seq_342 | $empty

    opt_344 ::= COMMA | $empty

    seq_345 ::= genericArg COMMA

    list_346 ::= $empty | list_346 seq_345

    opt_347 ::= COMMA | $empty

    opt_348 ::= MINUS | $empty

    seq_349 ::= COMMA lifetime

    list_350 ::= $empty | list_350 seq_349

    seq_351 ::= COMMA type_

    list_352 ::= $empty | list_352 seq_351

    seq_353 ::= COMMA genericArgsBinding

    list_354 ::= $empty | list_354 seq_353

    seq_355 ::= COLONCOLON pathExprSegment

    list_356 ::= seq_355 | list_356 seq_355

    seq_357 ::= KW_AS typePath

    opt_358 ::= seq_357 | $empty

    seq_359 ::= COLONCOLON typePathSegment

    list_360 ::= seq_359 | list_360 seq_359

    opt_361 ::= COLONCOLON | $empty

    seq_362 ::= COLONCOLON typePathSegment

    list_363 ::= $empty | list_363 seq_362

    opt_364 ::= COLONCOLON | $empty

    grp_365 ::= genericArgs | typePathFn

    opt_366 ::= grp_365 | $empty

    opt_367 ::= typePathInputs | $empty

    seq_368 ::= ARROW type_

    opt_369 ::= seq_368 | $empty

    seq_370 ::= COMMA type_

    list_371 ::= $empty | list_371 seq_370

    opt_372 ::= COMMA | $empty

    grp_374 ::= KW_CRATE | KW_SELFVALUE | KW_SUPER | KW_IN simplePath

    grp_373 ::= LPAREN grp_374 RPAREN

    opt_375 ::= grp_373 | $empty

    opt_376 ::= LT | $empty

    opt_377 ::= GT | $empty

%End
