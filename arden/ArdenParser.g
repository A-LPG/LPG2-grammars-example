-- AUTO-GENERATED from antlr/grammars-v4 arden by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=ArdenParser
%options package=lpg.grammars.arden
%options template=dtParserTemplateF.gi
%options import_terminals=ArdenLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    mlm
%End

%Rules
    mlm ::= maintenanceCategory libraryCategory knowledgeCategory resourcesCategory END COLON

    maintenanceCategory ::= MAINTENANCE COLON titleSlot mlmNameSlot ardenVersionSlot versionSlot institutionSlot authorSlot specialistSlot dateSlot validationSlot

    libraryCategory ::= LIBRARY COLON purposeSlot explanationSlot keywordsSlot opt_1 opt_2

    knowledgeCategory ::= KNOWLEDGE COLON typeSlot dataSlot opt_3 evokeSlot logicSlot actionSlot opt_4

    resourcesCategory ::= RESOURCES COLON defaultSlot list_5

    titleSlot ::= TITLE TEXTMODECOLON slotText ADSC

    slotText ::= list_7

    mlmNameSlot ::= grp_8 MlMCOLON MLMID DSC

    ardenVersionSlot ::= ARDEN COLON ARDEN_VERSION DSC

    versionSlot ::= VERSION TEXTMODECOLON slotText ADSC

    institutionSlot ::= INSTITUTION_SLOT slotText ADSC

    authorSlot ::= AUTHOR TEXTMODECOLON slotText ADSC

    specialistSlot ::= SPECIALIST TEXTMODECOLON slotText ADSC

    dateSlot ::= DATE COLON grp_9 DSC

    validationSlot ::= VALIDATION COLON VALIDATION_CODE DSC

    purposeSlot ::= PURPOSE TEXTMODECOLON slotText ADSC

    explanationSlot ::= EXPLANATION TEXTMODECOLON slotText ADSC

    keywordsSlot ::= KEYWORDS TEXTMODECOLON slotText ADSC

    citationsSlot ::= CITATIONS TEXTMODECOLON slotText ADSC

    linksSlot ::= LINKS TEXTMODECOLON slotText ADSC

    typeSlot ::= TYPE COLON TYPE_CODE DSC

    dataSlot ::= DATA COLON opt_10 list_12 opt_13 DSC

    prioritySlot ::= PRIORITY COLON NUMBER DSC

    evokeSlot ::= EVOKE COLON opt_14 list_16 opt_17 DSC

    logicSlot ::= LOGIC COLON opt_18 list_20 opt_21 DSC

    actionSlot ::= ACTION COLON opt_22 list_24 opt_25 DSC

    urgencySlot ::= URGENCY COLON grp_26 DSC

    defaultSlot ::= DEFAULT_SLOT TWOCHARCODE DSC

    languageSlot ::= LANGUAGE TWOCHARCOLON TWOCHARCODE opt_28 list_30 opt_31 DSC

    dataStatement ::= identifierBecomes grp_32
           | grp_33 dataIdentifierAssign
           | grp_34 grp_35
           | grp_38 READ AS opt_39 fhirObject opt_40
           | IF expr THEN list_42 dataElseIf opt_43
           | FOR identifierOrObjectRef IN expr DO list_45 ENDDO
           | WHILE expr DO list_47 ENDDO
           | SWITCH identifierOrObjectRef dataSwitchCases ENDSWITCH opt_48
           | grp_49 expr
           | BREAKLOOP
           | INCLUDE IDENTIFIER

    dataElseIf ::= ENDIF
           | ELSE list_51 ENDIF
           | ELSEIF expr THEN list_53 dataElseIf

    dataSwitchCases ::= CASE exprFactor list_55 opt_56
           | DEFAULT list_58

    dataIdentifierAssign ::= READ opt_60 readPhrase
           | MLM grp_61
           | grp_64 mappingFactor
           | grp_65 AS IDENTIFIER opt_66
           | ARGUMENT
           | grp_67 objectDefinition

    identifierBecomes ::= identifierOrObjectRef ASSIGN
           | LET identifierOrObjectRef BE

    timeBecomes ::= TIME opt_68 identifierOrObjectRef ASSIGN
           | LET TIME opt_69 identifierOrObjectRef BE

    applicabilityBecomes ::= APPLICABILITY opt_70 identifierOrObjectRef ASSIGN
           | LET APPLICABILITY opt_71 identifierOrObjectRef BE

    dataVarList ::= identifierOrObjectRef opt_73

    identifierOrObjectRef ::= IDENTIFIER
           | identifierOrObjectRef LBRACK expr RBRACK
           | identifierOrObjectRef DOT IDENTIFIER

    newObjectPhrase ::= NEW IDENTIFIER opt_76

    objectInitList ::= objectInitElement list_78

    objectInitElement ::= grp_79 expr

    fuzzySetPhrase ::= FUZZY SET fuzzySetInitElement list_81
           | exprNegation FUZZIFIED BY exprNegation

    fuzzySetInitElement ::= LPAREN exprNegation COMMA exprNegation RPAREN

    readPhrase ::= opt_84 mappingFactor opt_86
           | fromOfFuncOp opt_87 mappingFactor opt_89
           | fromOfFuncOp exprFactor FROM mappingFactor opt_91

    mappingFactor ::= LBRACE DATA_MAPPING RBRACE

    callPhrase ::= CALL IDENTIFIER opt_93

    fhirObject ::= IDENTIFIER opt_95

    fhirReadPhrase ::= WHERE fhirAccessPhrase list_97

    fhirAccessPhrase ::= IT list_99 fhirCompOp exprFactor
           | FIND exprFactor IN IT list_101

    fhirCompOp ::= simpleCompOp
           | opt_102 EQUAL
           | LESS THAN opt_104
           | GREATER THAN opt_106
           | IS grp_107

    objectDefinition ::= LBRACK IDENTIFIER list_109 RBRACK

    evokeStatement ::= simpleTrigger
           | delayedEventTrigger
           | constantTimeTrigger
           | EVERY evokeDuration FOR evokeDuration STARTING startingDelay opt_111
           | EVERY evokeDuration FOR evokeDuration STARTING constantTimeTrigger opt_113

    simpleTrigger ::= eventOr
           | ANY opt_114 LPAREN eventList RPAREN

    delayedEventTrigger ::= evokeTimeOr AFTER TIME opt_115 IDENTIFIER

    constantTimeTrigger ::= evokeTimeOr
           | evokeDuration AFTER evokeTime

    eventOr ::= IDENTIFIER list_117

    eventList ::= IDENTIFIER list_119

    evokeTimeOr ::= evokeTimeExpr list_121

    evokeTimeExpr ::= evokeTime
           | evokeDuration

    evokeTime ::= grp_122
           | grp_123 ATTIME TIME_OF_DAY

    evokeDuration ::= NUMBER durationOp

    startingDelay ::= delayedEventTrigger
           | TIME opt_124 IDENTIFIER

    logicStatement ::= grp_125 expr
           | identifierBecomes grp_126
           | grp_127 callPhrase
           | IF expr THEN list_129 logicElseIf opt_130
           | FOR identifierOrObjectRef IN expr DO list_132 ENDDO
           | WHILE expr DO list_134 ENDDO
           | SWITCH identifierOrObjectRef logicSwitchCases ENDSWITCH opt_135
           | BREAKLOOP
           | CONCLUDE expr

    logicElseIf ::= ENDIF
           | ELSE list_137 ENDIF
           | ELSEIF expr THEN list_139 logicElseIf

    logicSwitchCases ::= CASE exprFactor list_141 opt_142
           | DEFAULT list_144

    actionStatement ::= grp_145 grp_146
           | IF expr THEN list_148 actionElseIf opt_149
           | FOR identifierOrObjectRef IN expr DO list_151 ENDDO
           | WHILE expr DO list_153 ENDDO
           | SWITCH identifierOrObjectRef actionSwitchCases ENDSWITCH opt_154
           | timeBecomes expr
           | identifierBecomes newObjectPhrase
           | callPhrase opt_156
           | WRITE expr opt_158
           | RETURN expr
           | BREAKLOOP

    actionElseIf ::= ENDIF
           | ELSE list_160 ENDIF
           | ELSEIF expr THEN list_162 actionElseIf

    actionSwitchCases ::= CASE exprFactor list_164 opt_165
           | DEFAULT list_167

    expr ::= opt_168 exprMerge
           | expr COMMA exprMerge

    exprMerge ::= exprSort
           | exprMerge MERGE exprSort

    exprSort ::= opt_172 exprAddList opt_174

    exprAddList ::= opt_175 exprRemoveList opt_179

    exprRemoveList ::= opt_181 exprWhere

    exprWhere ::= exprOr opt_183

    exprOr ::= exprAnd
           | exprOr OR exprAnd

    exprAnd ::= exprRange
           | exprAnd AND exprRange

    exprRange ::= exprNot opt_185

    exprNot ::= opt_186 exprComparison

    exprComparison ::= exprString opt_188
           | FIND exprString opt_189 STRINGOP exprComparison opt_191
           | exprString IS opt_192 mainCompOp
           | exprString opt_193 IN exprString
           | exprString OCCUR opt_194 grp_195
           | exprString MATCHES PATTERN exprString

    exprString ::= exprPlus
           | exprString grp_196 exprPlus
           | TRIM opt_198 exprString
           | grp_199 exprString
           | SUBSTRING exprPlus CHARACTERS opt_201 FROM exprString

    exprPlus ::= exprMul list_204

    exprMul ::= exprPower list_207

    exprPower ::= exprAtTime opt_209

    exprAtTime ::= exprBefore opt_211

    exprBefore ::= exprAgo
           | exprAgo grp_212 exprAgo

    exprAgo ::= exprFunction opt_213

    exprFunction ::= exprNegation opt_216
           | grp_217 opt_218 exprFunction
           | fromOfFuncOp opt_219 exprFunction opt_221
           | REPLACE timePart opt_222 exprNegation WITH exprFunction
           | fromOfFuncOp exprNegation FROM exprFunction opt_224
           | NEAREST exprNegation FROM exprFunction
           | INDEX indexFromOfFuncOp opt_225 exprFunction
           | INDEX grp_226 opt_227 exprNegation FROM exprFunction
           | AT grp_228 exprNegation opt_229 opt_233 exprFunction
           | INDEX opt_234 exprNegation FROM exprFunction
           | INDEX NEAREST exprNegation FROM exprFunction
           | ATTRIBUTE exprNegation FROM exprFunction
           | SUBLIST exprNegation ELEMENTS opt_236 FROM exprFunction

    exprNegation ::= opt_238 exprDuration

    exprDuration ::= exprFactor opt_239

    exprFactor ::= exprAtom
           | exprFactor LBRACK expr RBRACK
           | exprFactor DOT IDENTIFIER

    exprAtom ::= grp_240
           | grp_241
           | grp_245
           | grp_246
           | LPAREN opt_251 RPAREN

    simpleCompOp ::= grp_252

    mainCompOp ::= unaryCompOp
           | binaryCompOp exprString
           | binaryCompOpOccur exprString
           | ternaryCompOp

    unaryCompOp ::= grp_253
           | TIME OF DAY
           | LINGUISTIC VARIABLE

    binaryCompOp ::= LESS THAN opt_255
           | GREATER THAN opt_257
           | IN

    binaryCompOpOccur ::= grp_258
           | WITHIN grp_259

    ternaryCompOp ::= WITHIN exprString grp_260 exprString

    ofReadFuncOp ::= grp_261

    ofNoReadFuncOp ::= grp_262
           | ANY opt_263
           | ALL opt_264
           | NO opt_265
           | opt_266 grp_267
           | TIME opt_269
           | DAY OF WEEK
           | EXTRACT grp_270

    fromOfFuncOp ::= grp_271

    indexFromOfFuncOp ::= grp_272

    durationOp ::= grp_273

    timePart ::= grp_274

    opt_1 ::= citationsSlot | $empty

    opt_2 ::= linksSlot | $empty

    opt_3 ::= prioritySlot | $empty

    opt_4 ::= urgencySlot | $empty

    list_5 ::= languageSlot | list_5 languageSlot

    grp_6 ::= UTEXT | TEXTMODECOLON | TEXT

    list_7 ::= grp_6 | list_7 grp_6

    grp_8 ::= MLMNAME | FILENAME

    grp_9 ::= ISO_DATE | ISO_DATE_TIME

    opt_10 ::= dataStatement | $empty

    seq_11 ::= SC dataStatement

    list_12 ::= $empty | list_12 seq_11

    opt_13 ::= SC | $empty

    opt_14 ::= evokeStatement | $empty

    seq_15 ::= SC evokeStatement

    list_16 ::= $empty | list_16 seq_15

    opt_17 ::= SC | $empty

    opt_18 ::= logicStatement | $empty

    seq_19 ::= SC logicStatement

    list_20 ::= $empty | list_20 seq_19

    opt_21 ::= SC | $empty

    opt_22 ::= actionStatement | $empty

    seq_23 ::= SC actionStatement

    list_24 ::= $empty | list_24 seq_23

    opt_25 ::= SC | $empty

    grp_26 ::= NUMBER | identifierOrObjectRef

    seq_27 ::= TERM COLON STRING

    opt_28 ::= seq_27 | $empty

    seq_29 ::= SC TERM COLON STRING

    list_30 ::= $empty | list_30 seq_29

    opt_31 ::= SC | $empty

    grp_32 ::= expr | newObjectPhrase | callPhrase | fuzzySetPhrase

    grp_33 ::= IDENTIFIER ASSIGN | LET IDENTIFIER BE

    grp_34 ::= LPAREN dataVarList RPAREN ASSIGN | LET LPAREN dataVarList RPAREN BE

    seq_36 ::= AS IDENTIFIER

    opt_37 ::= seq_36 | $empty

    grp_35 ::= READ opt_37 readPhrase | ARGUMENT | callPhrase

    grp_38 ::= fhirObject ASSIGN | LET fhirObject BE

    opt_39 ::= LATEST | $empty

    opt_40 ::= fhirReadPhrase | $empty

    seq_41 ::= dataStatement SC

    list_42 ::= $empty | list_42 seq_41

    opt_43 ::= AGGREGATE | $empty

    seq_44 ::= dataStatement SC

    list_45 ::= $empty | list_45 seq_44

    seq_46 ::= dataStatement SC

    list_47 ::= $empty | list_47 seq_46

    opt_48 ::= AGGREGATE | $empty

    grp_49 ::= timeBecomes | applicabilityBecomes

    seq_50 ::= dataStatement SC

    list_51 ::= $empty | list_51 seq_50

    seq_52 ::= dataStatement SC

    list_53 ::= $empty | list_53 seq_52

    seq_54 ::= dataStatement SC

    list_55 ::= $empty | list_55 seq_54

    opt_56 ::= dataSwitchCases | $empty

    seq_57 ::= dataStatement SC

    list_58 ::= $empty | list_58 seq_57

    seq_59 ::= AS IDENTIFIER

    opt_60 ::= seq_59 | $empty

    seq_62 ::= FROM INSTITUTION STRING

    opt_63 ::= seq_62 | $empty

    grp_61 ::= TERM opt_63 | MLM_SELF

    grp_64 ::= INTERFACE | EVENT | MESSAGE | DESTINATION

    grp_65 ::= MESSAGE | DESTINATION

    opt_66 ::= mappingFactor | $empty

    grp_67 ::= OBJECT | LINGUISTIC VARIABLE

    opt_68 ::= OF | $empty

    opt_69 ::= OF | $empty

    opt_70 ::= OF | $empty

    opt_71 ::= OF | $empty

    seq_72 ::= COMMA dataVarList

    opt_73 ::= seq_72 | $empty

    grp_75 ::= expr | LBRACK objectInitList RBRACK | expr WITH LBRACK objectInitList RBRACK

    grp_74 ::= WITH grp_75

    opt_76 ::= grp_74 | $empty

    seq_77 ::= COMMA objectInitElement

    list_78 ::= $empty | list_78 seq_77

    grp_79 ::= IDENTIFIER ASSIGN | LET IDENTIFIER BE

    seq_80 ::= COMMA fuzzySetInitElement

    list_81 ::= $empty | list_81 seq_80

    opt_82 ::= OF | $empty

    seq_83 ::= ofReadFuncOp opt_82

    opt_84 ::= seq_83 | $empty

    seq_85 ::= WHERE exprOr

    opt_86 ::= seq_85 | $empty

    opt_87 ::= OF | $empty

    seq_88 ::= WHERE exprOr

    opt_89 ::= seq_88 | $empty

    seq_90 ::= WHERE exprOr

    opt_91 ::= seq_90 | $empty

    seq_92 ::= WITH expr

    opt_93 ::= seq_92 | $empty

    seq_94 ::= LBRACK dataVarList RBRACK

    opt_95 ::= seq_94 | $empty

    seq_96 ::= AND fhirAccessPhrase

    list_97 ::= $empty | list_97 seq_96

    seq_98 ::= DOT IDENTIFIER

    list_99 ::= seq_98 | list_99 seq_98

    seq_100 ::= DOT IDENTIFIER

    list_101 ::= seq_100 | list_101 seq_100

    opt_102 ::= NOT | $empty

    seq_103 ::= OR EQUAL

    opt_104 ::= seq_103 | $empty

    seq_105 ::= OR EQUAL

    opt_106 ::= seq_105 | $empty

    grp_107 ::= IN | NOT

    seq_108 ::= COMMA IDENTIFIER

    list_109 ::= $empty | list_109 seq_108

    seq_110 ::= UNTIL expr

    opt_111 ::= seq_110 | $empty

    seq_112 ::= UNTIL expr

    opt_113 ::= seq_112 | $empty

    opt_114 ::= OF | $empty

    opt_115 ::= OF | $empty

    seq_116 ::= OR IDENTIFIER

    list_117 ::= $empty | list_117 seq_116

    seq_118 ::= COMMA IDENTIFIER

    list_119 ::= $empty | list_119 seq_118

    seq_120 ::= OR evokeTimeExpr

    list_121 ::= $empty | list_121 seq_120

    grp_122 ::= ISO_DATE_TIME | ISO_DATE

    grp_123 ::= TODAY | TOMORROW | WEEKDAYLITERAL

    opt_124 ::= OF | $empty

    grp_125 ::= identifierBecomes | timeBecomes | applicabilityBecomes

    grp_126 ::= newObjectPhrase | callPhrase | fuzzySetPhrase

    grp_127 ::= LPAREN dataVarList RPAREN ASSIGN | LET LPAREN dataVarList RPAREN BE

    seq_128 ::= logicStatement SC

    list_129 ::= $empty | list_129 seq_128

    opt_130 ::= AGGREGATE | $empty

    seq_131 ::= logicStatement SC

    list_132 ::= $empty | list_132 seq_131

    seq_133 ::= logicStatement SC

    list_134 ::= $empty | list_134 seq_133

    opt_135 ::= AGGREGATE | $empty

    seq_136 ::= logicStatement SC

    list_137 ::= $empty | list_137 seq_136

    seq_138 ::= logicStatement SC

    list_139 ::= $empty | list_139 seq_138

    seq_140 ::= logicStatement SC

    list_141 ::= $empty | list_141 seq_140

    opt_142 ::= logicSwitchCases | $empty

    seq_143 ::= logicStatement SC

    list_144 ::= $empty | list_144 seq_143

    grp_145 ::= identifierBecomes | applicabilityBecomes

    grp_146 ::= expr | CONCLUDE

    seq_147 ::= actionStatement SC

    list_148 ::= $empty | list_148 seq_147

    opt_149 ::= AGGREGATE | $empty

    seq_150 ::= actionStatement SC

    list_151 ::= $empty | list_151 seq_150

    seq_152 ::= actionStatement SC

    list_153 ::= $empty | list_153 seq_152

    opt_154 ::= AGGREGATE | $empty

    seq_155 ::= DELAY expr

    opt_156 ::= seq_155 | $empty

    seq_157 ::= AT IDENTIFIER

    opt_158 ::= seq_157 | $empty

    seq_159 ::= actionStatement SC

    list_160 ::= $empty | list_160 seq_159

    seq_161 ::= actionStatement SC

    list_162 ::= $empty | list_162 seq_161

    seq_163 ::= actionStatement SC

    list_164 ::= $empty | list_164 seq_163

    opt_165 ::= actionSwitchCases | $empty

    seq_166 ::= actionStatement SC

    list_167 ::= $empty | list_167 seq_166

    opt_168 ::= COMMA | $empty

    grp_170 ::= DATA | TIME | APPLICABILITY

    opt_171 ::= grp_170 | $empty

    grp_169 ::= SORT opt_171

    opt_172 ::= grp_169 | $empty

    seq_173 ::= USING exprFunction

    opt_174 ::= seq_173 | $empty

    opt_175 ::= ADD | $empty

    seq_176 ::= AT exprRemoveList

    opt_177 ::= seq_176 | $empty

    seq_178 ::= TO exprRemoveList opt_177

    opt_179 ::= seq_178 | $empty

    seq_180 ::= REMOVE exprWhere FROM

    opt_181 ::= seq_180 | $empty

    seq_182 ::= WHERE exprOr

    opt_183 ::= seq_182 | $empty

    seq_184 ::= SEQTO exprNot

    opt_185 ::= seq_184 | $empty

    opt_186 ::= NOT | $empty

    seq_187 ::= simpleCompOp exprString

    opt_188 ::= seq_187 | $empty

    opt_189 ::= IN | $empty

    seq_190 ::= STARTING AT exprString

    opt_191 ::= seq_190 | $empty

    opt_192 ::= NOT | $empty

    opt_193 ::= NOT | $empty

    opt_194 ::= NOT | $empty

    grp_195 ::= binaryCompOpOccur exprString | ternaryCompOp | AT exprString

    grp_196 ::= DOR | FORMATTED WITH

    grp_197 ::= LEFT | RIGHT

    opt_198 ::= grp_197 | $empty

    grp_199 ::= UPPERCASE | LOWERCASE

    seq_200 ::= STARTING AT exprPlus

    opt_201 ::= seq_200 | $empty

    grp_203 ::= PLUS | MINUS

    grp_202 ::= grp_203 exprMul

    list_204 ::= $empty | list_204 grp_202

    grp_206 ::= MUL | DIV

    grp_205 ::= grp_206 exprPower

    list_207 ::= $empty | list_207 grp_205

    seq_208 ::= POWER exprAtTime

    opt_209 ::= seq_208 | $empty

    seq_210 ::= ATTIME exprAtTime

    opt_211 ::= seq_210 | $empty

    grp_212 ::= BEFORE | AFTER | FROM

    opt_213 ::= AGO | $empty

    grp_215 ::= NUMBEROP | TIME | STRINGOP | TRUTHVALUE

    grp_214 ::= AS grp_215

    opt_216 ::= grp_214 | $empty

    grp_217 ::= ofReadFuncOp | ofNoReadFuncOp

    opt_218 ::= OF | $empty

    opt_219 ::= OF | $empty

    seq_220 ::= USING exprFunction

    opt_221 ::= seq_220 | $empty

    opt_222 ::= OF | $empty

    seq_223 ::= USING exprFunction

    opt_224 ::= seq_223 | $empty

    opt_225 ::= OF | $empty

    grp_226 ::= MINIMUM | MAXIMUM

    opt_227 ::= OF | $empty

    grp_228 ::= LEAST | MOST

    opt_229 ::= OF | $empty

    grp_231 ::= ISTRUE | ARETRUE

    opt_232 ::= grp_231 | $empty

    grp_230 ::= opt_232 FROM

    opt_233 ::= grp_230 | $empty

    opt_234 ::= OF | $empty

    seq_235 ::= STARTING AT exprNegation

    opt_236 ::= seq_235 | $empty

    grp_237 ::= PLUS | MINUS

    opt_238 ::= grp_237 | $empty

    opt_239 ::= durationOp | $empty

    grp_240 ::= IDENTIFIER | NUMBER | NULL | IT

    seq_242 ::= BY exprAtom

    opt_243 ::= seq_242 | $empty

    seq_244 ::= LOCALIZED TERM opt_243

    grp_241 ::= STRING | seq_244

    grp_245 ::= NOW | ISO_DATE_TIME | ISO_DATE | EVENTTIME | TRIGGERTIME | CURRENTTIME | TIME_OF_DAY | TODAY | TOMORROW | WEEKDAYLITERAL

    opt_248 ::= TRUTHVALUE | $empty

    grp_249 ::= TRUE | FALSE

    grp_247 ::= opt_248 grp_249

    grp_246 ::= grp_247 | TRUTHVALUE NUMBER

    grp_250 ::= expr | fuzzySetPhrase

    opt_251 ::= grp_250 | $empty

    grp_252 ::= EQ | LT | GT | LE | GE | NE

    grp_253 ::= PRESENT | NULL | BOOLEAN | TRUTHVALUE | NUMBEROP | STRINGOP | TIME | DURATION | LIST | OBJECT | IDENTIFIER | FUZZY | CRISP

    seq_254 ::= OR EQUAL

    opt_255 ::= seq_254 | $empty

    seq_256 ::= OR EQUAL

    opt_257 ::= seq_256 | $empty

    grp_258 ::= EQUAL | BEFORE | AFTER

    grp_259 ::= PAST | SAME DAY AS

    grp_260 ::= TO | PRECEDING | FOLLOWING | SURROUNDING

    grp_261 ::= AVERAGE | COUNT | EXIST | SUM | MEDIAN

    grp_262 ::= SLOPE | STDDEV | VARIANCE | INTERVAL | ARCCOS | ARCSIN | ARCTAN | COSINE | SINE | TANGENT | EXP | FLOOR | INT | ROUND | CEILING | TRUNCATE | LOG | LOG10 | ABS | SQRT | STRINGOP | REVERSE | LENGTH | CLONE | APPLICABILITY | DEFUZZIFIED

    opt_263 ::= ISTRUE | $empty

    opt_264 ::= ARETRUE | $empty

    opt_265 ::= ISTRUE | $empty

    opt_266 ::= PERCENT | $empty

    grp_267 ::= INCREASE | DECREASE

    seq_268 ::= OF DAY

    opt_269 ::= seq_268 | $empty

    grp_270 ::= YEAR | MONTH | DAY | HOUR | MINUTE | SECOND | CHARACTERS | ATTRIBUTE NAMES

    grp_271 ::= MINIMUM | MAXIMUM | LAST | FIRST | EARLIEST | LATEST

    grp_272 ::= MINIMUM | MAXIMUM | EARLIEST | LATEST

    grp_273 ::= YEAR | MONTH | WEEK | DAY | HOUR | MINUTE | SECOND

    grp_274 ::= YEAR | MONTH | DAY | HOUR | MINUTE | SECOND

%End
