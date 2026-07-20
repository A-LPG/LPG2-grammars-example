-- AUTO-GENERATED from antlr/grammars-v4 sysml-v2 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=SysmlV2Parser
%options package=lpg.grammars.sysml_v2
%options template=btParserTemplateF.gi
%options import_terminals=SysmlV2Lexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    rootNamespace
%End

%Rules
    ownedExpression ::= IF ownedExpression QUESTION ownedExpression ELSE ownedExpression
           | ownedExpression QUESTION_QUESTION ownedExpression
           | ownedExpression IMPLIES ownedExpression
           | ownedExpression OR ownedExpression
           | ownedExpression AND ownedExpression
           | ownedExpression XOR ownedExpression
           | ownedExpression PIPE ownedExpression
           | ownedExpression AMP ownedExpression
           | ownedExpression grp_1 ownedExpression
           | ownedExpression grp_2 ownedExpression
           | ownedExpression DOT_DOT ownedExpression
           | ownedExpression grp_3 ownedExpression
           | ownedExpression grp_4 ownedExpression
           | ownedExpression grp_5 ownedExpression
           | grp_6 ownedExpression
           | grp_7 typeReference
           | ownedExpression grp_8 typeReference
           | ownedExpression AS typeReference
           | ownedExpression AT_AT typeReference
           | ownedExpression META typeReference
           | ownedExpression LBRACK opt_9 RBRACK
           | ownedExpression HASH LPAREN opt_10 RPAREN
           | ownedExpression argumentList
           | ownedExpression DOT qualifiedName
           | ownedExpression DOT_QUESTION bodyExpression
           | ownedExpression ARROW qualifiedName grp_11
           | ALL typeReference
           | baseExpression

    typeReference ::= qualifiedName

    sequenceExpressionList ::= ownedExpression list_13

    baseExpression ::= nullExpression
           | literalExpression
           | qualifiedName opt_15
           | constructorExpression
           | bodyExpression
           | LPAREN opt_16 RPAREN

    nullExpression ::= NULL
           | LPAREN RPAREN

    featureReferenceExpression ::= qualifiedName

    metadataAccessExpression ::= qualifiedName DOT METADATA

    invocationExpression ::= qualifiedName argumentList

    constructorExpression ::= NEW qualifiedName argumentList

    bodyExpression ::= LBRACE functionBodyPart RBRACE

    argumentList ::= LPAREN opt_18 RPAREN

    positionalArgumentList ::= ownedExpression list_20

    namedArgumentList ::= namedArgument list_22

    namedArgument ::= qualifiedName EQ ownedExpression

    literalExpression ::= literalBoolean
           | literalString
           | literalInteger
           | literalReal
           | literalInfinity

    literalBoolean ::= TRUE
           | FALSE

    literalString ::= DOUBLE_STRING

    literalInteger ::= INTEGER

    literalReal ::= REAL

    literalInfinity ::= STAR

    argumentMember ::= ownedExpression

    argumentExpressionMember ::= ownedExpression

    name ::= IDENTIFIER
           | STRING

    identification ::= LT name GT name
           | LT name GT
           | name

    relationshipBody ::= SEMI
           | LBRACE list_23 RBRACE
           | LBRACE list_24 RBRACE

    relationshipOwnedElement ::= ownedRelatedElement
           | ownedAnnotation

    ownedRelatedElement ::= nonFeatureElement
           | featureElement

    dependency ::= list_25 DEPENDENCY opt_28 qualifiedName list_30 TO qualifiedName list_32 relationshipBody
           | list_33 DEPENDENCY dependencyDeclaration relationshipBody

    annotation ::= qualifiedName

    ownedAnnotation ::= annotatingElement

    annotatingElement ::= comment
           | documentation
           | textualRepresentation
           | metadataFeature

    comment ::= opt_40 opt_42 REGULAR_COMMENT

    documentation ::= DOC opt_43 opt_45 REGULAR_COMMENT

    textualRepresentation ::= opt_48 LANGUAGE DOUBLE_STRING REGULAR_COMMENT

    rootNamespace ::= list_49

    namespace ::= list_50 namespaceDeclaration namespaceBody

    namespaceDeclaration ::= NAMESPACE opt_51

    namespaceBody ::= SEMI
           | LBRACE list_52 RBRACE

    namespaceBodyElement ::= namespaceMember
           | aliasMember
           | importRule

    memberPrefix ::= opt_53

    visibilityIndicator ::= PUBLIC
           | PRIVATE
           | PROTECTED

    namespaceMember ::= nonFeatureMember
           | namespaceFeatureMember

    nonFeatureMember ::= memberPrefix memberElement

    namespaceFeatureMember ::= memberPrefix featureElement

    aliasMember ::= memberPrefix ALIAS opt_55 opt_56 FOR qualifiedName relationshipBody

    qualifiedName ::= opt_58 list_60 name

    importRule ::= opt_61 IMPORT opt_62 importDeclaration relationshipBody

    importDeclaration ::= membershipImport
           | namespaceImport

    membershipImport ::= qualifiedName opt_64

    namespaceImport ::= qualifiedName COLON_COLON STAR opt_66
           | filterPackage

    filterPackage ::= filterPackageImportDeclaration list_67
           | filterPackageImport list_68

    filterPackageMember ::= LBRACK ownedExpression RBRACK

    memberElement ::= annotatingElement
           | nonFeatureElement

    nonFeatureElement ::= dependency
           | namespace
           | type
           | classifier
           | dataType
           | class
           | structure
           | metaclass
           | association
           | associationStructure
           | interaction
           | behavior
           | function
           | predicate
           | multiplicity
           | package
           | libraryPackage
           | specialization
           | conjugation
           | subclassification
           | disjoining
           | featureInverting
           | featureTyping
           | subsetting
           | redefinition
           | typeFeaturing

    featureElement ::= feature
           | step
           | expression
           | booleanExpression
           | invariant
           | connector
           | bindingConnector
           | succession
           | flow
           | successionFlow

    type ::= typePrefix TYPE typeDeclaration typeBody

    typePrefix ::= opt_69 list_70

    typeDeclaration ::= opt_71 opt_72 opt_73 list_75 list_76

    specializationPart ::= grp_77 ownedSpecialization list_79

    conjugationPart ::= grp_80 ownedConjugation

    typeRelationshipPart ::= disjoiningPart
           | unioningPart
           | intersectingPart
           | differencingPart

    disjoiningPart ::= DISJOINT FROM ownedDisjoining list_82

    unioningPart ::= UNIONS unioning list_84

    intersectingPart ::= INTERSECTS intersecting list_86

    differencingPart ::= DIFFERENCES differencing list_88

    typeBody ::= SEMI
           | LBRACE list_89 RBRACE

    typeBodyElement ::= nonFeatureMember
           | featureMember
           | aliasMember
           | importRule

    specialization ::= opt_92 SUBTYPE specificType grp_93 generalType relationshipBody

    ownedSpecialization ::= generalType

    specificType ::= qualifiedName list_95

    generalType ::= qualifiedName list_97

    conjugation ::= opt_100 CONJUGATE qualifiedName list_102 grp_103 qualifiedName list_105 relationshipBody

    ownedConjugation ::= qualifiedName list_107

    disjoining ::= opt_110 DISJOINT qualifiedName list_112 FROM qualifiedName list_114 relationshipBody

    ownedDisjoining ::= qualifiedName list_116

    unioning ::= qualifiedName list_118

    intersecting ::= qualifiedName list_120

    differencing ::= qualifiedName list_122

    featureMember ::= typeFeatureMember
           | ownedFeatureMember

    typeFeatureMember ::= memberPrefix MEMBER featureElement

    ownedFeatureMember ::= memberPrefix featureElement

    classifier ::= typePrefix CLASSIFIER classifierDeclaration typeBody

    classifierDeclaration ::= opt_123 opt_124 opt_125 opt_127 list_128

    superclassingPart ::= grp_129 ownedSubclassification list_131

    subclassification ::= opt_134 SUBCLASSIFIER qualifiedName grp_135 qualifiedName relationshipBody

    ownedSubclassification ::= qualifiedName

    feature ::= grp_136 opt_140 typeBody

    endFeaturePrefix ::= opt_141 END

    basicFeaturePrefix ::= opt_142 opt_143 opt_144 opt_146 opt_148

    featurePrefix ::= grp_149 list_150

    ownedCrossFeatureMember ::= ownedCrossFeature

    ownedCrossFeature ::= basicFeaturePrefix featureDeclaration
           | basicUsagePrefix opt_151

    featureDirection ::= IN
           | OUT
           | INOUT

    featureDeclaration ::= opt_152 grp_153 list_156

    featureIdentification ::= LT name GT opt_157
           | name

    featureRelationshipPart ::= typeRelationshipPart
           | chainingPart
           | invertingPart
           | typeFeaturingPart

    chainingPart ::= CHAINS qualifiedName list_159

    invertingPart ::= INVERSE OF ownedFeatureInverting

    typeFeaturingPart ::= FEATURED BY ownedTypeFeaturing list_161

    featureSpecializationPart ::= list_162 opt_163 list_164
           | multiplicityPart list_165

    multiplicityPart ::= ownedMultiplicity opt_169
           | grp_170

    featureSpecialization ::= typings
           | subsettings
           | references
           | crosses
           | redefinitions

    typings ::= typedBy list_174

    typedBy ::= grp_175 featureTyping

    subsettings ::= subsets list_177

    subsets ::= grp_178 ownedSubsetting

    references ::= grp_179 ownedReferenceSubsetting

    crosses ::= grp_180 ownedCrossSubsetting

    redefinitions ::= redefines list_182

    redefines ::= grp_183 ownedRedefinition

    featureTyping ::= opt_186 TYPING qualifiedName grp_187 generalType relationshipBody
           | ownedFeatureTyping
           | conjugatedPortTyping

    ownedFeatureTyping ::= qualifiedName list_189

    subsetting ::= opt_192 SUBSET specificType grp_193 generalType relationshipBody

    ownedSubsetting ::= qualifiedName list_195

    ownedReferenceSubsetting ::= qualifiedName list_197

    ownedCrossSubsetting ::= qualifiedName list_199

    redefinition ::= opt_202 REDEFINITION specificType grp_203 generalType relationshipBody

    ownedRedefinition ::= qualifiedName list_205

    ownedFeatureChain ::= featureChain
           | ownedFeatureChaining list_207

    featureChain ::= ownedFeatureChaining list_209

    ownedFeatureChaining ::= qualifiedName

    featureInverting ::= opt_212 INVERSE qualifiedName list_214 OF qualifiedName list_216 relationshipBody

    ownedFeatureInverting ::= qualifiedName list_218

    typeFeaturing ::= FEATURING opt_221 qualifiedName BY qualifiedName relationshipBody

    ownedTypeFeaturing ::= qualifiedName

    dataType ::= typePrefix DATATYPE classifierDeclaration typeBody

    class ::= typePrefix CLASS classifierDeclaration typeBody

    structure ::= typePrefix STRUCT classifierDeclaration typeBody

    association ::= typePrefix ASSOC classifierDeclaration typeBody

    associationStructure ::= typePrefix ASSOC STRUCT classifierDeclaration typeBody

    connector ::= featurePrefix CONNECTOR grp_222 typeBody

    connectorDeclaration ::= binaryConnectorDeclaration
           | naryConnectorDeclaration

    binaryConnectorDeclaration ::= opt_228 connectorEndMember TO connectorEndMember

    naryConnectorDeclaration ::= opt_229 LPAREN connectorEndMember COMMA connectorEndMember list_231 RPAREN

    connectorEndMember ::= connectorEnd

    connectorEnd ::= opt_232 opt_235 ownedReferenceSubsetting

    ownedCrossMultiplicityMember ::= ownedCrossMultiplicity

    ownedCrossMultiplicity ::= ownedMultiplicity

    bindingConnector ::= featurePrefix BINDING bindingConnectorDeclaration typeBody

    bindingConnectorDeclaration ::= featureDeclaration opt_237
           | opt_238 opt_241

    succession ::= featurePrefix SUCCESSION successionDeclaration typeBody

    successionDeclaration ::= featureDeclaration opt_243
           | opt_244 opt_247

    behavior ::= typePrefix BEHAVIOR classifierDeclaration typeBody

    step ::= featurePrefix STEP featureDeclaration opt_248 typeBody

    function ::= typePrefix FUNCTION classifierDeclaration functionBody

    functionBody ::= SEMI
           | LBRACE functionBodyPart RBRACE

    functionBodyPart ::= list_250 opt_251

    returnFeatureMember ::= memberPrefix RETURN featureElement

    resultExpressionMember ::= memberPrefix ownedExpression

    expression ::= featurePrefix EXPR featureDeclaration opt_252 functionBody

    predicate ::= typePrefix PREDICATE classifierDeclaration functionBody

    booleanExpression ::= featurePrefix BOOL featureDeclaration opt_253 functionBody

    invariant ::= featurePrefix INV opt_255 featureDeclaration opt_256 functionBody

    ownedExpressionMember ::= ownedExpression

    metadataReference ::= elementReferenceMember

    typeReferenceMember ::= typeReference

    typeResultMember ::= typeReference

    referenceTyping ::= qualifiedName

    emptyResultMember ::= emptyFeature_

    sequenceOperatorExpression ::= ownedExpressionMember COMMA sequenceExpressionListMember

    sequenceExpressionListMember ::= sequenceExpressionList

    bodyArgumentMember ::= bodyArgument

    bodyArgument ::= bodyArgumentValue

    bodyArgumentValue ::= bodyExpression

    functionReferenceArgumentMember ::= functionReferenceArgument

    functionReferenceArgument ::= functionReferenceArgumentValue

    functionReferenceArgumentValue ::= functionReferenceExpression

    functionReferenceExpression ::= functionReferenceMember

    functionReferenceMember ::= functionReference

    functionReference ::= referenceTyping

    featureChainMember ::= qualifiedName list_258

    ownedFeatureChainMember ::= featureChain
           | ownedFeatureChain

    featureReferenceMember ::= featureReference

    featureReference ::= qualifiedName

    elementReferenceMember ::= qualifiedName

    constructorResultMember ::= constructorResult

    constructorResult ::= argumentList

    instantiatedTypeMember ::= qualifiedName list_260

    instantiatedTypeReference ::= qualifiedName

    namedArgumentMember ::= namedArgument

    parameterRedefinition ::= qualifiedName

    expressionBodyMember ::= expressionBody

    expressionBody ::= LBRACE functionBodyPart RBRACE

    booleanValue ::= TRUE
           | FALSE

    realValue ::= opt_261 DOT grp_262
           | REAL

    interaction ::= typePrefix INTERACTION classifierDeclaration typeBody

    flow ::= featurePrefix FLOW flowDeclaration typeBody

    successionFlow ::= featurePrefix SUCCESSION FLOW flowDeclaration typeBody

    flowDeclaration ::= featureDeclaration opt_263 opt_265 opt_267
           | opt_268 flowEndMember TO flowEndMember
           | opt_269 opt_270 opt_272 opt_274

    payloadFeatureMember ::= payloadFeature

    payloadFeature ::= opt_275 valuePart
           | opt_276 payloadFeatureSpecializationPart opt_277
           | ownedFeatureTyping opt_278
           | ownedMultiplicity opt_279

    payloadFeatureSpecializationPart ::= list_280 opt_281 list_282
           | multiplicityPart list_283

    flowEndMember ::= flowEnd

    flowEnd ::= qualifiedName list_285

    flowFeatureMember ::= flowFeature

    flowFeature ::= flowFeatureRedefinition

    flowFeatureRedefinition ::= qualifiedName

    valuePart ::= featureValue

    featureValue ::= grp_286 ownedExpression

    multiplicity ::= multiplicitySubset
           | multiplicityRange

    multiplicitySubset ::= MULTIPLICITY opt_289 subsets typeBody

    multiplicityRange ::= MULTIPLICITY opt_290 multiplicityBounds typeBody

    ownedMultiplicity ::= ownedMultiplicityRange

    ownedMultiplicityRange ::= multiplicityBounds

    multiplicityBounds ::= LBRACK opt_292 multiplicityExpressionMember RBRACK

    multiplicityExpressionMember ::= grp_293

    metaclass ::= typePrefix METACLASS classifierDeclaration typeBody

    prefixMetadataAnnotation ::= HASH prefixMetadataFeature
           | HASH prefixMetadataUsage

    prefixMetadataMember ::= HASH prefixMetadataFeature
           | HASH prefixMetadataUsage

    prefixMetadataFeature ::= ownedFeatureTyping

    metadataFeature ::= list_294 grp_295 metadataFeatureDeclaration opt_299 metadataBody

    metadataFeatureDeclaration ::= opt_303 ownedFeatureTyping

    metadataBody ::= SEMI
           | LBRACE list_304 RBRACE
           | LBRACE list_306 RBRACE

    metadataBodyElement ::= nonFeatureMember
           | metadataBodyFeatureMember
           | aliasMember
           | importRule

    metadataBodyFeatureMember ::= metadataBodyFeature

    metadataBodyFeature ::= opt_307 opt_309 ownedRedefinition opt_310 opt_311 metadataBody

    package ::= list_312 packageDeclaration packageBody

    libraryPackage ::= opt_313 LIBRARY list_314 packageDeclaration packageBody

    packageDeclaration ::= PACKAGE opt_315

    packageBody ::= SEMI
           | LBRACE list_316 RBRACE

    elementFilterMember ::= memberPrefix FILTER ownedExpression SEMI

    dependencyDeclaration ::= opt_319 qualifiedName list_321 TO qualifiedName list_323

    annotatingMember ::= annotatingElement

    packageBodyElement ::= packageMember
           | elementFilterMember
           | aliasMember
           | importRule

    packageMember ::= memberPrefix grp_324

    definitionElement ::= package
           | libraryPackage
           | annotatingElement
           | dependency
           | attributeDefinition
           | enumerationDefinition
           | occurrenceDefinition
           | individualDefinition
           | itemDefinition
           | partDefinition
           | connectionDefinition
           | flowDefinition
           | interfaceDefinition
           | portDefinition
           | actionDefinition
           | calculationDefinition
           | stateDefinition
           | constraintDefinition
           | requirementDefinition
           | concernDefinition
           | caseDefinition
           | analysisCaseDefinition
           | verificationCaseDefinition
           | useCaseDefinition
           | viewDefinition
           | viewpointDefinition
           | renderingDefinition
           | metadataDefinition
           | allocationDefinition
           | extendedDefinition

    usageElement ::= nonOccurrenceUsageElement
           | occurrenceUsageElement

    basicDefinitionPrefix ::= ABSTRACT
           | VARIATION

    definitionExtensionKeyword ::= prefixMetadataMember

    definitionPrefix ::= opt_325 list_326

    definition ::= definitionDeclaration definitionBody

    definitionDeclaration ::= opt_327 opt_328

    definitionBody ::= SEMI
           | LBRACE list_329 RBRACE

    definitionBodyItem ::= importRule
           | memberPrefix definitionBodyItemContent
           | opt_330 memberPrefix occurrenceUsageElement

    definitionBodyItemContent ::= ALIAS opt_332 opt_333 FOR qualifiedName relationshipBody
           | VARIANT variantUsageElement
           | definitionElement
           | nonOccurrenceUsageElement

    definitionMember ::= memberPrefix definitionElement

    variantUsageMember ::= memberPrefix VARIANT variantUsageElement

    nonOccurrenceUsageMember ::= memberPrefix nonOccurrenceUsageElement

    occurrenceUsageMember ::= memberPrefix occurrenceUsageElement

    structureUsageMember ::= memberPrefix structureUsageElement

    behaviorUsageMember ::= memberPrefix behaviorUsageElement

    refPrefix ::= opt_334 opt_335 opt_337 opt_338

    basicUsagePrefix ::= refPrefix opt_339

    endUsagePrefix ::= END ownedCrossFeatureMember

    usageExtensionKeyword ::= prefixMetadataMember

    unextendedUsagePrefix ::= endUsagePrefix
           | basicUsagePrefix

    usagePrefix ::= unextendedUsagePrefix list_340

    usage ::= opt_341 usageCompletion

    usageDeclaration ::= identification opt_342
           | featureSpecializationPart

    usageCompletion ::= opt_343 usageBody

    usageBody ::= definitionBody

    defaultReferenceUsage ::= refPrefix usage

    referenceUsage ::= grp_344 REF usage

    endFeatureUsage ::= endUsagePrefix featureDeclaration usageCompletion

    variantReference ::= ownedReferenceSubsetting list_345 usageBody

    nonOccurrenceUsageElement ::= referenceUsage
           | endFeatureUsage
           | attributeUsage
           | enumerationUsage
           | bindingConnectorAsUsage
           | successionAsUsage
           | extendedUsage
           | defaultReferenceUsage

    occurrenceUsageElement ::= structureUsageElement
           | behaviorUsageElement

    structureUsageElement ::= occurrenceUsage
           | individualUsage
           | portionUsage
           | eventOccurrenceUsage
           | itemUsage
           | partUsage
           | viewUsage
           | renderingUsage
           | portUsage
           | connectionUsage
           | interfaceUsage
           | allocationUsage
           | message
           | flowUsage
           | successionFlowUsage

    behaviorUsageElement ::= actionUsage
           | calculationUsage
           | stateUsage
           | constraintUsage
           | requirementUsage
           | concernUsage
           | caseUsage
           | analysisCaseUsage
           | verificationCaseUsage
           | useCaseUsage
           | viewpointUsage
           | performActionUsage
           | exhibitStateUsage
           | includeUseCaseUsage
           | assertConstraintUsage
           | satisfyRequirementUsage

    variantUsageElement ::= variantReference
           | referenceUsage
           | attributeUsage
           | bindingConnectorAsUsage
           | successionAsUsage
           | occurrenceUsage
           | individualUsage
           | portionUsage
           | eventOccurrenceUsage
           | itemUsage
           | partUsage
           | viewUsage
           | renderingUsage
           | portUsage
           | connectionUsage
           | interfaceUsage
           | allocationUsage
           | message
           | flowUsage
           | successionFlowUsage
           | behaviorUsageElement

    subclassificationPart ::= grp_346 ownedSubclassification list_348

    attributeDefinition ::= definitionPrefix ATTRIBUTE DEF definition

    attributeUsage ::= usagePrefix ATTRIBUTE usage

    enumerationDefinition ::= list_349 ENUM DEF definitionDeclaration enumerationBody

    enumerationBody ::= SEMI
           | LBRACE list_351 RBRACE

    enumerationUsageMember ::= memberPrefix enumeratedValue

    enumeratedValue ::= opt_352 usage

    enumerationUsage ::= usagePrefix ENUM usage

    occurrenceDefinitionPrefix ::= opt_353 opt_355 list_356

    occurrenceDefinition ::= occurrenceDefinitionPrefix OCCURRENCE DEF definition

    individualDefinition ::= opt_357 INDIVIDUAL list_358 DEF definition emptyMultiplicityMember

    emptyMultiplicityMember ::= emptyMultiplicity_

    occurrenceUsagePrefix ::= basicUsagePrefix opt_359 opt_360 list_361

    occurrenceUsage ::= occurrenceUsagePrefix OCCURRENCE usage

    individualUsage ::= basicUsagePrefix INDIVIDUAL list_362 usage

    portionUsage ::= basicUsagePrefix opt_363 portionKind list_364 usage

    portionKind ::= SNAPSHOT
           | TIMESLICE

    eventOccurrenceUsage ::= occurrenceUsagePrefix EVENT grp_365 usageCompletion

    sourceSuccessionMember ::= THEN sourceSuccession

    sourceSuccession ::= sourceEndMember

    sourceEndMember ::= sourceEnd

    sourceEnd ::= opt_368

    itemDefinition ::= occurrenceDefinitionPrefix ITEM DEF definition

    itemUsage ::= occurrenceUsagePrefix ITEM usage

    partDefinition ::= occurrenceDefinitionPrefix PART DEF definition

    partUsage ::= occurrenceUsagePrefix PART usage

    portDefinition ::= definitionPrefix PORT DEF definition conjugatedPortDefinitionMember

    conjugatedPortDefinitionMember ::= conjugatedPortDefinition

    conjugatedPortDefinition ::= portConjugation

    portUsage ::= occurrenceUsagePrefix PORT usage

    conjugatedPortTyping ::= TILDE qualifiedName

    connectionDefinition ::= occurrenceDefinitionPrefix CONNECTION DEF definition

    connectionUsage ::= occurrenceUsagePrefix grp_369 usageBody

    connectorPart ::= binaryConnectorPart
           | naryConnectorPart

    binaryConnectorPart ::= connectorEndMember TO connectorEndMember

    naryConnectorPart ::= LPAREN connectorEndMember COMMA connectorEndMember list_375 RPAREN

    bindingConnectorAsUsage ::= usagePrefix opt_378 BIND connectorEndMember EQ connectorEndMember usageBody

    successionAsUsage ::= usagePrefix opt_381 FIRST connectorEndMember THEN connectorEndMember usageBody

    interfaceDefinition ::= occurrenceDefinitionPrefix INTERFACE DEF definitionDeclaration interfaceBody

    interfaceBody ::= SEMI
           | LBRACE list_382 RBRACE

    interfaceBodyItem ::= definitionMember
           | variantUsageMember
           | interfaceNonOccurrenceUsageMember
           | opt_383 interfaceOccurrenceUsageMember
           | aliasMember
           | importRule

    interfaceNonOccurrenceUsageMember ::= memberPrefix interfaceNonOccurrenceUsageElement

    interfaceNonOccurrenceUsageElement ::= referenceUsage
           | attributeUsage
           | enumerationUsage
           | bindingConnectorAsUsage
           | successionAsUsage

    interfaceOccurrenceUsageMember ::= memberPrefix interfaceOccurrenceUsageElement

    interfaceOccurrenceUsageElement ::= defaultInterfaceEnd
           | structureUsageElement
           | behaviorUsageElement

    defaultInterfaceEnd ::= END usage

    interfaceUsage ::= occurrenceUsagePrefix INTERFACE interfaceUsageDeclaration interfaceBody

    interfaceUsageDeclaration ::= opt_384 opt_385 opt_387
           | interfacePart

    interfacePart ::= binaryInterfacePart
           | naryInterfacePart

    binaryInterfacePart ::= interfaceEndMember TO interfaceEndMember

    naryInterfacePart ::= LPAREN interfaceEndMember COMMA interfaceEndMember list_389 RPAREN

    interfaceEndMember ::= interfaceEnd

    interfaceEnd ::= opt_390 opt_393 ownedReferenceSubsetting

    allocationDefinition ::= occurrenceDefinitionPrefix ALLOCATION DEF definition

    allocationUsage ::= occurrenceUsagePrefix allocationUsageDeclaration usageBody

    allocationUsageDeclaration ::= ALLOCATION opt_394 opt_396
           | ALLOCATE connectorPart

    flowDefinition ::= occurrenceDefinitionPrefix FLOW DEF definition

    message ::= occurrenceUsagePrefix MESSAGE messageDeclaration definitionBody

    messageDeclaration ::= opt_397 opt_398 opt_400 opt_402
           | messageEventMember TO messageEventMember

    messageEventMember ::= messageEvent

    messageEvent ::= ownedReferenceSubsetting

    flowUsage ::= occurrenceUsagePrefix FLOW flowDeclaration definitionBody

    successionFlowUsage ::= occurrenceUsagePrefix SUCCESSION FLOW flowDeclaration definitionBody

    flowPayloadFeatureMember ::= flowPayloadFeature

    flowPayloadFeature ::= payloadFeature

    flowEndSubsetting ::= qualifiedName
           | featureChainPrefix

    featureChainPrefix ::= list_404 ownedFeatureChaining DOT

    actionDefinition ::= occurrenceDefinitionPrefix ACTION DEF definitionDeclaration actionBody

    actionBody ::= SEMI
           | LBRACE list_405 RBRACE

    actionBodyItem ::= nonBehaviorBodyItem
           | initialNodeMember list_406
           | opt_407 actionBehaviorMember list_408
           | guardedSuccessionMember

    nonBehaviorBodyItem ::= importRule
           | aliasMember
           | definitionMember
           | variantUsageMember
           | nonOccurrenceUsageMember
           | opt_409 structureUsageMember

    actionBehaviorMember ::= behaviorUsageMember
           | actionNodeMember

    initialNodeMember ::= memberPrefix FIRST qualifiedName relationshipBody

    actionNodeMember ::= memberPrefix actionNode

    actionTargetSuccessionMember ::= memberPrefix actionTargetSuccession

    guardedSuccessionMember ::= memberPrefix guardedSuccession

    actionUsage ::= occurrenceUsagePrefix ACTION actionUsageDeclaration actionBody

    actionUsageDeclaration ::= opt_410 opt_411

    performActionUsage ::= occurrenceUsagePrefix PERFORM performActionUsageDeclaration actionBody

    performActionUsageDeclaration ::= grp_412 opt_415

    actionNode ::= controlNode
           | sendNode
           | acceptNode
           | assignmentNode
           | terminateNode
           | ifNode
           | whileLoopNode
           | forLoopNode

    actionNodeUsageDeclaration ::= ACTION opt_416

    actionNodePrefix ::= occurrenceUsagePrefix opt_417

    controlNode ::= mergeNode
           | decisionNode
           | joinNode
           | forkNode

    controlNodePrefix ::= refPrefix opt_418 opt_419 list_420

    mergeNode ::= controlNodePrefix MERGE opt_421 actionBody

    decisionNode ::= controlNodePrefix DECIDE opt_422 actionBody

    joinNode ::= controlNodePrefix JOIN opt_423 actionBody

    forkNode ::= controlNodePrefix FORK opt_424 actionBody

    acceptNode ::= occurrenceUsagePrefix acceptNodeDeclaration actionBody

    acceptNodeDeclaration ::= opt_425 ACCEPT acceptParameterPart

    acceptParameterPart ::= payloadParameterMember opt_427

    payloadParameterMember ::= payloadParameter

    payloadParameter ::= payloadFeature
           | opt_428 opt_429 triggerValuePart

    triggerValuePart ::= triggerFeatureValue

    triggerFeatureValue ::= triggerExpression

    triggerExpression ::= grp_430 argumentMember
           | WHEN argumentExpressionMember

    sendNode ::= occurrenceUsagePrefix grp_431 SEND grp_432 actionBody

    sendNodeDeclaration ::= opt_434 SEND nodeParameterMember opt_435

    senderReceiverPart ::= VIA nodeParameterMember opt_437
           | emptyParameterMember TO nodeParameterMember

    nodeParameterMember ::= nodeParameter

    nodeParameter ::= featureBinding

    featureBinding ::= ownedExpression

    emptyParameterMember ::= emptyUsage_

    assignmentNode ::= occurrenceUsagePrefix assignmentNodeDeclaration actionBody

    assignmentNodeDeclaration ::= opt_438 ASSIGN assignmentTargetMember featureChainMember COLON_EQ nodeParameterMember

    assignmentTargetMember ::= assignmentTargetParameter

    assignmentTargetParameter ::= opt_440

    assignmentTargetBinding ::= nonFeatureChainPrimaryExpression

    terminateNode ::= occurrenceUsagePrefix opt_441 TERMINATE opt_442 actionBody

    ifNode ::= actionNodePrefix IF expressionParameterMember actionBodyParameterMember opt_445

    expressionParameterMember ::= ownedExpression

    actionBodyParameterMember ::= actionBodyParameter

    actionBodyParameter ::= opt_448 LBRACE list_449 RBRACE

    ifNodeParameterMember ::= ifNode

    whileLoopNode ::= actionNodePrefix grp_450 actionBodyParameterMember opt_452

    forLoopNode ::= actionNodePrefix FOR forVariableDeclarationMember IN nodeParameterMember actionBodyParameterMember

    forVariableDeclarationMember ::= opt_453

    forVariableDeclaration ::= opt_454

    actionTargetSuccession ::= grp_455 usageBody

    targetSuccession ::= sourceEndMember THEN connectorEndMember

    guardedTargetSuccession ::= guardExpressionMember THEN transitionSuccessionMember

    defaultTargetSuccession ::= ELSE transitionSuccessionMember

    guardedSuccession ::= opt_458 FIRST featureChainMember guardExpressionMember THEN transitionSuccessionMember usageBody

    stateDefinition ::= occurrenceDefinitionPrefix STATE DEF definitionDeclaration stateDefBody

    stateDefBody ::= SEMI
           | opt_459 LBRACE list_460 RBRACE

    stateBodyItem ::= nonBehaviorBodyItem
           | opt_461 behaviorUsageMember list_462
           | transitionUsageMember
           | entryActionMember list_463
           | doActionMember
           | exitActionMember

    entryActionMember ::= memberPrefix ENTRY stateActionUsage

    doActionMember ::= memberPrefix DO stateActionUsage

    exitActionMember ::= memberPrefix EXIT stateActionUsage

    entryTransitionMember ::= memberPrefix grp_464 SEMI

    stateActionUsage ::= emptyActionUsage_ SEMI
           | statePerformActionUsage
           | stateAcceptActionUsage
           | stateSendActionUsage
           | stateAssignmentActionUsage

    statePerformActionUsage ::= performActionUsageDeclaration actionBody

    stateAcceptActionUsage ::= acceptNodeDeclaration actionBody

    stateSendActionUsage ::= sendNodeDeclaration actionBody

    stateAssignmentActionUsage ::= assignmentNodeDeclaration actionBody

    transitionUsageMember ::= memberPrefix transitionUsage

    targetTransitionUsageMember ::= memberPrefix targetTransitionUsage

    stateUsage ::= occurrenceUsagePrefix STATE actionUsageDeclaration stateUsageBody

    stateUsageBody ::= SEMI
           | opt_465 LBRACE list_466 RBRACE

    exhibitStateUsage ::= occurrenceUsagePrefix EXHIBIT grp_467 opt_470 stateUsageBody

    transitionUsage ::= TRANSITION opt_473 featureChainMember emptyParameterMember opt_475 opt_476 opt_477 THEN transitionSuccessionMember actionBody

    targetTransitionUsage ::= emptyParameterMember opt_486 THEN transitionSuccessionMember actionBody

    triggerActionMember ::= ACCEPT triggerAction

    triggerAction ::= acceptParameterPart

    guardExpressionMember ::= IF ownedExpression

    effectBehaviorMember ::= DO effectBehaviorUsage

    effectBehaviorUsage ::= emptyActionUsage_
           | transitionPerformActionUsage
           | transitionAcceptActionUsage
           | transitionSendActionUsage
           | transitionAssignmentActionUsage

    transitionPerformActionUsage ::= performActionUsageDeclaration opt_489

    transitionAcceptActionUsage ::= acceptNodeDeclaration opt_492

    transitionSendActionUsage ::= sendNodeDeclaration opt_495

    transitionAssignmentActionUsage ::= assignmentNodeDeclaration opt_498

    transitionSuccessionMember ::= transitionSuccession

    transitionSuccession ::= emptyEndMember connectorEndMember

    emptyEndMember ::= emptyFeature_

    calculationDefinition ::= occurrenceDefinitionPrefix CALC DEF definitionDeclaration calculationBody

    calculationUsage ::= occurrenceUsagePrefix CALC actionUsageDeclaration calculationBody

    calculationBody ::= SEMI
           | LBRACE calculationBodyPart RBRACE

    calculationBodyPart ::= list_499 opt_500

    calculationBodyItem ::= actionBodyItem
           | returnParameterMember

    returnParameterMember ::= memberPrefix RETURN usageElement

    constraintDefinition ::= occurrenceDefinitionPrefix CONSTRAINT DEF definitionDeclaration calculationBody

    constraintUsage ::= occurrenceUsagePrefix CONSTRAINT constraintUsageDeclaration calculationBody

    assertConstraintUsage ::= occurrenceUsagePrefix ASSERT opt_501 grp_502 calculationBody

    constraintUsageDeclaration ::= opt_504 opt_505

    requirementDefinition ::= occurrenceDefinitionPrefix REQUIREMENT DEF definitionDeclaration requirementBody

    requirementBody ::= SEMI
           | LBRACE list_506 RBRACE

    requirementBodyItem ::= definitionBodyItem
           | subjectMember
           | requirementConstraintMember
           | framedConcernMember
           | requirementVerificationMember
           | actorMember
           | stakeholderMember

    subjectMember ::= memberPrefix subjectUsage

    subjectUsage ::= SUBJECT list_507 usage

    requirementConstraintMember ::= memberPrefix requirementKind requirementConstraintUsage

    requirementKind ::= ASSUME
           | REQUIRE

    requirementConstraintUsage ::= ownedReferenceSubsetting opt_508 requirementBody
           | grp_509 constraintUsageDeclaration calculationBody

    framedConcernMember ::= memberPrefix FRAME framedConcernUsage

    framedConcernUsage ::= ownedReferenceSubsetting opt_512 calculationBody
           | grp_513 calculationUsageDeclaration calculationBody

    actorMember ::= memberPrefix actorUsage

    actorUsage ::= ACTOR list_516 usage

    stakeholderMember ::= memberPrefix stakeholderUsage

    stakeholderUsage ::= STAKEHOLDER list_517 usage

    requirementUsage ::= occurrenceUsagePrefix REQUIREMENT constraintUsageDeclaration requirementBody

    satisfyRequirementUsage ::= occurrenceUsagePrefix opt_520 SATISFY grp_521 opt_524 opt_526 requirementBody

    satisfactionSubjectMember ::= satisfactionParameter

    satisfactionParameter ::= satisfactionFeatureValue

    satisfactionFeatureValue ::= satisfactionReferenceExpression

    satisfactionReferenceExpression ::= featureChainMember

    concernDefinition ::= occurrenceDefinitionPrefix CONCERN DEF definitionDeclaration requirementBody

    concernUsage ::= occurrenceUsagePrefix CONCERN constraintUsageDeclaration requirementBody

    caseDefinition ::= occurrenceDefinitionPrefix CASE DEF definitionDeclaration caseBody

    caseUsage ::= occurrenceUsagePrefix CASE constraintUsageDeclaration caseBody

    caseBody ::= SEMI
           | LBRACE list_527 opt_528 RBRACE

    caseBodyItem ::= actionBodyItem
           | returnParameterMember
           | subjectMember
           | actorMember
           | objectiveMember

    objectiveMember ::= memberPrefix OBJECTIVE objectiveRequirementUsage

    objectiveRequirementUsage ::= list_529 constraintUsageDeclaration requirementBody

    analysisCaseDefinition ::= occurrenceDefinitionPrefix ANALYSIS DEF definitionDeclaration caseBody

    analysisCaseUsage ::= occurrenceUsagePrefix ANALYSIS constraintUsageDeclaration caseBody

    verificationCaseDefinition ::= occurrenceDefinitionPrefix VERIFICATION DEF definitionDeclaration caseBody

    verificationCaseUsage ::= occurrenceUsagePrefix VERIFICATION constraintUsageDeclaration caseBody

    requirementVerificationMember ::= memberPrefix VERIFY requirementVerificationUsage

    requirementVerificationUsage ::= ownedReferenceSubsetting list_530 requirementBody
           | grp_531 constraintUsageDeclaration requirementBody

    useCaseDefinition ::= occurrenceDefinitionPrefix USE CASE DEF definitionDeclaration caseBody

    useCaseUsage ::= occurrenceUsagePrefix USE CASE constraintUsageDeclaration caseBody

    includeUseCaseUsage ::= occurrenceUsagePrefix INCLUDE grp_534 opt_537 caseBody

    viewDefinition ::= occurrenceDefinitionPrefix VIEW DEF definitionDeclaration viewDefinitionBody

    viewDefinitionBody ::= SEMI
           | LBRACE list_538 RBRACE

    viewDefinitionBodyItem ::= definitionBodyItem
           | elementFilterMember
           | viewRenderingMember

    viewRenderingMember ::= memberPrefix RENDER viewRenderingUsage

    viewRenderingUsage ::= ownedReferenceSubsetting opt_539 usageBody
           | grp_540 usage

    viewUsage ::= occurrenceUsagePrefix VIEW opt_543 opt_544 viewBody

    viewBody ::= SEMI
           | LBRACE list_545 RBRACE

    viewBodyItem ::= definitionBodyItem
           | elementFilterMember
           | viewRenderingMember
           | expose

    expose ::= EXPOSE grp_546 relationshipBody

    membershipExpose ::= membershipImport

    namespaceExpose ::= namespaceImport

    viewpointDefinition ::= occurrenceDefinitionPrefix VIEWPOINT DEF definitionDeclaration requirementBody

    viewpointUsage ::= occurrenceUsagePrefix VIEWPOINT constraintUsageDeclaration requirementBody

    renderingDefinition ::= occurrenceDefinitionPrefix RENDERING DEF definition

    renderingUsage ::= occurrenceUsagePrefix RENDERING usage

    metadataDefinition ::= opt_547 list_548 METADATA DEF definition

    prefixMetadataUsage ::= ownedFeatureTyping

    metadataUsage ::= list_549 grp_550 metadataUsageDeclaration opt_554 metadataBody

    metadataUsageDeclaration ::= opt_558 ownedFeatureTyping

    metadataBodyUsageMember ::= metadataBodyUsage

    metadataBodyUsage ::= opt_559 opt_561 ownedRedefinition opt_562 opt_563 metadataBody

    extendedDefinition ::= opt_564 list_565 DEF definition

    extendedUsage ::= unextendedUsagePrefix list_566 usage

    filterPackageImportDeclaration ::= membershipImport
           | namespaceImportDirect

    namespaceImportDirect ::= qualifiedName COLON_COLON STAR opt_568

    calculationUsageDeclaration ::= opt_569 opt_570

    emptyActionUsage_ ::= $empty

    emptyFeature_ ::= $empty

    emptyMultiplicity_ ::= $empty

    emptyUsage_ ::= $empty

    filterPackageImport ::= IDENTIFIER

    nonFeatureChainPrimaryExpression ::= IDENTIFIER

    portConjugation ::= $empty

    grp_1 ::= EQ_EQ | BANG_EQ | EQ_EQ_EQ | BANG_EQ_EQ

    grp_2 ::= LT | GT | LE | GE

    grp_3 ::= PLUS | MINUS

    grp_4 ::= STAR | SLASH | PERCENT

    grp_5 ::= STAR_STAR | CARET

    grp_6 ::= PLUS | MINUS | TILDE | NOT

    grp_7 ::= AT_SIGN | AT_AT

    grp_8 ::= ISTYPE | HASTYPE | AT_SIGN

    opt_9 ::= sequenceExpressionList | $empty

    opt_10 ::= sequenceExpressionList | $empty

    grp_11 ::= bodyExpression | argumentList

    seq_12 ::= COMMA ownedExpression

    list_13 ::= $empty | list_13 seq_12

    grp_14 ::= argumentList | DOT METADATA

    opt_15 ::= grp_14 | $empty

    opt_16 ::= sequenceExpressionList | $empty

    grp_17 ::= positionalArgumentList | namedArgumentList

    opt_18 ::= grp_17 | $empty

    seq_19 ::= COMMA ownedExpression

    list_20 ::= $empty | list_20 seq_19

    seq_21 ::= COMMA namedArgument

    list_22 ::= $empty | list_22 seq_21

    list_23 ::= $empty | list_23 relationshipOwnedElement

    list_24 ::= $empty | list_24 ownedAnnotation

    list_25 ::= $empty | list_25 prefixMetadataAnnotation

    opt_26 ::= identification | $empty

    seq_27 ::= opt_26 FROM

    opt_28 ::= seq_27 | $empty

    seq_29 ::= COMMA qualifiedName

    list_30 ::= $empty | list_30 seq_29

    seq_31 ::= COMMA qualifiedName

    list_32 ::= $empty | list_32 seq_31

    list_33 ::= $empty | list_33 prefixMetadataAnnotation

    opt_34 ::= identification | $empty

    seq_35 ::= COMMA annotation

    list_36 ::= $empty | list_36 seq_35

    seq_37 ::= ABOUT annotation list_36

    opt_38 ::= seq_37 | $empty

    seq_39 ::= COMMENT opt_34 opt_38

    opt_40 ::= seq_39 | $empty

    seq_41 ::= LOCALE DOUBLE_STRING

    opt_42 ::= seq_41 | $empty

    opt_43 ::= identification | $empty

    seq_44 ::= LOCALE DOUBLE_STRING

    opt_45 ::= seq_44 | $empty

    opt_46 ::= identification | $empty

    seq_47 ::= REP opt_46

    opt_48 ::= seq_47 | $empty

    list_49 ::= $empty | list_49 packageBodyElement

    list_50 ::= $empty | list_50 prefixMetadataMember

    opt_51 ::= identification | $empty

    list_52 ::= $empty | list_52 namespaceBodyElement

    opt_53 ::= visibilityIndicator | $empty

    seq_54 ::= LT name GT

    opt_55 ::= seq_54 | $empty

    opt_56 ::= name | $empty

    seq_57 ::= DOLLAR COLON_COLON

    opt_58 ::= seq_57 | $empty

    seq_59 ::= name COLON_COLON

    list_60 ::= $empty | list_60 seq_59

    opt_61 ::= visibilityIndicator | $empty

    opt_62 ::= ALL | $empty

    seq_63 ::= COLON_COLON STAR_STAR

    opt_64 ::= seq_63 | $empty

    seq_65 ::= COLON_COLON STAR_STAR

    opt_66 ::= seq_65 | $empty

    list_67 ::= filterPackageMember | list_67 filterPackageMember

    list_68 ::= filterPackageMember | list_68 filterPackageMember

    opt_69 ::= ABSTRACT | $empty

    list_70 ::= $empty | list_70 prefixMetadataMember

    opt_71 ::= ALL | $empty

    opt_72 ::= identification | $empty

    opt_73 ::= ownedMultiplicity | $empty

    grp_74 ::= specializationPart | conjugationPart

    list_75 ::= grp_74 | list_75 grp_74

    list_76 ::= $empty | list_76 typeRelationshipPart

    grp_77 ::= COLON_GT | SPECIALIZES

    seq_78 ::= COMMA ownedSpecialization

    list_79 ::= $empty | list_79 seq_78

    grp_80 ::= TILDE | CONJUGATES

    seq_81 ::= COMMA ownedDisjoining

    list_82 ::= $empty | list_82 seq_81

    seq_83 ::= COMMA unioning

    list_84 ::= $empty | list_84 seq_83

    seq_85 ::= COMMA intersecting

    list_86 ::= $empty | list_86 seq_85

    seq_87 ::= COMMA differencing

    list_88 ::= $empty | list_88 seq_87

    list_89 ::= $empty | list_89 typeBodyElement

    opt_90 ::= identification | $empty

    seq_91 ::= SPECIALIZATION opt_90

    opt_92 ::= seq_91 | $empty

    grp_93 ::= COLON_GT | SPECIALIZES

    seq_94 ::= DOT qualifiedName

    list_95 ::= $empty | list_95 seq_94

    seq_96 ::= DOT qualifiedName

    list_97 ::= $empty | list_97 seq_96

    opt_98 ::= identification | $empty

    seq_99 ::= CONJUGATION opt_98

    opt_100 ::= seq_99 | $empty

    seq_101 ::= DOT qualifiedName

    list_102 ::= $empty | list_102 seq_101

    grp_103 ::= TILDE | CONJUGATES

    seq_104 ::= DOT qualifiedName

    list_105 ::= $empty | list_105 seq_104

    seq_106 ::= DOT qualifiedName

    list_107 ::= $empty | list_107 seq_106

    opt_108 ::= identification | $empty

    seq_109 ::= DISJOINING opt_108

    opt_110 ::= seq_109 | $empty

    seq_111 ::= DOT qualifiedName

    list_112 ::= $empty | list_112 seq_111

    seq_113 ::= DOT qualifiedName

    list_114 ::= $empty | list_114 seq_113

    seq_115 ::= DOT qualifiedName

    list_116 ::= $empty | list_116 seq_115

    seq_117 ::= DOT qualifiedName

    list_118 ::= $empty | list_118 seq_117

    seq_119 ::= DOT qualifiedName

    list_120 ::= $empty | list_120 seq_119

    seq_121 ::= DOT qualifiedName

    list_122 ::= $empty | list_122 seq_121

    opt_123 ::= ALL | $empty

    opt_124 ::= identification | $empty

    opt_125 ::= ownedMultiplicity | $empty

    grp_126 ::= superclassingPart | conjugationPart

    opt_127 ::= grp_126 | $empty

    list_128 ::= $empty | list_128 typeRelationshipPart

    grp_129 ::= COLON_GT | SPECIALIZES

    seq_130 ::= COMMA ownedSubclassification

    list_131 ::= $empty | list_131 seq_130

    opt_132 ::= identification | $empty

    seq_133 ::= SPECIALIZATION opt_132

    opt_134 ::= seq_133 | $empty

    grp_135 ::= COLON_GT | SPECIALIZES

    grp_137 ::= FEATURE | prefixMetadataMember

    opt_138 ::= featureDeclaration | $empty

    grp_139 ::= endFeaturePrefix | basicFeaturePrefix

    grp_136 ::= featurePrefix grp_137 opt_138 | grp_139 featureDeclaration

    opt_140 ::= valuePart | $empty

    opt_141 ::= CONST | $empty

    opt_142 ::= featureDirection | $empty

    opt_143 ::= DERIVED | $empty

    opt_144 ::= ABSTRACT | $empty

    grp_145 ::= COMPOSITE | PORTION

    opt_146 ::= grp_145 | $empty

    grp_147 ::= VAR | CONST

    opt_148 ::= grp_147 | $empty

    grp_149 ::= endFeaturePrefix ownedCrossFeatureMember | basicFeaturePrefix

    list_150 ::= $empty | list_150 prefixMetadataMember

    opt_151 ::= usageDeclaration | $empty

    opt_152 ::= ALL | $empty

    grp_154 ::= featureSpecializationPart | conjugationPart

    opt_155 ::= grp_154 | $empty

    grp_153 ::= featureIdentification opt_155 | featureSpecializationPart | conjugationPart

    list_156 ::= $empty | list_156 featureRelationshipPart

    opt_157 ::= name | $empty

    seq_158 ::= DOT qualifiedName

    list_159 ::= $empty | list_159 seq_158

    seq_160 ::= COMMA ownedTypeFeaturing

    list_161 ::= $empty | list_161 seq_160

    list_162 ::= featureSpecialization | list_162 featureSpecialization

    opt_163 ::= multiplicityPart | $empty

    list_164 ::= $empty | list_164 featureSpecialization

    list_165 ::= $empty | list_165 featureSpecialization

    opt_167 ::= NONUNIQUE | $empty

    opt_168 ::= ORDERED | $empty

    grp_166 ::= ORDERED opt_167 | NONUNIQUE opt_168

    opt_169 ::= grp_166 | $empty

    opt_171 ::= NONUNIQUE | $empty

    opt_172 ::= ORDERED | $empty

    grp_170 ::= ORDERED opt_171 | NONUNIQUE opt_172

    seq_173 ::= COMMA featureTyping

    list_174 ::= $empty | list_174 seq_173

    grp_175 ::= COLON | TYPED BY | DEFINED BY

    seq_176 ::= COMMA ownedSubsetting

    list_177 ::= $empty | list_177 seq_176

    grp_178 ::= COLON_GT | SUBSETS

    grp_179 ::= COLON_COLON_GT | REFERENCES

    grp_180 ::= FAT_ARROW | CROSSES

    seq_181 ::= COMMA ownedRedefinition

    list_182 ::= $empty | list_182 seq_181

    grp_183 ::= COLON_GT_GT | REDEFINES

    opt_184 ::= identification | $empty

    seq_185 ::= SPECIALIZATION opt_184

    opt_186 ::= seq_185 | $empty

    grp_187 ::= COLON | TYPED BY

    seq_188 ::= DOT qualifiedName

    list_189 ::= $empty | list_189 seq_188

    opt_190 ::= identification | $empty

    seq_191 ::= SPECIALIZATION opt_190

    opt_192 ::= seq_191 | $empty

    grp_193 ::= COLON_GT | SUBSETS

    seq_194 ::= DOT qualifiedName

    list_195 ::= $empty | list_195 seq_194

    seq_196 ::= DOT qualifiedName

    list_197 ::= $empty | list_197 seq_196

    seq_198 ::= DOT qualifiedName

    list_199 ::= $empty | list_199 seq_198

    opt_200 ::= identification | $empty

    seq_201 ::= SPECIALIZATION opt_200

    opt_202 ::= seq_201 | $empty

    grp_203 ::= COLON_GT_GT | REDEFINES

    seq_204 ::= DOT qualifiedName

    list_205 ::= $empty | list_205 seq_204

    seq_206 ::= DOT ownedFeatureChaining

    list_207 ::= seq_206 | list_207 seq_206

    seq_208 ::= DOT ownedFeatureChaining

    list_209 ::= seq_208 | list_209 seq_208

    opt_210 ::= identification | $empty

    seq_211 ::= INVERTING opt_210

    opt_212 ::= seq_211 | $empty

    seq_213 ::= DOT qualifiedName

    list_214 ::= $empty | list_214 seq_213

    seq_215 ::= DOT qualifiedName

    list_216 ::= $empty | list_216 seq_215

    seq_217 ::= DOT qualifiedName

    list_218 ::= $empty | list_218 seq_217

    opt_219 ::= identification | $empty

    seq_220 ::= opt_219 OF

    opt_221 ::= seq_220 | $empty

    opt_223 ::= featureDeclaration | $empty

    opt_224 ::= valuePart | $empty

    grp_222 ::= opt_223 opt_224 | connectorDeclaration

    opt_226 ::= featureDeclaration | $empty

    opt_227 ::= FROM | $empty

    grp_225 ::= opt_226 FROM | ALL opt_227

    opt_228 ::= grp_225 | $empty

    opt_229 ::= featureDeclaration | $empty

    seq_230 ::= COMMA connectorEndMember

    list_231 ::= $empty | list_231 seq_230

    opt_232 ::= ownedCrossMultiplicityMember | $empty

    grp_234 ::= COLON_COLON_GT | REFERENCES

    grp_233 ::= name grp_234

    opt_235 ::= grp_233 | $empty

    seq_236 ::= OF connectorEndMember EQ connectorEndMember

    opt_237 ::= seq_236 | $empty

    opt_238 ::= ALL | $empty

    opt_239 ::= OF | $empty

    seq_240 ::= opt_239 connectorEndMember EQ connectorEndMember

    opt_241 ::= seq_240 | $empty

    seq_242 ::= FIRST connectorEndMember THEN connectorEndMember

    opt_243 ::= seq_242 | $empty

    opt_244 ::= ALL | $empty

    opt_245 ::= FIRST | $empty

    seq_246 ::= opt_245 connectorEndMember THEN connectorEndMember

    opt_247 ::= seq_246 | $empty

    opt_248 ::= valuePart | $empty

    grp_249 ::= typeBodyElement | returnFeatureMember

    list_250 ::= $empty | list_250 grp_249

    opt_251 ::= resultExpressionMember | $empty

    opt_252 ::= valuePart | $empty

    opt_253 ::= valuePart | $empty

    grp_254 ::= TRUE | FALSE

    opt_255 ::= grp_254 | $empty

    opt_256 ::= valuePart | $empty

    seq_257 ::= DOT qualifiedName

    list_258 ::= $empty | list_258 seq_257

    seq_259 ::= DOT qualifiedName

    list_260 ::= $empty | list_260 seq_259

    opt_261 ::= INTEGER | $empty

    grp_262 ::= INTEGER | REAL

    opt_263 ::= valuePart | $empty

    seq_264 ::= OF payloadFeatureMember

    opt_265 ::= seq_264 | $empty

    seq_266 ::= FROM flowEndMember TO flowEndMember

    opt_267 ::= seq_266 | $empty

    opt_268 ::= ALL | $empty

    opt_269 ::= usageDeclaration | $empty

    opt_270 ::= valuePart | $empty

    seq_271 ::= OF flowPayloadFeatureMember

    opt_272 ::= seq_271 | $empty

    seq_273 ::= FROM flowEndMember TO flowEndMember

    opt_274 ::= seq_273 | $empty

    opt_275 ::= identification | $empty

    opt_276 ::= identification | $empty

    opt_277 ::= valuePart | $empty

    opt_278 ::= ownedMultiplicity | $empty

    opt_279 ::= ownedFeatureTyping | $empty

    list_280 ::= featureSpecialization | list_280 featureSpecialization

    opt_281 ::= multiplicityPart | $empty

    list_282 ::= $empty | list_282 featureSpecialization

    list_283 ::= featureSpecialization | list_283 featureSpecialization

    seq_284 ::= DOT qualifiedName

    list_285 ::= $empty | list_285 seq_284

    grp_287 ::= EQ | COLON_EQ

    opt_288 ::= grp_287 | $empty

    grp_286 ::= EQ | COLON_EQ | DEFAULT opt_288

    opt_289 ::= identification | $empty

    opt_290 ::= identification | $empty

    seq_291 ::= multiplicityExpressionMember DOT_DOT

    opt_292 ::= seq_291 | $empty

    grp_293 ::= literalExpression | featureReferenceExpression

    list_294 ::= $empty | list_294 prefixMetadataMember

    grp_295 ::= AT_SIGN | METADATA

    seq_296 ::= COMMA annotation

    list_297 ::= $empty | list_297 seq_296

    seq_298 ::= ABOUT annotation list_297

    opt_299 ::= seq_298 | $empty

    opt_301 ::= identification | $empty

    grp_302 ::= COLON | TYPED BY

    grp_300 ::= opt_301 grp_302

    opt_303 ::= grp_300 | $empty

    list_304 ::= $empty | list_304 metadataBodyElement

    grp_305 ::= definitionMember | metadataBodyUsageMember | aliasMember | importRule

    list_306 ::= $empty | list_306 grp_305

    opt_307 ::= FEATURE | $empty

    grp_308 ::= COLON_GT_GT | REDEFINES

    opt_309 ::= grp_308 | $empty

    opt_310 ::= featureSpecializationPart | $empty

    opt_311 ::= valuePart | $empty

    list_312 ::= $empty | list_312 prefixMetadataMember

    opt_313 ::= STANDARD | $empty

    list_314 ::= $empty | list_314 prefixMetadataMember

    opt_315 ::= identification | $empty

    list_316 ::= $empty | list_316 packageBodyElement

    opt_317 ::= identification | $empty

    seq_318 ::= opt_317 FROM

    opt_319 ::= seq_318 | $empty

    seq_320 ::= COMMA qualifiedName

    list_321 ::= $empty | list_321 seq_320

    seq_322 ::= COMMA qualifiedName

    list_323 ::= $empty | list_323 seq_322

    grp_324 ::= definitionElement | usageElement

    opt_325 ::= basicDefinitionPrefix | $empty

    list_326 ::= $empty | list_326 definitionExtensionKeyword

    opt_327 ::= identification | $empty

    opt_328 ::= subclassificationPart | $empty

    list_329 ::= $empty | list_329 definitionBodyItem

    opt_330 ::= sourceSuccessionMember | $empty

    seq_331 ::= LT name GT

    opt_332 ::= seq_331 | $empty

    opt_333 ::= name | $empty

    opt_334 ::= featureDirection | $empty

    opt_335 ::= DERIVED | $empty

    grp_336 ::= ABSTRACT | VARIATION

    opt_337 ::= grp_336 | $empty

    opt_338 ::= CONSTANT | $empty

    opt_339 ::= REF | $empty

    list_340 ::= $empty | list_340 usageExtensionKeyword

    opt_341 ::= usageDeclaration | $empty

    opt_342 ::= featureSpecializationPart | $empty

    opt_343 ::= valuePart | $empty

    grp_344 ::= endUsagePrefix | refPrefix

    list_345 ::= $empty | list_345 featureSpecialization

    grp_346 ::= COLON_GT | SPECIALIZES

    seq_347 ::= COMMA ownedSubclassification

    list_348 ::= $empty | list_348 seq_347

    list_349 ::= $empty | list_349 definitionExtensionKeyword

    grp_350 ::= annotatingMember | enumerationUsageMember

    list_351 ::= $empty | list_351 grp_350

    opt_352 ::= ENUM | $empty

    opt_353 ::= basicDefinitionPrefix | $empty

    seq_354 ::= INDIVIDUAL emptyMultiplicityMember

    opt_355 ::= seq_354 | $empty

    list_356 ::= $empty | list_356 definitionExtensionKeyword

    opt_357 ::= basicDefinitionPrefix | $empty

    list_358 ::= $empty | list_358 definitionExtensionKeyword

    opt_359 ::= INDIVIDUAL | $empty

    opt_360 ::= portionKind | $empty

    list_361 ::= $empty | list_361 usageExtensionKeyword

    list_362 ::= $empty | list_362 usageExtensionKeyword

    opt_363 ::= INDIVIDUAL | $empty

    list_364 ::= $empty | list_364 usageExtensionKeyword

    opt_366 ::= featureSpecializationPart | $empty

    opt_367 ::= usageDeclaration | $empty

    grp_365 ::= ownedReferenceSubsetting opt_366 | OCCURRENCE opt_367

    opt_368 ::= ownedMultiplicity | $empty

    opt_370 ::= usageDeclaration | $empty

    opt_371 ::= valuePart | $empty

    seq_372 ::= CONNECT connectorPart

    opt_373 ::= seq_372 | $empty

    grp_369 ::= CONNECTION opt_370 opt_371 opt_373 | CONNECT connectorPart

    seq_374 ::= COMMA connectorEndMember

    list_375 ::= $empty | list_375 seq_374

    opt_376 ::= usageDeclaration | $empty

    seq_377 ::= BINDING opt_376

    opt_378 ::= seq_377 | $empty

    opt_379 ::= usageDeclaration | $empty

    seq_380 ::= SUCCESSION opt_379

    opt_381 ::= seq_380 | $empty

    list_382 ::= $empty | list_382 interfaceBodyItem

    opt_383 ::= sourceSuccessionMember | $empty

    opt_384 ::= usageDeclaration | $empty

    opt_385 ::= valuePart | $empty

    seq_386 ::= CONNECT interfacePart

    opt_387 ::= seq_386 | $empty

    seq_388 ::= COMMA interfaceEndMember

    list_389 ::= $empty | list_389 seq_388

    opt_390 ::= ownedCrossMultiplicityMember | $empty

    grp_392 ::= COLON_COLON_GT | REFERENCES

    grp_391 ::= name grp_392

    opt_393 ::= grp_391 | $empty

    opt_394 ::= usageDeclaration | $empty

    seq_395 ::= ALLOCATE connectorPart

    opt_396 ::= seq_395 | $empty

    opt_397 ::= usageDeclaration | $empty

    opt_398 ::= valuePart | $empty

    seq_399 ::= OF flowPayloadFeatureMember

    opt_400 ::= seq_399 | $empty

    seq_401 ::= FROM messageEventMember TO messageEventMember

    opt_402 ::= seq_401 | $empty

    seq_403 ::= ownedFeatureChaining DOT

    list_404 ::= seq_403 | list_404 seq_403

    list_405 ::= $empty | list_405 actionBodyItem

    list_406 ::= $empty | list_406 actionTargetSuccessionMember

    opt_407 ::= sourceSuccessionMember | $empty

    list_408 ::= $empty | list_408 actionTargetSuccessionMember

    opt_409 ::= sourceSuccessionMember | $empty

    opt_410 ::= usageDeclaration | $empty

    opt_411 ::= valuePart | $empty

    opt_413 ::= featureSpecializationPart | $empty

    opt_414 ::= usageDeclaration | $empty

    grp_412 ::= ownedReferenceSubsetting opt_413 | ACTION opt_414

    opt_415 ::= valuePart | $empty

    opt_416 ::= usageDeclaration | $empty

    opt_417 ::= actionNodeUsageDeclaration | $empty

    opt_418 ::= INDIVIDUAL | $empty

    opt_419 ::= portionKind | $empty

    list_420 ::= $empty | list_420 usageExtensionKeyword

    opt_421 ::= usageDeclaration | $empty

    opt_422 ::= usageDeclaration | $empty

    opt_423 ::= usageDeclaration | $empty

    opt_424 ::= usageDeclaration | $empty

    opt_425 ::= actionNodeUsageDeclaration | $empty

    seq_426 ::= VIA nodeParameterMember

    opt_427 ::= seq_426 | $empty

    opt_428 ::= identification | $empty

    opt_429 ::= payloadFeatureSpecializationPart | $empty

    grp_430 ::= AT | AFTER

    grp_431 ::= actionNodeUsageDeclaration | actionUsageDeclaration

    opt_433 ::= senderReceiverPart | $empty

    grp_432 ::= nodeParameterMember opt_433 | emptyParameterMember senderReceiverPart

    opt_434 ::= actionNodeUsageDeclaration | $empty

    opt_435 ::= senderReceiverPart | $empty

    seq_436 ::= TO nodeParameterMember

    opt_437 ::= seq_436 | $empty

    opt_438 ::= actionNodeUsageDeclaration | $empty

    seq_439 ::= assignmentTargetBinding DOT

    opt_440 ::= seq_439 | $empty

    opt_441 ::= actionNodeUsageDeclaration | $empty

    opt_442 ::= nodeParameterMember | $empty

    grp_444 ::= actionBodyParameterMember | ifNodeParameterMember

    grp_443 ::= ELSE grp_444

    opt_445 ::= grp_443 | $empty

    opt_446 ::= usageDeclaration | $empty

    seq_447 ::= ACTION opt_446

    opt_448 ::= seq_447 | $empty

    list_449 ::= $empty | list_449 actionBodyItem

    grp_450 ::= WHILE expressionParameterMember | LOOP emptyParameterMember

    seq_451 ::= UNTIL expressionParameterMember SEMI

    opt_452 ::= seq_451 | $empty

    opt_453 ::= usageDeclaration | $empty

    opt_454 ::= usageDeclaration | $empty

    grp_455 ::= targetSuccession | guardedTargetSuccession | defaultTargetSuccession

    opt_456 ::= usageDeclaration | $empty

    seq_457 ::= SUCCESSION opt_456

    opt_458 ::= seq_457 | $empty

    opt_459 ::= PARALLEL | $empty

    list_460 ::= $empty | list_460 stateBodyItem

    opt_461 ::= sourceSuccessionMember | $empty

    list_462 ::= $empty | list_462 targetTransitionUsageMember

    list_463 ::= $empty | list_463 entryTransitionMember

    grp_464 ::= guardedTargetSuccession | THEN transitionSuccessionMember

    opt_465 ::= PARALLEL | $empty

    list_466 ::= $empty | list_466 stateBodyItem

    opt_468 ::= featureSpecializationPart | $empty

    opt_469 ::= usageDeclaration | $empty

    grp_467 ::= ownedReferenceSubsetting opt_468 | STATE opt_469

    opt_470 ::= valuePart | $empty

    opt_471 ::= usageDeclaration | $empty

    seq_472 ::= opt_471 FIRST

    opt_473 ::= seq_472 | $empty

    seq_474 ::= emptyParameterMember triggerActionMember

    opt_475 ::= seq_474 | $empty

    opt_476 ::= guardExpressionMember | $empty

    opt_477 ::= effectBehaviorMember | $empty

    seq_479 ::= emptyParameterMember triggerActionMember

    opt_480 ::= seq_479 | $empty

    opt_481 ::= guardExpressionMember | $empty

    opt_482 ::= effectBehaviorMember | $empty

    opt_483 ::= guardExpressionMember | $empty

    opt_484 ::= effectBehaviorMember | $empty

    opt_485 ::= effectBehaviorMember | $empty

    grp_478 ::= TRANSITION opt_480 opt_481 opt_482 | emptyParameterMember triggerActionMember opt_483 opt_484 | guardExpressionMember opt_485

    opt_486 ::= grp_478 | $empty

    list_487 ::= $empty | list_487 actionBodyItem

    seq_488 ::= LBRACE list_487 RBRACE

    opt_489 ::= seq_488 | $empty

    list_490 ::= $empty | list_490 actionBodyItem

    seq_491 ::= LBRACE list_490 RBRACE

    opt_492 ::= seq_491 | $empty

    list_493 ::= $empty | list_493 actionBodyItem

    seq_494 ::= LBRACE list_493 RBRACE

    opt_495 ::= seq_494 | $empty

    list_496 ::= $empty | list_496 actionBodyItem

    seq_497 ::= LBRACE list_496 RBRACE

    opt_498 ::= seq_497 | $empty

    list_499 ::= $empty | list_499 calculationBodyItem

    opt_500 ::= resultExpressionMember | $empty

    opt_501 ::= NOT | $empty

    opt_503 ::= featureSpecializationPart | $empty

    grp_502 ::= ownedReferenceSubsetting opt_503 | CONSTRAINT constraintUsageDeclaration

    opt_504 ::= usageDeclaration | $empty

    opt_505 ::= valuePart | $empty

    list_506 ::= $empty | list_506 requirementBodyItem

    list_507 ::= $empty | list_507 usageExtensionKeyword

    opt_508 ::= featureSpecializationPart | $empty

    list_510 ::= $empty | list_510 usageExtensionKeyword

    list_511 ::= usageExtensionKeyword | list_511 usageExtensionKeyword

    grp_509 ::= list_510 CONSTRAINT | list_511

    opt_512 ::= featureSpecializationPart | $empty

    list_514 ::= $empty | list_514 usageExtensionKeyword

    list_515 ::= usageExtensionKeyword | list_515 usageExtensionKeyword

    grp_513 ::= list_514 CONCERN | list_515

    list_516 ::= $empty | list_516 usageExtensionKeyword

    list_517 ::= $empty | list_517 usageExtensionKeyword

    opt_518 ::= NOT | $empty

    seq_519 ::= ASSERT opt_518

    opt_520 ::= seq_519 | $empty

    opt_522 ::= featureSpecializationPart | $empty

    opt_523 ::= usageDeclaration | $empty

    grp_521 ::= ownedReferenceSubsetting opt_522 | REQUIREMENT opt_523

    opt_524 ::= valuePart | $empty

    seq_525 ::= BY satisfactionSubjectMember

    opt_526 ::= seq_525 | $empty

    list_527 ::= $empty | list_527 caseBodyItem

    opt_528 ::= resultExpressionMember | $empty

    list_529 ::= $empty | list_529 usageExtensionKeyword

    list_530 ::= $empty | list_530 featureSpecialization

    list_532 ::= $empty | list_532 usageExtensionKeyword

    list_533 ::= usageExtensionKeyword | list_533 usageExtensionKeyword

    grp_531 ::= list_532 REQUIREMENT | list_533

    opt_535 ::= featureSpecializationPart | $empty

    opt_536 ::= usageDeclaration | $empty

    grp_534 ::= ownedReferenceSubsetting opt_535 | USE CASE opt_536

    opt_537 ::= valuePart | $empty

    list_538 ::= $empty | list_538 viewDefinitionBodyItem

    opt_539 ::= featureSpecializationPart | $empty

    list_541 ::= $empty | list_541 usageExtensionKeyword

    list_542 ::= usageExtensionKeyword | list_542 usageExtensionKeyword

    grp_540 ::= list_541 RENDERING | list_542

    opt_543 ::= usageDeclaration | $empty

    opt_544 ::= valuePart | $empty

    list_545 ::= $empty | list_545 viewBodyItem

    grp_546 ::= membershipExpose | namespaceExpose

    opt_547 ::= ABSTRACT | $empty

    list_548 ::= $empty | list_548 definitionExtensionKeyword

    list_549 ::= $empty | list_549 usageExtensionKeyword

    grp_550 ::= AT_SIGN | METADATA

    seq_551 ::= COMMA annotation

    list_552 ::= $empty | list_552 seq_551

    seq_553 ::= ABOUT annotation list_552

    opt_554 ::= seq_553 | $empty

    opt_556 ::= identification | $empty

    grp_557 ::= COLON | TYPED BY

    grp_555 ::= opt_556 grp_557

    opt_558 ::= grp_555 | $empty

    opt_559 ::= REF | $empty

    grp_560 ::= COLON_GT_GT | REDEFINES

    opt_561 ::= grp_560 | $empty

    opt_562 ::= featureSpecializationPart | $empty

    opt_563 ::= valuePart | $empty

    opt_564 ::= basicDefinitionPrefix | $empty

    list_565 ::= definitionExtensionKeyword | list_565 definitionExtensionKeyword

    list_566 ::= usageExtensionKeyword | list_566 usageExtensionKeyword

    seq_567 ::= COLON_COLON STAR_STAR

    opt_568 ::= seq_567 | $empty

    opt_569 ::= usageDeclaration | $empty

    opt_570 ::= valuePart | $empty

%End
