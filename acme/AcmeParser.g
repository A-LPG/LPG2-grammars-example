-- AUTO-GENERATED from antlr/grammars-v4 acme by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=AcmeParser
%options package=lpg.grammars.acme
%options template=dtParserTemplateF.gi
%options import_terminals=AcmeLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    acmeCompUnit
%End

%Rules
    acmeCompUnit ::= list_1 list_3

    acmeImportDeclaration ::= IMPORT grp_4 SEMICOLON

    stringLiteral ::= STRING_LITERAL

    filename ::= opt_6 IDENTIFIER list_10

    identifier ::= IDENTIFIER

    codeLiteral ::= STRING_LITERAL

    acmeFamilyDeclaration ::= grp_11 identifier grp_12

    acmeFamilyBody ::= LBRACE list_24 RBRACE

    acmeSystemDeclaration ::= SYSTEM identifier opt_28 grp_29

    acmeSystemBody ::= LBRACE list_37 RBRACE

    acmeDesignDeclaration ::= DESIGN

    acmeComponentTypeRef ::= identifier opt_39

    acmeComponentInstantiatedTypeRef ::= identifier opt_41

    acmeConnectorTypeRef ::= identifier opt_43

    acmeConnectorInstantiatedTypeRef ::= identifier opt_45

    acmePortTypeRef ::= identifier opt_47

    acmePortInstantiatedTypeRef ::= identifier opt_49

    acmeGroupTypeRef ::= identifier opt_51

    acmeGroupInstantiatedTypeRef ::= identifier opt_53

    acmeRoleTypeRef ::= identifier opt_55

    acmeRoleInstantiatedTypeRef ::= identifier opt_57

    acmeViewTypeRef ::= identifier opt_59

    acmeViewInstantiatedTypeRef ::= identifier opt_61

    acmeFamilyRef ::= identifier opt_63

    acmeFamilyInstantiationRef ::= identifier

    acmeElementTypeRef ::= identifier opt_65

    acmePropertyTypeDeclarationRef ::= identifier opt_67

    acmeInstanceRef ::= IDENTIFIER list_69

    acmeGenericElementTypeDeclaration ::= ELEMENT TYPE identifier grp_70

    acmeGenericElementBody ::= LBRACE list_77 RBRACE

    acmeGroupTypeDeclaration ::= GROUP TYPE identifier grp_78

    acmeGroupDeclaration ::= GROUP identifier opt_87 grp_88

    acmeGroupBody ::= LBRACE list_96 RBRACE

    acmeMembersBlock ::= MEMBERS LBRACE opt_100 RBRACE opt_101

    acmePortTypeDeclaration ::= PORT TYPE identifier grp_102

    acmePortDeclaration ::= PORT identifier opt_111 grp_112

    acmePortBody ::= LBRACE list_121 RBRACE

    acmeRoleTypeDeclaration ::= ROLE TYPE identifier grp_122

    acmeRoleDeclaration ::= ROLE identifier opt_131 grp_132

    acmeRoleBody ::= LBRACE list_140 RBRACE

    acmeComponentTypeDeclaration ::= COMPONENT TYPE identifier grp_141

    acmeComponentDeclaration ::= COMPONENT identifier opt_150 grp_151

    acmeComponentBody ::= LBRACE list_159 RBRACE

    acmeConnectorTypeDeclaration ::= CONNECTOR TYPE identifier grp_160

    acmeConnectorDeclaration ::= CONNECTOR identifier opt_169 grp_170

    acmeConnectorBody ::= LBRACE list_178 RBRACE

    acmeRepresentationDeclaration ::= REPRESENTATION opt_180 LBRACE acmeSystemDeclaration opt_181 RBRACE opt_182

    acmeBindingsMapDeclaration ::= BINDINGS LBRACE list_183 RBRACE opt_184

    acmeBindingDeclaration ::= acmeInstanceRef TO acmeInstanceRef opt_186 SEMICOLON

    acmeAttachmentDeclaration ::= ATTACHMENT acmeInstanceRef TO acmeInstanceRef SEMICOLON

    acmePropertyDeclaration ::= PROPERTY identifier opt_188 opt_190 opt_191 SEMICOLON

    acmePropertyValueDeclaration ::= INTEGER_LITERAL
           | list_193 FLOATING_POINT_LITERAL
           | STRING_LITERAL
           | FALSE
           | TRUE
           | acmePropertySet
           | acmePropertyRecord
           | acmePropertySequence
           | enumidentifier

    enumidentifier ::= IDENTIFIER

    acmePropertyElement ::= IDENTIFIER list_195
           | acmePropertyCompoundElement

    acmePropertyCompoundElement ::= acmePropertySet
           | acmePropertyRecord
           | acmePropertySequence

    acmePropertySet ::= LBRACE opt_199 RBRACE

    acmePropertyRecordEntry ::= identifier opt_201 ASSIGN acmePropertyValueDeclaration

    acmePropertyRecord ::= LBRACKET opt_206 RBRACKET

    acmePropertySequence ::= LANGLE opt_210 RANGLE

    acmePropertyTypeRecord ::= RECORD LBRACKET list_211 RBRACKET

    acmePropertyTypeSet ::= SET LBRACE opt_212 RBRACE

    acmePropertyTypeSequence ::= SEQUENCE LANGLE opt_213 RANGLE

    acmePropertyTypeEnum ::= ENUM LBRACE identifier list_215 RBRACE

    acmePropertyRecordFieldDescription ::= identifier COLON acmePropertyTypeRef SEMICOLON

    acmePropertyTypeRef ::= acmePropertyTypeStructure
           | acmePropertyTypeDeclarationRef

    acmePropertyTypeStructure ::= acmePropertyTypeAny
           | acmePropertyTypeInt
           | acmePropertyTypeFloat
           | acmePropertyTypeDouble
           | acmePropertyTypeString
           | acmePropertyTypeBoolean
           | acmePropertyTypeRecord
           | acmePropertyTypeSet
           | acmePropertyTypeSequence
           | acmePropertyTypeEnum

    acmePropertyTypeDeclaration ::= PROPERTY TYPE identifier grp_216

    acmePropertyBlockEntry ::= identifier opt_219 opt_221 SEMICOLON

    acmePropertyBlock ::= PROPBEGIN list_222 PROPEND

    acmePropertyTypeInt ::= INT

    acmePropertyTypeAny ::= ANY

    acmePropertyTypeFloat ::= FLOAT

    acmePropertyTypeDouble ::= DOUBLE

    acmePropertyTypeString ::= STRING

    acmePropertyTypeBoolean ::= boolean

    acmeViewDeclaration ::= VIEW identifier opt_224 grp_225

    acmeViewTypeDeclaration ::= VIEW TYPE identifier grp_230

    acmeViewBody ::= LBRACE RBRACE

    designRule ::= opt_234 opt_237 opt_239 opt_240 SEMICOLON

    acmeDesignAnalysisDeclaration ::= opt_241 ANALYSIS IDENTIFIER LPAREN opt_245 RPAREN COLON acmeTypeRef ASSIGN designRuleExpression opt_246 SEMICOLON
           | EXTERNAL opt_247 ANALYSIS IDENTIFIER LPAREN opt_251 RPAREN COLON acmeTypeRef ASSIGN grp_252 SEMICOLON

    formalParam ::= identifier COLON acmeTypeRef

    terminatedDesignRuleExpression ::= designRuleExpression SEMICOLON

    designRuleExpression ::= aSTDRImpliesExpression list_256

    aSTDRImpliesExpression ::= dRIffExpression list_258

    dRIffExpression ::= dRAndExpression list_260

    dRAndExpression ::= dRNegateExpression list_262

    dRNegateExpression ::= BANG dRNegateExpression
           | dREqualityExpression

    dREqualityExpression ::= dRRelationalExpression list_264

    dRRelationalExpression ::= dRAdditiveExpression list_266

    dRAdditiveExpression ::= dRMultiplicativeExpression list_268

    dRMultiplicativeExpression ::= dRNegativeExpression list_270

    dRNegativeExpression ::= MINUS dRNegativeExpression
           | primitiveExpression

    primitiveExpression ::= literalConstant
           | reference
           | parentheticalExpression
           | setExpression
           | literalSequence
           | literalRecord
           | quantifiedExpression
           | sequenceExpression

    parentheticalExpression ::= LPAREN designRuleExpression RPAREN

    reference ::= identifier list_273 opt_274

    setReference ::= TYPE
           | COMPONENTS
           | CONNECTORS
           | PORTS
           | ROLES
           | GROUPS
           | MEMBERS
           | PROPERTIES
           | REPRESENTATIONS
           | ATTACHEDPORTS
           | ATTACHEDROLES

    actualParams ::= LPAREN opt_278 RPAREN

    literalConstant ::= INTEGER_LITERAL
           | FLOATING_POINT_LITERAL
           | STRING_LITERAL
           | TRUE
           | FALSE
           | COMPONENT
           | GROUP
           | CONNECTOR
           | PORT
           | ROLE
           | SYSTEM
           | ELEMENT
           | PROPERTY
           | INT
           | FLOAT
           | DOUBLE
           | STRING
           | boolean
           | ENUM
           | SET
           | SEQUENCE
           | RECORD

    quantifiedExpression ::= grp_279 variableSetDeclaration list_282 BIT_OR designRuleExpression

    distinctVariableSetDeclaration ::= DISTINCT identifier list_284 opt_287 IN grp_288

    variableSetDeclaration ::= distinctVariableSetDeclaration
           | identifier list_290 opt_293 IN grp_294

    sequenceExpression ::= LANGLE pathExpression RANGLE

    setExpression ::= literalSet
           | setConstructor
           | pathExpression

    pathExpression ::= SLASH reference opt_297 opt_299 list_301

    pathExpressionContinuation ::= setReference opt_304 opt_306 list_308
           | opt_309 reference

    literalSet ::= LBRACE RBRACE
           | LBRACE grp_310 list_313 RBRACE

    literalSequence ::= LANGLE RANGLE
           | LANGLE grp_314 list_317 RANGLE

    literalRecordEntry ::= identifier opt_319 ASSIGN literalConstant

    literalRecord ::= LBRACKET opt_324 RBRACKET

    setConstructor ::= opt_325 SELECT variableSetDeclaration BIT_OR designRuleExpression opt_326
           | opt_327 COLLECT reference COLON acmeTypeRef IN grp_328 BIT_OR designRuleExpression opt_329

    acmeTypeRef ::= SYSTEM
           | COMPONENT
           | GROUP
           | CONNECTOR
           | PORT
           | ROLE
           | PROPERTY
           | ELEMENT
           | TYPE
           | REPRESENTATION
           | reference
           | acmePropertyTypeStructure

    pathseparator ::= DOT
           | COLON
           | MINUS
           | PLUS
           | BACKSLASH
           | OP_58104
           | SLASH
           | DOLLAR
           | PERCENT

    boolean ::= TRUE
           | FALSE

    list_1 ::= $empty | list_1 acmeImportDeclaration

    grp_2 ::= acmeSystemDeclaration | acmeFamilyDeclaration | acmeDesignDeclaration

    list_3 ::= grp_2 | list_3 grp_2

    grp_4 ::= filename | stringLiteral

    grp_5 ::= DOLLAR | PERCENT

    opt_6 ::= grp_5 | $empty

    grp_8 ::= DOT | COLON | MINUS | PLUS | BACKSLASH | OP_58104 | SLASH | DOLLAR | PERCENT

    list_9 ::= grp_8 | list_9 grp_8

    grp_7 ::= list_9 IDENTIFIER

    list_10 ::= $empty | list_10 grp_7

    grp_11 ::= FAMILY | STYLE

    opt_13 ::= SEMICOLON | $empty

    seq_14 ::= COMMA acmeFamilyRef

    list_15 ::= $empty | list_15 seq_14

    opt_17 ::= SEMICOLON | $empty

    grp_16 ::= SEMICOLON | WITH acmeFamilyBody opt_17

    grp_12 ::= SEMICOLON | ASSIGN acmeFamilyBody opt_13 | EXTENDS acmeFamilyRef list_15 grp_16

    grp_19 ::= PUBLIC | PRIVATE

    opt_20 ::= grp_19 | $empty

    grp_21 ::= FINAL | ABSTRACT

    opt_22 ::= grp_21 | $empty

    grp_23 ::= acmePortTypeDeclaration | acmeRoleTypeDeclaration | acmeComponentTypeDeclaration | acmeConnectorTypeDeclaration | acmeGenericElementTypeDeclaration | acmePropertyTypeDeclaration | acmeGroupTypeDeclaration

    grp_18 ::= opt_20 opt_22 grp_23 | acmeDesignAnalysisDeclaration | designRule | acmePortDeclaration | acmeRoleDeclaration | acmeComponentDeclaration | acmeConnectorDeclaration | acmePropertyDeclaration | acmeGroupDeclaration | acmeAttachmentDeclaration

    list_24 ::= $empty | list_24 grp_18

    seq_25 ::= COMMA acmeFamilyRef

    list_26 ::= $empty | list_26 seq_25

    seq_27 ::= COLON acmeFamilyRef list_26

    opt_28 ::= seq_27 | $empty

    opt_31 ::= SEMICOLON | $empty

    seq_32 ::= COMMA acmeFamilyInstantiationRef

    list_33 ::= $empty | list_33 seq_32

    opt_35 ::= SEMICOLON | $empty

    grp_34 ::= SEMICOLON | EXTENDED WITH acmeSystemBody opt_35

    grp_30 ::= acmeSystemBody opt_31 | NEW acmeFamilyInstantiationRef list_33 grp_34

    grp_29 ::= SEMICOLON | ASSIGN grp_30

    grp_36 ::= acmePropertyDeclaration | acmeComponentDeclaration | acmeConnectorDeclaration | acmeAttachmentDeclaration | acmeGroupDeclaration | designRule

    list_37 ::= $empty | list_37 grp_36

    seq_38 ::= DOT identifier

    opt_39 ::= seq_38 | $empty

    seq_40 ::= DOT identifier

    opt_41 ::= seq_40 | $empty

    seq_42 ::= DOT identifier

    opt_43 ::= seq_42 | $empty

    seq_44 ::= DOT identifier

    opt_45 ::= seq_44 | $empty

    seq_46 ::= DOT identifier

    opt_47 ::= seq_46 | $empty

    seq_48 ::= DOT identifier

    opt_49 ::= seq_48 | $empty

    seq_50 ::= DOT identifier

    opt_51 ::= seq_50 | $empty

    seq_52 ::= DOT identifier

    opt_53 ::= seq_52 | $empty

    seq_54 ::= DOT identifier

    opt_55 ::= seq_54 | $empty

    seq_56 ::= DOT identifier

    opt_57 ::= seq_56 | $empty

    seq_58 ::= DOT identifier

    opt_59 ::= seq_58 | $empty

    seq_60 ::= DOT identifier

    opt_61 ::= seq_60 | $empty

    seq_62 ::= DOT identifier

    opt_63 ::= seq_62 | $empty

    seq_64 ::= DOT identifier

    opt_65 ::= seq_64 | $empty

    seq_66 ::= DOT identifier

    opt_67 ::= seq_66 | $empty

    seq_68 ::= DOT IDENTIFIER

    list_69 ::= $empty | list_69 seq_68

    opt_71 ::= SEMICOLON | $empty

    seq_72 ::= COMMA acmeElementTypeRef

    list_73 ::= $empty | list_73 seq_72

    opt_75 ::= SEMICOLON | $empty

    grp_74 ::= SEMICOLON | WITH acmeGenericElementBody opt_75

    grp_70 ::= SEMICOLON | ASSIGN acmeGenericElementBody opt_71 | EXTENDS acmeElementTypeRef list_73 grp_74

    grp_76 ::= acmePropertyDeclaration | designRule

    list_77 ::= $empty | list_77 grp_76

    opt_79 ::= SEMICOLON | $empty

    seq_80 ::= COMMA acmeGroupTypeRef

    list_81 ::= $empty | list_81 seq_80

    opt_83 ::= SEMICOLON | $empty

    grp_82 ::= SEMICOLON | WITH acmeGroupBody opt_83

    grp_78 ::= SEMICOLON | ASSIGN acmeGroupBody opt_79 | EXTENDS acmeGroupTypeRef list_81 grp_82

    seq_84 ::= COMMA acmeGroupTypeRef

    list_85 ::= $empty | list_85 seq_84

    seq_86 ::= COLON acmeGroupTypeRef list_85

    opt_87 ::= seq_86 | $empty

    opt_90 ::= SEMICOLON | $empty

    seq_91 ::= COMMA acmeGroupInstantiatedTypeRef

    list_92 ::= $empty | list_92 seq_91

    opt_94 ::= SEMICOLON | $empty

    grp_93 ::= SEMICOLON | EXTENDED WITH acmeGroupBody opt_94

    grp_89 ::= acmeGroupBody opt_90 | NEW acmeGroupInstantiatedTypeRef list_92 grp_93

    grp_88 ::= SEMICOLON | ASSIGN grp_89

    grp_95 ::= acmeMembersBlock | acmePropertyDeclaration | designRule

    list_96 ::= $empty | list_96 grp_95

    seq_97 ::= COMMA acmeInstanceRef

    list_98 ::= $empty | list_98 seq_97

    seq_99 ::= acmeInstanceRef list_98

    opt_100 ::= seq_99 | $empty

    opt_101 ::= SEMICOLON | $empty

    opt_103 ::= SEMICOLON | $empty

    seq_104 ::= COMMA acmePortTypeRef

    list_105 ::= $empty | list_105 seq_104

    opt_107 ::= SEMICOLON | $empty

    grp_106 ::= SEMICOLON | WITH acmePortBody opt_107

    grp_102 ::= SEMICOLON | ASSIGN acmePortBody opt_103 | EXTENDS acmePortTypeRef list_105 grp_106

    seq_108 ::= COMMA acmePortTypeRef

    list_109 ::= $empty | list_109 seq_108

    seq_110 ::= COLON acmePortTypeRef list_109

    opt_111 ::= seq_110 | $empty

    opt_113 ::= SEMICOLON | $empty

    opt_115 ::= SEMICOLON | $empty

    seq_116 ::= COMMA acmePortInstantiatedTypeRef

    list_117 ::= $empty | list_117 seq_116

    opt_119 ::= SEMICOLON | $empty

    grp_118 ::= SEMICOLON | EXTENDED WITH acmePortBody opt_119

    grp_114 ::= acmePortBody opt_115 | NEW acmePortInstantiatedTypeRef list_117 grp_118

    grp_112 ::= opt_113 | ASSIGN grp_114

    grp_120 ::= acmePropertyDeclaration | designRule | acmeRepresentationDeclaration

    list_121 ::= $empty | list_121 grp_120

    opt_123 ::= SEMICOLON | $empty

    seq_124 ::= COMMA acmeRoleTypeRef

    list_125 ::= $empty | list_125 seq_124

    opt_127 ::= SEMICOLON | $empty

    grp_126 ::= SEMICOLON | WITH acmeRoleBody opt_127

    grp_122 ::= SEMICOLON | ASSIGN acmeRoleBody opt_123 | EXTENDS acmeRoleTypeRef list_125 grp_126

    seq_128 ::= COMMA acmeRoleTypeRef

    list_129 ::= $empty | list_129 seq_128

    seq_130 ::= COLON acmeRoleTypeRef list_129

    opt_131 ::= seq_130 | $empty

    opt_134 ::= SEMICOLON | $empty

    seq_135 ::= COMMA acmeRoleInstantiatedTypeRef

    list_136 ::= $empty | list_136 seq_135

    opt_138 ::= SEMICOLON | $empty

    grp_137 ::= SEMICOLON | EXTENDED WITH acmeRoleBody opt_138

    grp_133 ::= acmeRoleBody opt_134 | NEW acmeRoleInstantiatedTypeRef list_136 grp_137

    grp_132 ::= SEMICOLON | ASSIGN grp_133

    grp_139 ::= acmePropertyDeclaration | designRule | acmeRepresentationDeclaration

    list_140 ::= $empty | list_140 grp_139

    opt_142 ::= SEMICOLON | $empty

    seq_143 ::= COMMA acmeComponentTypeRef

    list_144 ::= $empty | list_144 seq_143

    opt_146 ::= SEMICOLON | $empty

    grp_145 ::= SEMICOLON | WITH acmeComponentBody opt_146

    grp_141 ::= SEMICOLON | ASSIGN acmeComponentBody opt_142 | EXTENDS acmeComponentTypeRef list_144 grp_145

    seq_147 ::= COMMA acmeComponentTypeRef

    list_148 ::= $empty | list_148 seq_147

    seq_149 ::= COLON acmeComponentTypeRef list_148

    opt_150 ::= seq_149 | $empty

    opt_153 ::= SEMICOLON | $empty

    seq_154 ::= COMMA acmeComponentInstantiatedTypeRef

    list_155 ::= $empty | list_155 seq_154

    opt_157 ::= SEMICOLON | $empty

    grp_156 ::= SEMICOLON | EXTENDED WITH acmeComponentBody opt_157

    grp_152 ::= acmeComponentBody opt_153 | NEW acmeComponentInstantiatedTypeRef list_155 grp_156

    grp_151 ::= SEMICOLON | ASSIGN grp_152

    grp_158 ::= acmePropertyDeclaration | acmePortDeclaration | designRule | acmeRepresentationDeclaration

    list_159 ::= $empty | list_159 grp_158

    opt_161 ::= SEMICOLON | $empty

    seq_162 ::= COMMA acmeConnectorTypeRef

    list_163 ::= $empty | list_163 seq_162

    opt_165 ::= SEMICOLON | $empty

    grp_164 ::= SEMICOLON | WITH acmeConnectorBody opt_165

    grp_160 ::= SEMICOLON | ASSIGN acmeConnectorBody opt_161 | EXTENDS acmeConnectorTypeRef list_163 grp_164

    seq_166 ::= COMMA acmeConnectorTypeRef

    list_167 ::= $empty | list_167 seq_166

    seq_168 ::= COLON acmeConnectorTypeRef list_167

    opt_169 ::= seq_168 | $empty

    opt_172 ::= SEMICOLON | $empty

    seq_173 ::= COMMA acmeConnectorInstantiatedTypeRef

    list_174 ::= $empty | list_174 seq_173

    opt_176 ::= SEMICOLON | $empty

    grp_175 ::= SEMICOLON | EXTENDED WITH acmeConnectorBody opt_176

    grp_171 ::= acmeConnectorBody opt_172 | NEW acmeConnectorInstantiatedTypeRef list_174 grp_175

    grp_170 ::= SEMICOLON | ASSIGN grp_171

    grp_177 ::= acmePropertyDeclaration | acmeRoleDeclaration | designRule | acmeRepresentationDeclaration

    list_178 ::= $empty | list_178 grp_177

    seq_179 ::= IDENTIFIER ASSIGN

    opt_180 ::= seq_179 | $empty

    opt_181 ::= acmeBindingsMapDeclaration | $empty

    opt_182 ::= SEMICOLON | $empty

    list_183 ::= $empty | list_183 acmeBindingDeclaration

    opt_184 ::= SEMICOLON | $empty

    seq_185 ::= LBRACE acmePropertyDeclaration acmePropertyBlock RBRACE

    opt_186 ::= seq_185 | $empty

    seq_187 ::= COLON acmePropertyTypeRef

    opt_188 ::= seq_187 | $empty

    grp_189 ::= ASSIGN acmePropertyValueDeclaration | CONTAINASSIGN acmePropertyValueDeclaration

    opt_190 ::= grp_189 | $empty

    opt_191 ::= acmePropertyBlock | $empty

    grp_192 ::= MINUS | PLUS

    list_193 ::= $empty | list_193 grp_192

    seq_194 ::= DOT IDENTIFIER

    list_195 ::= $empty | list_195 seq_194

    seq_196 ::= COMMA acmePropertyValueDeclaration

    list_197 ::= $empty | list_197 seq_196

    seq_198 ::= acmePropertyValueDeclaration list_197

    opt_199 ::= seq_198 | $empty

    seq_200 ::= COLON acmePropertyTypeRef

    opt_201 ::= seq_200 | $empty

    seq_202 ::= SEMICOLON acmePropertyRecordEntry

    list_203 ::= $empty | list_203 seq_202

    opt_204 ::= SEMICOLON | $empty

    seq_205 ::= acmePropertyRecordEntry list_203 opt_204

    opt_206 ::= seq_205 | $empty

    seq_207 ::= COMMA acmePropertyValueDeclaration

    list_208 ::= $empty | list_208 seq_207

    seq_209 ::= acmePropertyValueDeclaration list_208

    opt_210 ::= seq_209 | $empty

    list_211 ::= $empty | list_211 acmePropertyRecordFieldDescription

    opt_212 ::= acmeTypeRef | $empty

    opt_213 ::= acmePropertyTypeRef | $empty

    seq_214 ::= COMMA identifier

    list_215 ::= $empty | list_215 seq_214

    grp_217 ::= acmePropertyTypeInt | acmePropertyTypeFloat | acmePropertyTypeDouble | acmePropertyTypeString | acmePropertyTypeBoolean | acmePropertyTypeRecord | acmePropertyTypeSet | acmePropertyTypeSequence | acmePropertyTypeEnum | acmePropertyTypeAny

    grp_216 ::= SEMICOLON | ASSIGN grp_217 SEMICOLON

    seq_218 ::= COLON acmePropertyTypeRef

    opt_219 ::= seq_218 | $empty

    grp_220 ::= ASSIGN acmePropertyValueDeclaration | CONTAINASSIGN acmePropertyValueDeclaration

    opt_221 ::= grp_220 | $empty

    list_222 ::= acmePropertyBlockEntry | list_222 acmePropertyBlockEntry

    seq_223 ::= COLON acmeViewTypeRef

    opt_224 ::= seq_223 | $empty

    opt_227 ::= SEMICOLON | $empty

    opt_229 ::= SEMICOLON | $empty

    grp_228 ::= SEMICOLON | EXTENDED WITH acmeViewBody opt_229

    grp_226 ::= acmeViewBody opt_227 | NEW acmeViewInstantiatedTypeRef grp_228

    grp_225 ::= SEMICOLON | ASSIGN grp_226

    opt_231 ::= SEMICOLON | $empty

    opt_233 ::= SEMICOLON | $empty

    grp_232 ::= SEMICOLON | WITH acmeViewBody opt_233

    grp_230 ::= SEMICOLON | ASSIGN acmeViewBody opt_231 | EXTENDS acmeViewTypeRef grp_232

    opt_234 ::= DESIGN | $empty

    opt_235 ::= ASSIGN | $empty

    seq_236 ::= RULE IDENTIFIER opt_235

    opt_237 ::= seq_236 | $empty

    grp_238 ::= INVARIANT designRuleExpression | HEURISTIC designRuleExpression

    opt_239 ::= grp_238 | $empty

    opt_240 ::= acmePropertyBlock | $empty

    opt_241 ::= DESIGN | $empty

    seq_242 ::= COMMA formalParam

    list_243 ::= $empty | list_243 seq_242

    seq_244 ::= formalParam list_243

    opt_245 ::= seq_244 | $empty

    opt_246 ::= acmePropertyBlock | $empty

    opt_247 ::= DESIGN | $empty

    seq_248 ::= COMMA formalParam

    list_249 ::= $empty | list_249 seq_248

    seq_250 ::= formalParam list_249

    opt_251 ::= seq_250 | $empty

    seq_253 ::= DOT identifier

    list_254 ::= $empty | list_254 seq_253

    grp_252 ::= codeLiteral | identifier list_254

    seq_255 ::= OR aSTDRImpliesExpression

    list_256 ::= $empty | list_256 seq_255

    seq_257 ::= IMPLIES dRIffExpression

    list_258 ::= $empty | list_258 seq_257

    seq_259 ::= IFF dRAndExpression

    list_260 ::= $empty | list_260 seq_259

    seq_261 ::= AND dRNegateExpression

    list_262 ::= $empty | list_262 seq_261

    grp_263 ::= EQ dRRelationalExpression | NE dRRelationalExpression

    list_264 ::= $empty | list_264 grp_263

    grp_265 ::= LANGLE dRAdditiveExpression | RANGLE dRAdditiveExpression | LE dRAdditiveExpression | GE dRAdditiveExpression

    list_266 ::= $empty | list_266 grp_265

    grp_267 ::= PLUS dRMultiplicativeExpression | MINUS dRMultiplicativeExpression

    list_268 ::= $empty | list_268 grp_267

    grp_269 ::= STAR dRNegativeExpression | SLASH dRNegativeExpression | REM dRNegativeExpression | POWER dRNegativeExpression

    list_270 ::= $empty | list_270 grp_269

    grp_272 ::= identifier | setReference

    grp_271 ::= DOT grp_272

    list_273 ::= $empty | list_273 grp_271

    opt_274 ::= actualParams | $empty

    seq_275 ::= COMMA designRuleExpression

    list_276 ::= $empty | list_276 seq_275

    seq_277 ::= designRuleExpression list_276

    opt_278 ::= seq_277 | $empty

    opt_280 ::= UNIQUE | $empty

    grp_279 ::= FORALL | EXISTS opt_280

    seq_281 ::= COMMA variableSetDeclaration

    list_282 ::= $empty | list_282 seq_281

    seq_283 ::= COMMA identifier

    list_284 ::= $empty | list_284 seq_283

    grp_286 ::= COLON | SET_DECLARE

    grp_285 ::= grp_286 acmeTypeRef

    opt_287 ::= grp_285 | $empty

    grp_288 ::= setExpression | reference

    seq_289 ::= COMMA identifier

    list_290 ::= $empty | list_290 seq_289

    grp_292 ::= COLON | SET_DECLARE

    grp_291 ::= grp_292 acmeTypeRef

    opt_293 ::= grp_291 | $empty

    grp_294 ::= setExpression | reference

    grp_296 ::= COLON | SET_DECLARE

    grp_295 ::= grp_296 acmeTypeRef

    opt_297 ::= grp_295 | $empty

    seq_298 ::= LBRACKET designRuleExpression RBRACKET

    opt_299 ::= seq_298 | $empty

    seq_300 ::= SLASH pathExpressionContinuation

    list_301 ::= $empty | list_301 seq_300

    grp_303 ::= COLON | SET_DECLARE

    grp_302 ::= grp_303 acmeTypeRef

    opt_304 ::= grp_302 | $empty

    seq_305 ::= LBRACKET designRuleExpression RBRACKET

    opt_306 ::= seq_305 | $empty

    seq_307 ::= SLASH pathExpressionContinuation

    list_308 ::= $empty | list_308 seq_307

    opt_309 ::= ELLIPSIS | $empty

    grp_310 ::= literalConstant | reference

    grp_312 ::= literalConstant | reference

    grp_311 ::= COMMA grp_312

    list_313 ::= $empty | list_313 grp_311

    grp_314 ::= literalConstant | reference

    grp_316 ::= literalConstant | reference

    grp_315 ::= COMMA grp_316

    list_317 ::= $empty | list_317 grp_315

    seq_318 ::= COLON acmePropertyTypeRef

    opt_319 ::= seq_318 | $empty

    seq_320 ::= SEMICOLON literalRecordEntry

    list_321 ::= $empty | list_321 seq_320

    opt_322 ::= SEMICOLON | $empty

    seq_323 ::= literalRecordEntry list_321 opt_322

    opt_324 ::= seq_323 | $empty

    opt_325 ::= LBRACE | $empty

    opt_326 ::= RBRACE | $empty

    opt_327 ::= LBRACE | $empty

    grp_328 ::= setExpression | reference

    opt_329 ::= RBRACE | $empty

%End
