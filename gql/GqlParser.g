-- AUTO-GENERATED from antlr/grammars-v4 gql by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=GqlParser
%options package=lpg.grammars.gql
%options template=btParserTemplateF.gi
%options import_terminals=GqlLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    gqlProgram
%End

%Rules
    gqlProgram ::= programActivity opt_1
           | sessionCloseCommand

    programActivity ::= sessionActivity
           | transactionActivity

    sessionActivity ::= list_2
           | list_3 list_4

    transactionActivity ::= startTransactionCommand opt_7
           | procedureSpecification opt_8
           | endTransactionCommand

    endTransactionCommand ::= rollbackCommand
           | commitCommand

    sessionSetCommand ::= SESSION SET grp_9

    sessionSetSchemaClause ::= SCHEMA schemaReference

    sessionSetGraphClause ::= opt_10 GRAPH graphExpression

    sessionSetTimeZoneClause ::= TIME ZONE setTimeZoneValue

    setTimeZoneValue ::= timeZoneString

    sessionSetParameterClause ::= sessionSetGraphParameterClause
           | sessionSetBindingTableParameterClause
           | sessionSetValueParameterClause

    sessionSetGraphParameterClause ::= opt_11 GRAPH sessionSetParameterName optTypedGraphInitializer

    sessionSetBindingTableParameterClause ::= opt_12 TABLE sessionSetParameterName optTypedBindingTableInitializer

    sessionSetValueParameterClause ::= VALUE sessionSetParameterName optTypedValueInitializer

    sessionSetParameterName ::= opt_14 sessionParameterSpecification

    sessionResetCommand ::= SESSION RESET opt_15

    sessionResetArguments ::= opt_16 grp_17
           | SCHEMA
           | opt_18 GRAPH
           | TIME ZONE
           | opt_19 sessionParameterSpecification

    sessionCloseCommand ::= SESSION CLOSE

    sessionParameterSpecification ::= GENERAL_PARAMETER_REFERENCE

    startTransactionCommand ::= START TRANSACTION opt_20

    transactionCharacteristics ::= transactionMode list_22

    transactionMode ::= transactionAccessMode

    transactionAccessMode ::= READ ONLY
           | READ WRITE

    rollbackCommand ::= ROLLBACK

    commitCommand ::= COMMIT

    nestedProcedureSpecification ::= LEFT_BRACE procedureSpecification RIGHT_BRACE

    procedureSpecification ::= procedureBody

    nestedDataModifyingProcedureSpecification ::= LEFT_BRACE procedureBody RIGHT_BRACE

    nestedQuerySpecification ::= LEFT_BRACE procedureBody RIGHT_BRACE

    procedureBody ::= opt_23 opt_24 statementBlock

    bindingVariableDefinitionBlock ::= list_25

    bindingVariableDefinition ::= graphVariableDefinition
           | bindingTableVariableDefinition
           | valueVariableDefinition

    statementBlock ::= statement list_26

    statement ::= compositeQueryStatement
           | linearCatalogModifyingStatement
           | linearDataModifyingStatement

    nextStatement ::= NEXT opt_27 statement

    graphVariableDefinition ::= opt_28 GRAPH bindingVariable optTypedGraphInitializer

    optTypedGraphInitializer ::= opt_31 graphInitializer

    graphInitializer ::= EQUALS_OPERATOR graphExpression

    bindingTableVariableDefinition ::= opt_32 TABLE bindingVariable optTypedBindingTableInitializer

    optTypedBindingTableInitializer ::= opt_35 bindingTableInitializer

    bindingTableInitializer ::= EQUALS_OPERATOR bindingTableExpression

    valueVariableDefinition ::= VALUE bindingVariable optTypedValueInitializer

    optTypedValueInitializer ::= opt_38 valueInitializer

    valueInitializer ::= EQUALS_OPERATOR valueExpression

    graphExpression ::= graphReference
           | objectExpressionPrimary
           | objectNameOrBindingVariable
           | currentGraph

    currentGraph ::= CURRENT_PROPERTY_GRAPH
           | CURRENT_GRAPH

    bindingTableExpression ::= nestedBindingTableQuerySpecification
           | bindingTableReference
           | objectExpressionPrimary
           | objectNameOrBindingVariable

    nestedBindingTableQuerySpecification ::= nestedQuerySpecification

    objectExpressionPrimary ::= VARIABLE valueExpressionPrimary
           | parenthesizedValueExpression
           | nonParenthesizedValueExpressionPrimarySpecialCase

    linearCatalogModifyingStatement ::= list_39

    simpleCatalogModifyingStatement ::= primitiveCatalogModifyingStatement
           | callCatalogModifyingProcedureStatement

    primitiveCatalogModifyingStatement ::= createSchemaStatement
           | dropSchemaStatement
           | createGraphStatement
           | dropGraphStatement
           | createGraphTypeStatement
           | dropGraphTypeStatement

    createSchemaStatement ::= CREATE SCHEMA opt_41 catalogSchemaParentAndName

    dropSchemaStatement ::= DROP SCHEMA opt_43 catalogSchemaParentAndName

    createGraphStatement ::= CREATE grp_44 catalogGraphParentAndName grp_49 opt_50

    openGraphType ::= opt_51 ANY opt_54

    ofGraphType ::= graphTypeLikeGraph
           | opt_55 graphTypeReference
           | opt_56 opt_59 nestedGraphTypeSpecification

    graphTypeLikeGraph ::= LIKE graphExpression

    graphSource ::= AS COPY OF graphExpression

    dropGraphStatement ::= DROP opt_60 GRAPH opt_62 catalogGraphParentAndName

    createGraphTypeStatement ::= CREATE grp_63 catalogGraphTypeParentAndName graphTypeSource

    graphTypeSource ::= opt_68 copyOfGraphType
           | graphTypeLikeGraph
           | opt_69 nestedGraphTypeSpecification

    copyOfGraphType ::= COPY OF graphTypeReference

    dropGraphTypeStatement ::= DROP opt_70 GRAPH TYPE opt_72 catalogGraphTypeParentAndName

    callCatalogModifyingProcedureStatement ::= callProcedureStatement

    linearDataModifyingStatement ::= focusedLinearDataModifyingStatement
           | ambientLinearDataModifyingStatement

    focusedLinearDataModifyingStatement ::= focusedLinearDataModifyingStatementBody
           | focusedNestedDataModifyingProcedureSpecification

    focusedLinearDataModifyingStatementBody ::= useGraphClause simpleLinearDataAccessingStatement opt_73

    focusedNestedDataModifyingProcedureSpecification ::= useGraphClause nestedDataModifyingProcedureSpecification

    ambientLinearDataModifyingStatement ::= ambientLinearDataModifyingStatementBody
           | nestedDataModifyingProcedureSpecification

    ambientLinearDataModifyingStatementBody ::= simpleLinearDataAccessingStatement opt_74

    simpleLinearDataAccessingStatement ::= list_75

    simpleDataAccessingStatement ::= simpleQueryStatement
           | simpleDataModifyingStatement

    simpleDataModifyingStatement ::= primitiveDataModifyingStatement
           | callDataModifyingProcedureStatement

    primitiveDataModifyingStatement ::= insertStatement
           | setStatement
           | removeStatement
           | deleteStatement

    insertStatement ::= INSERT insertGraphPattern

    setStatement ::= SET setItemList

    setItemList ::= setItem list_77

    setItem ::= setPropertyItem
           | setAllPropertiesItem
           | setLabelItem

    setPropertyItem ::= bindingVariableReference PERIOD propertyName EQUALS_OPERATOR valueExpression

    setAllPropertiesItem ::= bindingVariableReference EQUALS_OPERATOR LEFT_BRACE opt_78 RIGHT_BRACE

    setLabelItem ::= bindingVariableReference isOrColon labelName

    removeStatement ::= REMOVE removeItemList

    removeItemList ::= removeItem list_80

    removeItem ::= removePropertyItem
           | removeLabelItem

    removePropertyItem ::= bindingVariableReference PERIOD propertyName

    removeLabelItem ::= bindingVariableReference isOrColon labelName

    deleteStatement ::= opt_82 DELETE deleteItemList

    deleteItemList ::= deleteItem list_84

    deleteItem ::= valueExpression

    callDataModifyingProcedureStatement ::= callProcedureStatement

    compositeQueryStatement ::= compositeQueryExpression

    compositeQueryExpression ::= compositeQueryExpression queryConjunction compositeQueryPrimary
           | compositeQueryPrimary

    queryConjunction ::= setOperator
           | OTHERWISE

    setOperator ::= UNION opt_85
           | EXCEPT opt_86
           | INTERSECT opt_87

    compositeQueryPrimary ::= linearQueryStatement

    linearQueryStatement ::= focusedLinearQueryStatement
           | ambientLinearQueryStatement

    focusedLinearQueryStatement ::= list_88 focusedLinearQueryAndPrimitiveResultStatementPart
           | focusedPrimitiveResultStatement
           | focusedNestedQuerySpecification
           | selectStatement

    focusedLinearQueryStatementPart ::= useGraphClause simpleLinearQueryStatement

    focusedLinearQueryAndPrimitiveResultStatementPart ::= useGraphClause simpleLinearQueryStatement primitiveResultStatement

    focusedPrimitiveResultStatement ::= useGraphClause primitiveResultStatement

    focusedNestedQuerySpecification ::= useGraphClause nestedQuerySpecification

    ambientLinearQueryStatement ::= opt_89 primitiveResultStatement
           | nestedQuerySpecification

    simpleLinearQueryStatement ::= list_90

    simpleQueryStatement ::= primitiveQueryStatement
           | callQueryStatement

    primitiveQueryStatement ::= matchStatement
           | letStatement
           | forStatement
           | filterStatement
           | orderByAndPageStatement

    matchStatement ::= simpleMatchStatement
           | optionalMatchStatement

    simpleMatchStatement ::= MATCH graphPatternBindingTable

    optionalMatchStatement ::= OPTIONAL optionalOperand

    optionalOperand ::= simpleMatchStatement
           | LEFT_BRACE matchStatementBlock RIGHT_BRACE
           | LEFT_PAREN matchStatementBlock RIGHT_PAREN

    matchStatementBlock ::= list_91

    callQueryStatement ::= callProcedureStatement

    filterStatement ::= FILTER grp_92

    letStatement ::= LET letVariableDefinitionList

    letVariableDefinitionList ::= letVariableDefinition list_94

    letVariableDefinition ::= valueVariableDefinition
           | bindingVariable EQUALS_OPERATOR valueExpression

    forStatement ::= FOR forItem opt_95

    forItem ::= forItemAlias forItemSource

    forItemAlias ::= bindingVariable IN

    forItemSource ::= valueExpression

    forOrdinalityOrOffset ::= WITH grp_96 bindingVariable

    orderByAndPageStatement ::= orderByClause opt_97 opt_98
           | offsetClause opt_99
           | limitClause

    primitiveResultStatement ::= returnStatement opt_100
           | FINISH

    returnStatement ::= RETURN returnStatementBody

    returnStatementBody ::= opt_101 grp_102 opt_103

    returnItemList ::= returnItem list_105

    returnItem ::= aggregatingValueExpression opt_106

    returnItemAlias ::= AS identifier

    selectStatement ::= SELECT opt_107 grp_108 opt_116

    selectItemList ::= selectItem list_118

    selectItem ::= aggregatingValueExpression opt_119

    selectItemAlias ::= AS identifier

    havingClause ::= HAVING searchCondition

    selectStatementBody ::= FROM grp_120

    selectGraphMatchList ::= selectGraphMatch list_122

    selectGraphMatch ::= graphExpression matchStatement

    selectQuerySpecification ::= nestedQuerySpecification
           | graphExpression nestedQuerySpecification

    callProcedureStatement ::= opt_123 CALL procedureCall

    procedureCall ::= inlineProcedureCall
           | namedProcedureCall

    inlineProcedureCall ::= opt_124 nestedProcedureSpecification

    variableScopeClause ::= LEFT_PAREN opt_125 RIGHT_PAREN

    bindingVariableReferenceList ::= bindingVariableReference list_127

    namedProcedureCall ::= procedureReference LEFT_PAREN opt_128 RIGHT_PAREN opt_129

    procedureArgumentList ::= procedureArgument list_131

    procedureArgument ::= valueExpression

    atSchemaClause ::= AT schemaReference

    useGraphClause ::= USE graphExpression

    graphPatternBindingTable ::= graphPattern opt_132

    graphPatternYieldClause ::= YIELD graphPatternYieldItemList

    graphPatternYieldItemList ::= graphPatternYieldItem list_134

    graphPatternYieldItem ::= bindingVariableReference

    graphPattern ::= opt_135 pathPatternList opt_136 opt_137

    matchMode ::= repeatableElementsMatchMode
           | differentEdgesMatchMode

    repeatableElementsMatchMode ::= REPEATABLE elementBindingsOrElements

    differentEdgesMatchMode ::= DIFFERENT edgeBindingsOrEdges

    elementBindingsOrElements ::= ELEMENT opt_138
           | ELEMENTS

    edgeBindingsOrEdges ::= edgeSynonym opt_139
           | edgesSynonym

    pathPatternList ::= pathPattern list_141

    pathPattern ::= opt_142 opt_143 pathPatternExpression

    pathVariableDeclaration ::= pathVariable EQUALS_OPERATOR

    keepClause ::= KEEP pathPatternPrefix

    graphPatternWhereClause ::= WHERE searchCondition

    insertGraphPattern ::= insertPathPatternList

    insertPathPatternList ::= insertPathPattern list_145

    insertPathPattern ::= insertNodePattern list_147

    insertNodePattern ::= LEFT_PAREN opt_148 RIGHT_PAREN

    insertEdgePattern ::= insertEdgePointingLeft
           | insertEdgePointingRight
           | insertEdgeUndirected

    insertEdgePointingLeft ::= LEFT_ARROW_BRACKET opt_149 RIGHT_BRACKET_MINUS

    insertEdgePointingRight ::= MINUS_LEFT_BRACKET opt_150 BRACKET_RIGHT_ARROW

    insertEdgeUndirected ::= TILDE_LEFT_BRACKET opt_151 RIGHT_BRACKET_TILDE

    insertElementPatternFiller ::= elementVariableDeclaration opt_152
           | opt_153 labelAndPropertySetSpecification

    labelAndPropertySetSpecification ::= isOrColon labelSetSpecification opt_154
           | opt_156 elementPropertySpecification

    pathPatternPrefix ::= pathModePrefix
           | pathSearchPrefix

    pathModePrefix ::= pathMode opt_157

    pathMode ::= WALK
           | TRAIL
           | SIMPLE
           | ACYCLIC

    pathSearchPrefix ::= allPathSearch
           | anyPathSearch
           | shortestPathSearch

    allPathSearch ::= ALL opt_158 opt_159

    pathOrPaths ::= PATH
           | PATHS

    anyPathSearch ::= ANY opt_160 opt_161 opt_162

    numberOfPaths ::= nonNegativeIntegerSpecification

    shortestPathSearch ::= allShortestPathSearch
           | anyShortestPathSearch
           | countedShortestPathSearch
           | countedShortestGroupSearch

    allShortestPathSearch ::= ALL SHORTEST opt_163 opt_164

    anyShortestPathSearch ::= ANY SHORTEST opt_165 opt_166

    countedShortestPathSearch ::= SHORTEST numberOfPaths opt_167 opt_168

    countedShortestGroupSearch ::= SHORTEST opt_169 opt_170 opt_171 grp_172

    numberOfGroups ::= nonNegativeIntegerSpecification

    pathPatternExpression ::= pathTerm
           | pathTerm list_174
           | pathTerm list_176

    pathTerm ::= list_177

    pathFactor ::= pathPrimary
           | pathPrimary graphPatternQuantifier
           | pathPrimary QUESTION_MARK

    pathPrimary ::= elementPattern
           | parenthesizedPathPatternExpression
           | simplifiedPathPatternExpression

    elementPattern ::= nodePattern
           | edgePattern

    nodePattern ::= LEFT_PAREN elementPatternFiller RIGHT_PAREN

    elementPatternFiller ::= opt_178 opt_179 opt_180

    elementVariableDeclaration ::= elementVariable

    isLabelExpression ::= isOrColon labelExpression

    isOrColon ::= IS
           | COLON

    elementPatternPredicate ::= elementPatternWhereClause
           | elementPropertySpecification

    elementPatternWhereClause ::= WHERE searchCondition

    elementPropertySpecification ::= LEFT_BRACE propertyKeyValuePairList RIGHT_BRACE

    propertyKeyValuePairList ::= propertyKeyValuePair list_182

    propertyKeyValuePair ::= propertyName COLON valueExpression

    edgePattern ::= fullEdgePattern
           | abbreviatedEdgePattern

    fullEdgePattern ::= fullEdgePointingLeft
           | fullEdgeUndirected
           | fullEdgePointingRight
           | fullEdgeLeftOrUndirected
           | fullEdgeUndirectedOrRight
           | fullEdgeLeftOrRight
           | fullEdgeAnyDirection

    fullEdgePointingLeft ::= LEFT_ARROW_BRACKET elementPatternFiller RIGHT_BRACKET_MINUS

    fullEdgeUndirected ::= TILDE_LEFT_BRACKET elementPatternFiller RIGHT_BRACKET_TILDE

    fullEdgePointingRight ::= MINUS_LEFT_BRACKET elementPatternFiller BRACKET_RIGHT_ARROW

    fullEdgeLeftOrUndirected ::= LEFT_ARROW_TILDE_BRACKET elementPatternFiller RIGHT_BRACKET_TILDE

    fullEdgeUndirectedOrRight ::= TILDE_LEFT_BRACKET elementPatternFiller BRACKET_TILDE_RIGHT_ARROW

    fullEdgeLeftOrRight ::= LEFT_ARROW_BRACKET elementPatternFiller BRACKET_RIGHT_ARROW

    fullEdgeAnyDirection ::= MINUS_LEFT_BRACKET elementPatternFiller RIGHT_BRACKET_MINUS

    abbreviatedEdgePattern ::= LEFT_ARROW
           | TILDE
           | RIGHT_ARROW
           | LEFT_ARROW_TILDE
           | TILDE_RIGHT_ARROW
           | LEFT_MINUS_RIGHT
           | MINUS_SIGN

    parenthesizedPathPatternExpression ::= LEFT_PAREN opt_183 opt_184 pathPatternExpression opt_185 RIGHT_PAREN

    subpathVariableDeclaration ::= subpathVariable EQUALS_OPERATOR

    parenthesizedPathPatternWhereClause ::= WHERE searchCondition

    labelExpression ::= EXCLAMATION_MARK labelExpression
           | labelExpression AMPERSAND labelExpression
           | labelExpression VERTICAL_BAR labelExpression
           | labelName
           | PERCENT
           | LEFT_PAREN labelExpression RIGHT_PAREN

    pathVariableReference ::= bindingVariableReference

    elementVariableReference ::= bindingVariableReference

    graphPatternQuantifier ::= ASTERISK
           | PLUS_SIGN
           | fixedQuantifier
           | generalQuantifier

    fixedQuantifier ::= LEFT_BRACE unsignedInteger RIGHT_BRACE

    generalQuantifier ::= LEFT_BRACE opt_186 COMMA opt_187 RIGHT_BRACE

    lowerBound ::= unsignedInteger

    upperBound ::= unsignedInteger

    simplifiedPathPatternExpression ::= simplifiedDefaultingLeft
           | simplifiedDefaultingUndirected
           | simplifiedDefaultingRight
           | simplifiedDefaultingLeftOrUndirected
           | simplifiedDefaultingUndirectedOrRight
           | simplifiedDefaultingLeftOrRight
           | simplifiedDefaultingAnyDirection

    simplifiedDefaultingLeft ::= LEFT_MINUS_SLASH simplifiedContents SLASH_MINUS

    simplifiedDefaultingUndirected ::= TILDE_SLASH simplifiedContents SLASH_TILDE

    simplifiedDefaultingRight ::= MINUS_SLASH simplifiedContents SLASH_MINUS_RIGHT

    simplifiedDefaultingLeftOrUndirected ::= LEFT_TILDE_SLASH simplifiedContents SLASH_TILDE

    simplifiedDefaultingUndirectedOrRight ::= TILDE_SLASH simplifiedContents SLASH_TILDE_RIGHT

    simplifiedDefaultingLeftOrRight ::= LEFT_MINUS_SLASH simplifiedContents SLASH_MINUS_RIGHT

    simplifiedDefaultingAnyDirection ::= MINUS_SLASH simplifiedContents SLASH_MINUS

    simplifiedContents ::= simplifiedTerm
           | simplifiedPathUnion
           | simplifiedMultisetAlternation

    simplifiedPathUnion ::= simplifiedTerm VERTICAL_BAR simplifiedTerm list_189

    simplifiedMultisetAlternation ::= simplifiedTerm MULTISET_ALTERNATION_OPERATOR simplifiedTerm list_191

    simplifiedTerm ::= simplifiedFactorLow
           | simplifiedTerm simplifiedFactorLow

    simplifiedFactorLow ::= simplifiedFactorHigh
           | simplifiedFactorLow AMPERSAND simplifiedFactorHigh

    simplifiedFactorHigh ::= simplifiedTertiary
           | simplifiedQuantified
           | simplifiedQuestioned

    simplifiedQuantified ::= simplifiedTertiary graphPatternQuantifier

    simplifiedQuestioned ::= simplifiedTertiary QUESTION_MARK

    simplifiedTertiary ::= simplifiedDirectionOverride
           | simplifiedSecondary

    simplifiedDirectionOverride ::= simplifiedOverrideLeft
           | simplifiedOverrideUndirected
           | simplifiedOverrideRight
           | simplifiedOverrideLeftOrUndirected
           | simplifiedOverrideUndirectedOrRight
           | simplifiedOverrideLeftOrRight
           | simplifiedOverrideAnyDirection

    simplifiedOverrideLeft ::= LEFT_ANGLE_BRACKET simplifiedSecondary

    simplifiedOverrideUndirected ::= TILDE simplifiedSecondary

    simplifiedOverrideRight ::= simplifiedSecondary RIGHT_ANGLE_BRACKET

    simplifiedOverrideLeftOrUndirected ::= LEFT_ARROW_TILDE simplifiedSecondary

    simplifiedOverrideUndirectedOrRight ::= TILDE simplifiedSecondary RIGHT_ANGLE_BRACKET

    simplifiedOverrideLeftOrRight ::= LEFT_ANGLE_BRACKET simplifiedSecondary RIGHT_ANGLE_BRACKET

    simplifiedOverrideAnyDirection ::= MINUS_SIGN simplifiedSecondary

    simplifiedSecondary ::= simplifiedPrimary
           | simplifiedNegation

    simplifiedNegation ::= EXCLAMATION_MARK simplifiedPrimary

    simplifiedPrimary ::= labelName
           | LEFT_PAREN simplifiedContents RIGHT_PAREN

    whereClause ::= WHERE searchCondition

    yieldClause ::= YIELD yieldItemList

    yieldItemList ::= yieldItem list_193

    yieldItem ::= seq_195

    yieldItemName ::= fieldName

    yieldItemAlias ::= AS bindingVariable

    groupByClause ::= GROUP BY groupingElementList

    groupingElementList ::= groupingElement list_197
           | emptyGroupingSet

    groupingElement ::= bindingVariableReference

    emptyGroupingSet ::= LEFT_PAREN RIGHT_PAREN

    orderByClause ::= ORDER BY sortSpecificationList

    sortSpecificationList ::= sortSpecification list_199

    sortSpecification ::= sortKey opt_200 opt_201

    sortKey ::= aggregatingValueExpression

    orderingSpecification ::= ASC
           | ASCENDING
           | DESC
           | DESCENDING

    nullOrdering ::= NULLS FIRST
           | NULLS LAST

    limitClause ::= LIMIT nonNegativeIntegerSpecification

    offsetClause ::= offsetSynonym nonNegativeIntegerSpecification

    offsetSynonym ::= OFFSET
           | SKIP_RESERVED_WORD

    schemaReference ::= absoluteCatalogSchemaReference
           | relativeCatalogSchemaReference
           | referenceParameterSpecification

    absoluteCatalogSchemaReference ::= SOLIDUS
           | absoluteDirectoryPath schemaName

    catalogSchemaParentAndName ::= absoluteDirectoryPath schemaName

    relativeCatalogSchemaReference ::= predefinedSchemaReference
           | relativeDirectoryPath schemaName

    predefinedSchemaReference ::= HOME_SCHEMA
           | CURRENT_SCHEMA
           | PERIOD

    absoluteDirectoryPath ::= SOLIDUS opt_202

    relativeDirectoryPath ::= DOUBLE_PERIOD list_204 SOLIDUS opt_205

    simpleDirectoryPath ::= list_207

    graphReference ::= catalogObjectParentReference graphName
           | delimitedGraphName
           | homeGraph
           | referenceParameterSpecification

    catalogGraphParentAndName ::= opt_208 graphName

    homeGraph ::= HOME_PROPERTY_GRAPH
           | HOME_GRAPH

    graphTypeReference ::= catalogGraphTypeParentAndName
           | referenceParameterSpecification

    catalogGraphTypeParentAndName ::= opt_209 graphTypeName

    bindingTableReference ::= catalogObjectParentReference bindingTableName
           | delimitedBindingTableName
           | referenceParameterSpecification

    procedureReference ::= catalogProcedureParentAndName
           | referenceParameterSpecification

    catalogProcedureParentAndName ::= opt_210 procedureName

    catalogObjectParentReference ::= schemaReference opt_211 list_213
           | list_215

    referenceParameterSpecification ::= SUBSTITUTED_PARAMETER_REFERENCE

    nestedGraphTypeSpecification ::= LEFT_BRACE graphTypeSpecificationBody RIGHT_BRACE

    graphTypeSpecificationBody ::= elementTypeList

    elementTypeList ::= elementTypeSpecification list_217

    elementTypeSpecification ::= nodeTypeSpecification
           | edgeTypeSpecification

    nodeTypeSpecification ::= nodeTypePattern
           | nodeTypePhrase

    nodeTypePattern ::= opt_220 LEFT_PAREN opt_221 opt_222 RIGHT_PAREN

    nodeTypePhrase ::= nodeSynonym opt_223 nodeTypePhraseFiller opt_225

    nodeTypePhraseFiller ::= nodeTypeName opt_226
           | nodeTypeFiller

    nodeTypeFiller ::= nodeTypeKeyLabelSet opt_227
           | nodeTypeImpliedContent

    localNodeTypeAlias ::= regularIdentifier

    nodeTypeImpliedContent ::= nodeTypeLabelSet
           | nodeTypePropertyTypes
           | nodeTypeLabelSet nodeTypePropertyTypes

    nodeTypeKeyLabelSet ::= opt_228 IMPLIES

    nodeTypeLabelSet ::= labelSetPhrase

    nodeTypePropertyTypes ::= propertyTypesSpecification

    edgeTypeSpecification ::= edgeTypePattern
           | edgeTypePhrase

    edgeTypePattern ::= opt_232 grp_233

    edgeTypePhrase ::= edgeKind edgeSynonym opt_234 edgeTypePhraseFiller endpointPairPhrase

    edgeTypePhraseFiller ::= edgeTypeName opt_235
           | edgeTypeFiller

    edgeTypeFiller ::= edgeTypeKeyLabelSet opt_236
           | edgeTypeImpliedContent

    edgeTypeImpliedContent ::= edgeTypeLabelSet
           | edgeTypePropertyTypes
           | edgeTypeLabelSet edgeTypePropertyTypes

    edgeTypeKeyLabelSet ::= opt_237 IMPLIES

    edgeTypeLabelSet ::= labelSetPhrase

    edgeTypePropertyTypes ::= propertyTypesSpecification

    edgeTypePatternDirected ::= edgeTypePatternPointingRight
           | edgeTypePatternPointingLeft

    edgeTypePatternPointingRight ::= sourceNodeTypeReference arcTypePointingRight destinationNodeTypeReference

    edgeTypePatternPointingLeft ::= destinationNodeTypeReference arcTypePointingLeft sourceNodeTypeReference

    edgeTypePatternUndirected ::= sourceNodeTypeReference arcTypeUndirected destinationNodeTypeReference

    arcTypePointingRight ::= MINUS_LEFT_BRACKET edgeTypeFiller BRACKET_RIGHT_ARROW

    arcTypePointingLeft ::= LEFT_ARROW_BRACKET edgeTypeFiller RIGHT_BRACKET_MINUS

    arcTypeUndirected ::= TILDE_LEFT_BRACKET edgeTypeFiller RIGHT_BRACKET_TILDE

    sourceNodeTypeReference ::= LEFT_PAREN sourceNodeTypeAlias RIGHT_PAREN
           | LEFT_PAREN opt_238 RIGHT_PAREN

    destinationNodeTypeReference ::= LEFT_PAREN destinationNodeTypeAlias RIGHT_PAREN
           | LEFT_PAREN opt_239 RIGHT_PAREN

    edgeKind ::= DIRECTED
           | UNDIRECTED

    endpointPairPhrase ::= CONNECTING endpointPair

    endpointPair ::= endpointPairDirected
           | endpointPairUndirected

    endpointPairDirected ::= endpointPairPointingRight
           | endpointPairPointingLeft

    endpointPairPointingRight ::= LEFT_PAREN sourceNodeTypeAlias connectorPointingRight destinationNodeTypeAlias RIGHT_PAREN

    endpointPairPointingLeft ::= LEFT_PAREN destinationNodeTypeAlias LEFT_ARROW sourceNodeTypeAlias RIGHT_PAREN

    endpointPairUndirected ::= LEFT_PAREN sourceNodeTypeAlias connectorUndirected destinationNodeTypeAlias RIGHT_PAREN

    connectorPointingRight ::= TO
           | RIGHT_ARROW

    connectorUndirected ::= TO
           | TILDE

    sourceNodeTypeAlias ::= regularIdentifier

    destinationNodeTypeAlias ::= regularIdentifier

    labelSetPhrase ::= LABEL labelName
           | LABELS labelSetSpecification
           | isOrColon labelSetSpecification

    labelSetSpecification ::= labelName list_241

    propertyTypesSpecification ::= LEFT_BRACE opt_242 RIGHT_BRACE

    propertyTypeList ::= propertyType list_244

    propertyType ::= propertyName opt_245 propertyValueType

    propertyValueType ::= valueType

    bindingTableType ::= opt_246 TABLE fieldTypesSpecification

    valueType ::= predefinedType
           | pathValueType
           | listValueTypeName LEFT_ANGLE_BRACKET valueType RIGHT_ANGLE_BRACKET opt_248 opt_249
           | valueType listValueTypeName opt_251 opt_252
           | listValueTypeName opt_254 opt_255
           | recordType
           | ANY opt_256 opt_257
           | opt_258 PROPERTY VALUE opt_259
           | ANY opt_260 LEFT_ANGLE_BRACKET valueType list_262 RIGHT_ANGLE_BRACKET
           | valueType VERTICAL_BAR valueType

    typed ::= DOUBLE_COLON
           | TYPED

    predefinedType ::= booleanType
           | characterStringType
           | byteStringType
           | numericType
           | temporalType
           | referenceValueType
           | immaterialValueType

    booleanType ::= grp_263 opt_264

    characterStringType ::= STRING opt_268 opt_269
           | CHAR opt_271 opt_272
           | VARCHAR opt_274 opt_275

    byteStringType ::= BYTES opt_279 opt_280
           | BINARY opt_282 opt_283
           | VARBINARY opt_285 opt_286

    minLength ::= unsignedInteger

    maxLength ::= unsignedInteger

    fixedLength ::= unsignedInteger

    numericType ::= exactNumericType
           | approximateNumericType

    exactNumericType ::= binaryExactNumericType
           | decimalExactNumericType

    binaryExactNumericType ::= signedBinaryExactNumericType
           | unsignedBinaryExactNumericType

    signedBinaryExactNumericType ::= INT8 opt_287
           | INT16 opt_288
           | INT32 opt_289
           | INT64 opt_290
           | INT128 opt_291
           | INT256 opt_292
           | SMALLINT opt_293
           | INT opt_295 opt_296
           | BIGINT opt_297
           | opt_298 verboseBinaryExactNumericType

    unsignedBinaryExactNumericType ::= UINT8 opt_299
           | UINT16 opt_300
           | UINT32 opt_301
           | UINT64 opt_302
           | UINT128 opt_303
           | UINT256 opt_304
           | USMALLINT opt_305
           | UINT opt_307 opt_308
           | UBIGINT opt_309
           | UNSIGNED verboseBinaryExactNumericType

    verboseBinaryExactNumericType ::= INTEGER8 opt_310
           | INTEGER16 opt_311
           | INTEGER32 opt_312
           | INTEGER64 opt_313
           | INTEGER128 opt_314
           | INTEGER256 opt_315
           | SMALL INTEGER opt_316
           | INTEGER opt_318 opt_319
           | BIG INTEGER opt_320

    decimalExactNumericType ::= grp_321 opt_326

    precision ::= unsignedDecimalInteger

    scale ::= unsignedDecimalInteger

    approximateNumericType ::= FLOAT16 opt_327
           | FLOAT32 opt_328
           | FLOAT64 opt_329
           | FLOAT128 opt_330
           | FLOAT256 opt_331
           | FLOAT opt_335 opt_336
           | REAL opt_337
           | DOUBLE opt_338 opt_339

    temporalType ::= temporalInstantType
           | temporalDurationType

    temporalInstantType ::= datetimeType
           | localdatetimeType
           | dateType
           | timeType
           | localtimeType

    datetimeType ::= ZONED DATETIME opt_340
           | TIMESTAMP WITH TIME ZONE opt_341

    localdatetimeType ::= LOCAL DATETIME opt_342
           | TIMESTAMP opt_344 opt_345

    dateType ::= DATE opt_346

    timeType ::= ZONED TIME opt_347
           | TIME WITH TIME ZONE opt_348

    localtimeType ::= LOCAL TIME opt_349
           | TIME WITHOUT TIME ZONE opt_350

    temporalDurationType ::= DURATION LEFT_PAREN temporalDurationQualifier RIGHT_PAREN opt_351

    temporalDurationQualifier ::= YEAR TO MONTH
           | DAY TO SECOND

    referenceValueType ::= graphReferenceValueType
           | bindingTableReferenceValueType
           | nodeReferenceValueType
           | edgeReferenceValueType

    immaterialValueType ::= nullType
           | emptyType

    nullType ::= NULL_KW

    emptyType ::= NULL_KW notNull
           | NOTHING

    graphReferenceValueType ::= openGraphReferenceValueType
           | closedGraphReferenceValueType

    closedGraphReferenceValueType ::= opt_352 GRAPH nestedGraphTypeSpecification opt_353

    openGraphReferenceValueType ::= ANY opt_354 GRAPH opt_355

    bindingTableReferenceValueType ::= bindingTableType opt_356

    nodeReferenceValueType ::= openNodeReferenceValueType
           | closedNodeReferenceValueType

    closedNodeReferenceValueType ::= nodeTypeSpecification opt_357

    openNodeReferenceValueType ::= opt_358 nodeSynonym opt_359

    edgeReferenceValueType ::= openEdgeReferenceValueType
           | closedEdgeReferenceValueType

    closedEdgeReferenceValueType ::= edgeTypeSpecification opt_360

    openEdgeReferenceValueType ::= opt_361 edgeSynonym opt_362

    pathValueType ::= PATH opt_363

    listValueTypeName ::= listValueTypeNameSynonym

    listValueTypeNameSynonym ::= LIST
           | ARRAY

    recordType ::= opt_364 RECORD opt_365
           | opt_366 fieldTypesSpecification opt_367

    fieldTypesSpecification ::= LEFT_BRACE opt_368 RIGHT_BRACE

    fieldTypeList ::= fieldType list_370

    notNull ::= NOT NULL_KW

    fieldType ::= fieldName opt_371 valueType

    searchCondition ::= booleanValueExpression

    predicate ::= existsPredicate
           | nullPredicate
           | valueTypePredicate
           | directedPredicate
           | labeledPredicate
           | sourceDestinationPredicate
           | all_differentPredicate
           | samePredicate
           | property_existsPredicate

    compOp ::= EQUALS_OPERATOR
           | NOT_EQUALS_OPERATOR
           | LEFT_ANGLE_BRACKET
           | RIGHT_ANGLE_BRACKET
           | LESS_THAN_OR_EQUALS_OPERATOR
           | GREATER_THAN_OR_EQUALS_OPERATOR

    existsPredicate ::= EXISTS grp_372

    nullPredicate ::= valueExpressionPrimary nullPredicatePart2

    nullPredicatePart2 ::= IS opt_373 NULL_KW

    valueTypePredicate ::= valueExpressionPrimary valueTypePredicatePart2

    valueTypePredicatePart2 ::= IS opt_374 typed valueType

    normalizedPredicatePart2 ::= IS opt_375 opt_376 NORMALIZED

    directedPredicate ::= elementVariableReference directedPredicatePart2

    directedPredicatePart2 ::= IS opt_377 DIRECTED

    labeledPredicate ::= elementVariableReference labeledPredicatePart2

    labeledPredicatePart2 ::= isLabeledOrColon labelExpression

    isLabeledOrColon ::= IS opt_378 LABELED
           | COLON

    sourceDestinationPredicate ::= nodeReference sourcePredicatePart2
           | nodeReference destinationPredicatePart2

    nodeReference ::= elementVariableReference

    sourcePredicatePart2 ::= IS opt_379 SOURCE OF edgeReference

    destinationPredicatePart2 ::= IS opt_380 DESTINATION OF edgeReference

    edgeReference ::= elementVariableReference

    all_differentPredicate ::= ALL_DIFFERENT LEFT_PAREN elementVariableReference COMMA elementVariableReference list_382 RIGHT_PAREN

    samePredicate ::= SAME LEFT_PAREN elementVariableReference COMMA elementVariableReference list_384 RIGHT_PAREN

    property_existsPredicate ::= PROPERTY_EXISTS LEFT_PAREN elementVariableReference COMMA propertyName RIGHT_PAREN

    valueExpression ::= grp_385 valueExpression
           | valueExpression grp_386 valueExpression
           | valueExpression grp_387 valueExpression
           | valueExpression CONCATENATION_OPERATOR valueExpression
           | valueExpression compOp valueExpression
           | predicate
           | valueExpression normalizedPredicatePart2
           | NOT valueExpression
           | valueExpression IS opt_388 truthValue
           | valueExpression AND valueExpression
           | valueExpression grp_389 valueExpression
           | opt_390 GRAPH graphExpression
           | opt_391 TABLE bindingTableExpression
           | valueFunction
           | valueExpressionPrimary

    valueFunction ::= numericValueFunction
           | datetimeSubtraction
           | datetimeValueFunction
           | durationValueFunction
           | characterOrByteStringFunction
           | listValueFunction

    booleanValueExpression ::= valueExpression

    characterOrByteStringFunction ::= subCharacterOrByteString
           | trimSingleCharacterOrByteString
           | foldCharacterString
           | trimMultiCharacterCharacterString
           | normalizeCharacterString

    subCharacterOrByteString ::= grp_392 LEFT_PAREN valueExpression COMMA stringLength RIGHT_PAREN

    trimSingleCharacterOrByteString ::= TRIM LEFT_PAREN trimOperands RIGHT_PAREN

    foldCharacterString ::= grp_393 LEFT_PAREN valueExpression RIGHT_PAREN

    trimMultiCharacterCharacterString ::= grp_394 LEFT_PAREN valueExpression opt_396 RIGHT_PAREN

    normalizeCharacterString ::= NORMALIZE LEFT_PAREN valueExpression opt_398 RIGHT_PAREN

    nodeReferenceValueExpression ::= valueExpressionPrimary

    edgeReferenceValueExpression ::= valueExpressionPrimary

    aggregatingValueExpression ::= valueExpression

    valueExpressionPrimary ::= parenthesizedValueExpression
           | aggregateFunction
           | unsignedValueSpecification
           | pathValueConstructor
           | valueExpressionPrimary PERIOD propertyName
           | valueQueryExpression
           | caseExpression
           | castSpecification
           | element_idFunction
           | letValueExpression
           | bindingVariableReference

    parenthesizedValueExpression ::= LEFT_PAREN valueExpression RIGHT_PAREN

    nonParenthesizedValueExpressionPrimary ::= nonParenthesizedValueExpressionPrimarySpecialCase
           | bindingVariableReference

    nonParenthesizedValueExpressionPrimarySpecialCase ::= aggregateFunction
           | unsignedValueSpecification
           | pathValueConstructor
           | valueExpressionPrimary PERIOD propertyName
           | valueQueryExpression
           | caseExpression
           | castSpecification
           | element_idFunction
           | letValueExpression

    unsignedValueSpecification ::= unsignedLiteral
           | generalValueSpecification

    nonNegativeIntegerSpecification ::= unsignedInteger
           | dynamicParameterSpecification

    generalValueSpecification ::= dynamicParameterSpecification
           | SESSION_USER

    dynamicParameterSpecification ::= GENERAL_PARAMETER_REFERENCE

    letValueExpression ::= LET letVariableDefinitionList IN valueExpression END

    valueQueryExpression ::= VALUE nestedQuerySpecification

    caseExpression ::= caseAbbreviation
           | caseSpecification

    caseAbbreviation ::= NULLIF LEFT_PAREN valueExpression COMMA valueExpression RIGHT_PAREN
           | COALESCE LEFT_PAREN valueExpression list_400 RIGHT_PAREN

    caseSpecification ::= simpleCase
           | searchedCase

    simpleCase ::= CASE caseOperand list_401 opt_402 END

    searchedCase ::= CASE list_403 opt_404 END

    simpleWhenClause ::= WHEN whenOperandList THEN result

    searchedWhenClause ::= WHEN searchCondition THEN result

    elseClause ::= ELSE result

    caseOperand ::= nonParenthesizedValueExpressionPrimary
           | elementVariableReference

    whenOperandList ::= whenOperand list_406

    whenOperand ::= nonParenthesizedValueExpressionPrimary
           | compOp valueExpression
           | nullPredicatePart2
           | valueTypePredicatePart2
           | normalizedPredicatePart2
           | directedPredicatePart2
           | labeledPredicatePart2
           | sourcePredicatePart2
           | destinationPredicatePart2

    result ::= resultExpression
           | nullLiteral

    resultExpression ::= valueExpression

    castSpecification ::= CAST LEFT_PAREN castOperand AS castTarget RIGHT_PAREN

    castOperand ::= valueExpression
           | nullLiteral

    castTarget ::= valueType

    aggregateFunction ::= COUNT LEFT_PAREN ASTERISK RIGHT_PAREN
           | generalSetFunction
           | binarySetFunction

    generalSetFunction ::= generalSetFunctionType LEFT_PAREN opt_407 valueExpression RIGHT_PAREN

    binarySetFunction ::= binarySetFunctionType LEFT_PAREN dependentValueExpression COMMA independentValueExpression RIGHT_PAREN

    generalSetFunctionType ::= AVG
           | COUNT
           | MAX
           | MIN
           | SUM
           | COLLECT_LIST
           | STDDEV_SAMP
           | STDDEV_POP

    setQuantifier ::= DISTINCT
           | ALL

    binarySetFunctionType ::= PERCENTILE_CONT
           | PERCENTILE_DISC

    dependentValueExpression ::= opt_408 numericValueExpression

    independentValueExpression ::= numericValueExpression

    element_idFunction ::= ELEMENT_ID LEFT_PAREN elementVariableReference RIGHT_PAREN

    bindingVariableReference ::= bindingVariable

    pathValueExpression ::= valueExpression

    pathValueConstructor ::= pathValueConstructorByEnumeration

    pathValueConstructorByEnumeration ::= PATH LEFT_BRACKET pathElementList RIGHT_BRACKET

    pathElementList ::= pathElementListStart list_409

    pathElementListStart ::= nodeReferenceValueExpression

    pathElementListStep ::= COMMA edgeReferenceValueExpression COMMA nodeReferenceValueExpression

    listValueExpression ::= valueExpression

    listValueFunction ::= trimListFunction
           | elementsFunction

    trimListFunction ::= TRIM LEFT_PAREN listValueExpression COMMA numericValueExpression RIGHT_PAREN

    elementsFunction ::= ELEMENTS LEFT_PAREN pathValueExpression RIGHT_PAREN

    listValueConstructor ::= listValueConstructorByEnumeration

    listValueConstructorByEnumeration ::= opt_410 LEFT_BRACKET opt_411 RIGHT_BRACKET

    listElementList ::= listElement list_413

    listElement ::= valueExpression

    recordConstructor ::= opt_414 fieldsSpecification

    fieldsSpecification ::= LEFT_BRACE opt_415 RIGHT_BRACE

    fieldList ::= field list_417

    field ::= fieldName COLON valueExpression

    truthValue ::= BOOLEAN_LITERAL

    numericValueExpression ::= grp_418 numericValueExpression
           | numericValueExpression grp_419 numericValueExpression
           | numericValueExpression grp_420 numericValueExpression
           | valueExpressionPrimary
           | numericValueFunction

    numericValueFunction ::= lengthExpression
           | cardinalityExpression
           | absoluteValueExpression
           | modulusExpression
           | trigonometricFunction
           | generalLogarithmFunction
           | commonLogarithm
           | naturalLogarithm
           | exponentialFunction
           | powerFunction
           | squareRoot
           | floorFunction
           | ceilingFunction

    lengthExpression ::= charLengthExpression
           | byteLengthExpression
           | pathLengthExpression

    cardinalityExpression ::= CARDINALITY LEFT_PAREN cardinalityExpressionArgument RIGHT_PAREN
           | SIZE LEFT_PAREN listValueExpression RIGHT_PAREN

    cardinalityExpressionArgument ::= valueExpression

    charLengthExpression ::= grp_421 LEFT_PAREN characterStringValueExpression RIGHT_PAREN

    byteLengthExpression ::= grp_422 LEFT_PAREN byteStringValueExpression RIGHT_PAREN

    pathLengthExpression ::= PATH_LENGTH LEFT_PAREN pathValueExpression RIGHT_PAREN

    absoluteValueExpression ::= ABS LEFT_PAREN valueExpression RIGHT_PAREN

    modulusExpression ::= MOD LEFT_PAREN numericValueExpressionDividend COMMA numericValueExpressionDivisor RIGHT_PAREN

    numericValueExpressionDividend ::= numericValueExpression

    numericValueExpressionDivisor ::= numericValueExpression

    trigonometricFunction ::= trigonometricFunctionName LEFT_PAREN numericValueExpression RIGHT_PAREN

    trigonometricFunctionName ::= SIN
           | COS
           | TAN
           | COT
           | SINH
           | COSH
           | TANH
           | ASIN
           | ACOS
           | ATAN
           | DEGREES
           | RADIANS

    generalLogarithmFunction ::= LOG_KW LEFT_PAREN generalLogarithmBase COMMA generalLogarithmArgument RIGHT_PAREN

    generalLogarithmBase ::= numericValueExpression

    generalLogarithmArgument ::= numericValueExpression

    commonLogarithm ::= LOG10 LEFT_PAREN numericValueExpression RIGHT_PAREN

    naturalLogarithm ::= LN LEFT_PAREN numericValueExpression RIGHT_PAREN

    exponentialFunction ::= EXP LEFT_PAREN numericValueExpression RIGHT_PAREN

    powerFunction ::= POWER LEFT_PAREN numericValueExpressionBase COMMA numericValueExpressionExponent RIGHT_PAREN

    numericValueExpressionBase ::= numericValueExpression

    numericValueExpressionExponent ::= numericValueExpression

    squareRoot ::= SQRT LEFT_PAREN numericValueExpression RIGHT_PAREN

    floorFunction ::= FLOOR LEFT_PAREN numericValueExpression RIGHT_PAREN

    ceilingFunction ::= grp_423 LEFT_PAREN numericValueExpression RIGHT_PAREN

    characterStringValueExpression ::= valueExpression

    byteStringValueExpression ::= valueExpression

    trimOperands ::= opt_427 trimCharacterOrByteStringSource

    trimCharacterOrByteStringSource ::= valueExpression

    trimSpecification ::= LEADING
           | TRAILING
           | BOTH

    trimCharacterOrByteString ::= valueExpression

    normalForm ::= NFC
           | NFD
           | NFKC
           | NFKD

    stringLength ::= numericValueExpression

    datetimeValueExpression ::= valueExpression

    datetimeValueFunction ::= dateFunction
           | timeFunction
           | datetimeFunction
           | localtimeFunction
           | localdatetimeFunction

    dateFunction ::= CURRENT_DATE
           | DATE LEFT_PAREN opt_428 RIGHT_PAREN

    timeFunction ::= CURRENT_TIME
           | ZONED_TIME LEFT_PAREN opt_429 RIGHT_PAREN

    localtimeFunction ::= LOCAL_TIME opt_432

    datetimeFunction ::= CURRENT_TIMESTAMP
           | ZONED_DATETIME LEFT_PAREN opt_433 RIGHT_PAREN

    localdatetimeFunction ::= LOCAL_TIMESTAMP
           | LOCAL_DATETIME LEFT_PAREN opt_434 RIGHT_PAREN

    dateFunctionParameters ::= dateString
           | recordConstructor

    timeFunctionParameters ::= timeString
           | recordConstructor

    datetimeFunctionParameters ::= datetimeString
           | recordConstructor

    durationValueExpression ::= valueExpression

    datetimeSubtraction ::= DURATION_BETWEEN LEFT_PAREN datetimeSubtractionParameters RIGHT_PAREN opt_435

    datetimeSubtractionParameters ::= datetimeValueExpression1 COMMA datetimeValueExpression2

    datetimeValueExpression1 ::= datetimeValueExpression

    datetimeValueExpression2 ::= datetimeValueExpression

    durationValueFunction ::= durationFunction
           | absoluteValueExpression

    durationFunction ::= DURATION LEFT_PAREN durationFunctionParameters RIGHT_PAREN

    durationFunctionParameters ::= durationString
           | recordConstructor

    objectName ::= identifier

    objectNameOrBindingVariable ::= regularIdentifier

    directoryName ::= identifier

    schemaName ::= identifier

    graphName ::= regularIdentifier
           | delimitedGraphName

    delimitedGraphName ::= DOUBLE_QUOTED_CHARACTER_SEQUENCE
           | ACCENT_QUOTED_CHARACTER_SEQUENCE

    graphTypeName ::= identifier

    nodeTypeName ::= identifier

    edgeTypeName ::= identifier

    bindingTableName ::= regularIdentifier
           | delimitedBindingTableName

    delimitedBindingTableName ::= DOUBLE_QUOTED_CHARACTER_SEQUENCE
           | ACCENT_QUOTED_CHARACTER_SEQUENCE

    procedureName ::= identifier

    labelName ::= identifier

    propertyName ::= identifier

    fieldName ::= identifier

    elementVariable ::= bindingVariable

    pathVariable ::= bindingVariable

    subpathVariable ::= regularIdentifier

    bindingVariable ::= regularIdentifier

    unsignedLiteral ::= unsignedNumericLiteral
           | generalLiteral

    generalLiteral ::= BOOLEAN_LITERAL
           | characterStringLiteral
           | BYTE_STRING_LITERAL
           | temporalLiteral
           | durationLiteral
           | nullLiteral
           | listLiteral
           | recordLiteral

    temporalLiteral ::= dateLiteral
           | timeLiteral
           | datetimeLiteral

    dateLiteral ::= DATE dateString

    timeLiteral ::= TIME timeString

    datetimeLiteral ::= grp_436 datetimeString

    listLiteral ::= listValueConstructorByEnumeration

    recordLiteral ::= recordConstructor

    identifier ::= regularIdentifier
           | DOUBLE_QUOTED_CHARACTER_SEQUENCE
           | ACCENT_QUOTED_CHARACTER_SEQUENCE

    regularIdentifier ::= REGULAR_IDENTIFIER
           | nonReservedWords

    timeZoneString ::= characterStringLiteral

    characterStringLiteral ::= SINGLE_QUOTED_CHARACTER_SEQUENCE
           | DOUBLE_QUOTED_CHARACTER_SEQUENCE

    unsignedNumericLiteral ::= exactNumericLiteral
           | approximateNumericLiteral

    exactNumericLiteral ::= UNSIGNED_DECIMAL_IN_SCIENTIFIC_NOTATION_WITH_EXACT_NUMBER_SUFFIX
           | UNSIGNED_DECIMAL_IN_COMMON_NOTATION_WITH_EXACT_NUMBER_SUFFIX
           | UNSIGNED_DECIMAL_IN_COMMON_NOTATION_WITHOUT_SUFFIX
           | UNSIGNED_DECIMAL_INTEGER_WITH_EXACT_NUMBER_SUFFIX
           | unsignedInteger

    approximateNumericLiteral ::= UNSIGNED_DECIMAL_IN_SCIENTIFIC_NOTATION_WITH_APPROXIMATE_NUMBER_SUFFIX
           | UNSIGNED_DECIMAL_IN_SCIENTIFIC_NOTATION_WITHOUT_SUFFIX
           | UNSIGNED_DECIMAL_IN_COMMON_NOTATION_WITH_APPROXIMATE_NUMBER_SUFFIX
           | UNSIGNED_DECIMAL_INTEGER_WITH_APPROXIMATE_NUMBER_SUFFIX

    unsignedInteger ::= UNSIGNED_DECIMAL_INTEGER
           | UNSIGNED_HEXADECIMAL_INTEGER
           | UNSIGNED_OCTAL_INTEGER
           | UNSIGNED_BINARY_INTEGER

    unsignedDecimalInteger ::= UNSIGNED_DECIMAL_INTEGER

    nullLiteral ::= NULL_KW

    dateString ::= characterStringLiteral

    timeString ::= characterStringLiteral

    datetimeString ::= characterStringLiteral

    durationLiteral ::= DURATION durationString

    durationString ::= characterStringLiteral

    nodeSynonym ::= NODE
           | VERTEX

    edgesSynonym ::= EDGES
           | RELATIONSHIPS

    edgeSynonym ::= EDGE
           | RELATIONSHIP

    nonReservedWords ::= ACYCLIC
           | BINDING
           | BINDINGS
           | CONNECTING
           | DESTINATION
           | DIFFERENT
           | DIRECTED
           | EDGE
           | EDGES
           | ELEMENT
           | ELEMENTS
           | FIRST
           | GRAPH
           | GROUPS
           | KEEP
           | LABEL
           | LABELED
           | LABELS
           | LAST
           | NFC
           | NFD
           | NFKC
           | NFKD
           | NO
           | NODE
           | NORMALIZED
           | ONLY
           | ORDINALITY
           | PROPERTY
           | READ
           | RELATIONSHIP
           | RELATIONSHIPS
           | REPEATABLE
           | SHORTEST
           | SIMPLE
           | SOURCE
           | TABLE
           | TO
           | TRAIL
           | TRANSACTION
           | TYPE
           | UNDIRECTED
           | VERTEX
           | WALK
           | WITHOUT
           | WRITE
           | ZONE

    opt_1 ::= sessionCloseCommand | $empty

    list_2 ::= sessionResetCommand | list_2 sessionResetCommand

    list_3 ::= sessionSetCommand | list_3 sessionSetCommand

    list_4 ::= $empty | list_4 sessionResetCommand

    opt_5 ::= endTransactionCommand | $empty

    seq_6 ::= procedureSpecification opt_5

    opt_7 ::= seq_6 | $empty

    opt_8 ::= endTransactionCommand | $empty

    grp_9 ::= sessionSetSchemaClause | sessionSetGraphClause | sessionSetTimeZoneClause | sessionSetParameterClause

    opt_10 ::= PROPERTY | $empty

    opt_11 ::= PROPERTY | $empty

    opt_12 ::= BINDING | $empty

    seq_13 ::= IF NOT EXISTS

    opt_14 ::= seq_13 | $empty

    opt_15 ::= sessionResetArguments | $empty

    opt_16 ::= ALL | $empty

    grp_17 ::= PARAMETERS | CHARACTERISTICS

    opt_18 ::= PROPERTY | $empty

    opt_19 ::= PARAMETER | $empty

    opt_20 ::= transactionCharacteristics | $empty

    seq_21 ::= COMMA transactionMode

    list_22 ::= $empty | list_22 seq_21

    opt_23 ::= atSchemaClause | $empty

    opt_24 ::= bindingVariableDefinitionBlock | $empty

    list_25 ::= bindingVariableDefinition | list_25 bindingVariableDefinition

    list_26 ::= $empty | list_26 nextStatement

    opt_27 ::= yieldClause | $empty

    opt_28 ::= PROPERTY | $empty

    opt_29 ::= typed | $empty

    seq_30 ::= opt_29 graphReferenceValueType

    opt_31 ::= seq_30 | $empty

    opt_32 ::= BINDING | $empty

    opt_33 ::= typed | $empty

    seq_34 ::= opt_33 bindingTableReferenceValueType

    opt_35 ::= seq_34 | $empty

    opt_36 ::= typed | $empty

    seq_37 ::= opt_36 valueType

    opt_38 ::= seq_37 | $empty

    list_39 ::= simpleCatalogModifyingStatement | list_39 simpleCatalogModifyingStatement

    seq_40 ::= IF NOT EXISTS

    opt_41 ::= seq_40 | $empty

    seq_42 ::= IF EXISTS

    opt_43 ::= seq_42 | $empty

    opt_45 ::= PROPERTY | $empty

    seq_46 ::= IF NOT EXISTS

    opt_47 ::= seq_46 | $empty

    opt_48 ::= PROPERTY | $empty

    grp_44 ::= opt_45 GRAPH opt_47 | OR REPLACE opt_48 GRAPH

    grp_49 ::= openGraphType | ofGraphType

    opt_50 ::= graphSource | $empty

    opt_51 ::= typed | $empty

    opt_52 ::= PROPERTY | $empty

    seq_53 ::= opt_52 GRAPH

    opt_54 ::= seq_53 | $empty

    opt_55 ::= typed | $empty

    opt_56 ::= typed | $empty

    opt_57 ::= PROPERTY | $empty

    seq_58 ::= opt_57 GRAPH

    opt_59 ::= seq_58 | $empty

    opt_60 ::= PROPERTY | $empty

    seq_61 ::= IF EXISTS

    opt_62 ::= seq_61 | $empty

    opt_64 ::= PROPERTY | $empty

    seq_65 ::= IF NOT EXISTS

    opt_66 ::= seq_65 | $empty

    opt_67 ::= PROPERTY | $empty

    grp_63 ::= opt_64 GRAPH TYPE opt_66 | OR REPLACE opt_67 GRAPH TYPE

    opt_68 ::= AS | $empty

    opt_69 ::= AS | $empty

    opt_70 ::= PROPERTY | $empty

    seq_71 ::= IF EXISTS

    opt_72 ::= seq_71 | $empty

    opt_73 ::= primitiveResultStatement | $empty

    opt_74 ::= primitiveResultStatement | $empty

    list_75 ::= simpleDataAccessingStatement | list_75 simpleDataAccessingStatement

    seq_76 ::= COMMA setItem

    list_77 ::= $empty | list_77 seq_76

    opt_78 ::= propertyKeyValuePairList | $empty

    seq_79 ::= COMMA removeItem

    list_80 ::= $empty | list_80 seq_79

    grp_81 ::= DETACH | NODETACH

    opt_82 ::= grp_81 | $empty

    seq_83 ::= COMMA deleteItem

    list_84 ::= $empty | list_84 seq_83

    opt_85 ::= setQuantifier | $empty

    opt_86 ::= setQuantifier | $empty

    opt_87 ::= setQuantifier | $empty

    list_88 ::= $empty | list_88 focusedLinearQueryStatementPart

    opt_89 ::= simpleLinearQueryStatement | $empty

    list_90 ::= simpleQueryStatement | list_90 simpleQueryStatement

    list_91 ::= matchStatement | list_91 matchStatement

    grp_92 ::= whereClause | searchCondition

    seq_93 ::= COMMA letVariableDefinition

    list_94 ::= $empty | list_94 seq_93

    opt_95 ::= forOrdinalityOrOffset | $empty

    grp_96 ::= ORDINALITY | OFFSET

    opt_97 ::= offsetClause | $empty

    opt_98 ::= limitClause | $empty

    opt_99 ::= limitClause | $empty

    opt_100 ::= orderByAndPageStatement | $empty

    opt_101 ::= setQuantifier | $empty

    grp_102 ::= ASTERISK | returnItemList

    opt_103 ::= groupByClause | $empty

    seq_104 ::= COMMA returnItem

    list_105 ::= $empty | list_105 seq_104

    opt_106 ::= returnItemAlias | $empty

    opt_107 ::= setQuantifier | $empty

    grp_108 ::= ASTERISK | selectItemList

    opt_109 ::= whereClause | $empty

    opt_110 ::= groupByClause | $empty

    opt_111 ::= havingClause | $empty

    opt_112 ::= orderByClause | $empty

    opt_113 ::= offsetClause | $empty

    opt_114 ::= limitClause | $empty

    seq_115 ::= selectStatementBody opt_109 opt_110 opt_111 opt_112 opt_113 opt_114

    opt_116 ::= seq_115 | $empty

    seq_117 ::= COMMA selectItem

    list_118 ::= $empty | list_118 seq_117

    opt_119 ::= selectItemAlias | $empty

    grp_120 ::= selectGraphMatchList | selectQuerySpecification

    seq_121 ::= COMMA selectGraphMatch

    list_122 ::= $empty | list_122 seq_121

    opt_123 ::= OPTIONAL | $empty

    opt_124 ::= variableScopeClause | $empty

    opt_125 ::= bindingVariableReferenceList | $empty

    seq_126 ::= COMMA bindingVariableReference

    list_127 ::= $empty | list_127 seq_126

    opt_128 ::= procedureArgumentList | $empty

    opt_129 ::= yieldClause | $empty

    seq_130 ::= COMMA procedureArgument

    list_131 ::= $empty | list_131 seq_130

    opt_132 ::= graphPatternYieldClause | $empty

    seq_133 ::= COMMA graphPatternYieldItem

    list_134 ::= $empty | list_134 seq_133

    opt_135 ::= matchMode | $empty

    opt_136 ::= keepClause | $empty

    opt_137 ::= graphPatternWhereClause | $empty

    opt_138 ::= BINDINGS | $empty

    opt_139 ::= BINDINGS | $empty

    seq_140 ::= COMMA pathPattern

    list_141 ::= $empty | list_141 seq_140

    opt_142 ::= pathVariableDeclaration | $empty

    opt_143 ::= pathPatternPrefix | $empty

    seq_144 ::= COMMA insertPathPattern

    list_145 ::= $empty | list_145 seq_144

    seq_146 ::= insertEdgePattern insertNodePattern

    list_147 ::= $empty | list_147 seq_146

    opt_148 ::= insertElementPatternFiller | $empty

    opt_149 ::= insertElementPatternFiller | $empty

    opt_150 ::= insertElementPatternFiller | $empty

    opt_151 ::= insertElementPatternFiller | $empty

    opt_152 ::= labelAndPropertySetSpecification | $empty

    opt_153 ::= elementVariableDeclaration | $empty

    opt_154 ::= elementPropertySpecification | $empty

    seq_155 ::= isOrColon labelSetSpecification

    opt_156 ::= seq_155 | $empty

    opt_157 ::= pathOrPaths | $empty

    opt_158 ::= pathMode | $empty

    opt_159 ::= pathOrPaths | $empty

    opt_160 ::= numberOfPaths | $empty

    opt_161 ::= pathMode | $empty

    opt_162 ::= pathOrPaths | $empty

    opt_163 ::= pathMode | $empty

    opt_164 ::= pathOrPaths | $empty

    opt_165 ::= pathMode | $empty

    opt_166 ::= pathOrPaths | $empty

    opt_167 ::= pathMode | $empty

    opt_168 ::= pathOrPaths | $empty

    opt_169 ::= numberOfGroups | $empty

    opt_170 ::= pathMode | $empty

    opt_171 ::= pathOrPaths | $empty

    grp_172 ::= GROUP | GROUPS

    seq_173 ::= MULTISET_ALTERNATION_OPERATOR pathTerm

    list_174 ::= seq_173 | list_174 seq_173

    seq_175 ::= VERTICAL_BAR pathTerm

    list_176 ::= seq_175 | list_176 seq_175

    list_177 ::= pathFactor | list_177 pathFactor

    opt_178 ::= elementVariableDeclaration | $empty

    opt_179 ::= isLabelExpression | $empty

    opt_180 ::= elementPatternPredicate | $empty

    seq_181 ::= COMMA propertyKeyValuePair

    list_182 ::= $empty | list_182 seq_181

    opt_183 ::= subpathVariableDeclaration | $empty

    opt_184 ::= pathModePrefix | $empty

    opt_185 ::= parenthesizedPathPatternWhereClause | $empty

    opt_186 ::= lowerBound | $empty

    opt_187 ::= upperBound | $empty

    seq_188 ::= VERTICAL_BAR simplifiedTerm

    list_189 ::= $empty | list_189 seq_188

    seq_190 ::= MULTISET_ALTERNATION_OPERATOR simplifiedTerm

    list_191 ::= $empty | list_191 seq_190

    seq_192 ::= COMMA yieldItem

    list_193 ::= $empty | list_193 seq_192

    opt_194 ::= yieldItemAlias | $empty

    seq_195 ::= yieldItemName opt_194

    seq_196 ::= COMMA groupingElement

    list_197 ::= $empty | list_197 seq_196

    seq_198 ::= COMMA sortSpecification

    list_199 ::= $empty | list_199 seq_198

    opt_200 ::= orderingSpecification | $empty

    opt_201 ::= nullOrdering | $empty

    opt_202 ::= simpleDirectoryPath | $empty

    seq_203 ::= SOLIDUS DOUBLE_PERIOD

    list_204 ::= $empty | list_204 seq_203

    opt_205 ::= simpleDirectoryPath | $empty

    seq_206 ::= directoryName SOLIDUS

    list_207 ::= seq_206 | list_207 seq_206

    opt_208 ::= catalogObjectParentReference | $empty

    opt_209 ::= catalogObjectParentReference | $empty

    opt_210 ::= catalogObjectParentReference | $empty

    opt_211 ::= SOLIDUS | $empty

    seq_212 ::= objectName PERIOD

    list_213 ::= $empty | list_213 seq_212

    seq_214 ::= objectName PERIOD

    list_215 ::= seq_214 | list_215 seq_214

    seq_216 ::= COMMA elementTypeSpecification

    list_217 ::= $empty | list_217 seq_216

    opt_218 ::= TYPE | $empty

    seq_219 ::= nodeSynonym opt_218 nodeTypeName

    opt_220 ::= seq_219 | $empty

    opt_221 ::= localNodeTypeAlias | $empty

    opt_222 ::= nodeTypeFiller | $empty

    opt_223 ::= TYPE | $empty

    seq_224 ::= AS localNodeTypeAlias

    opt_225 ::= seq_224 | $empty

    opt_226 ::= nodeTypeFiller | $empty

    opt_227 ::= nodeTypeImpliedContent | $empty

    opt_228 ::= labelSetPhrase | $empty

    opt_229 ::= edgeKind | $empty

    opt_230 ::= TYPE | $empty

    seq_231 ::= opt_229 edgeSynonym opt_230 edgeTypeName

    opt_232 ::= seq_231 | $empty

    grp_233 ::= edgeTypePatternDirected | edgeTypePatternUndirected

    opt_234 ::= TYPE | $empty

    opt_235 ::= edgeTypeFiller | $empty

    opt_236 ::= edgeTypeImpliedContent | $empty

    opt_237 ::= labelSetPhrase | $empty

    opt_238 ::= nodeTypeFiller | $empty

    opt_239 ::= nodeTypeFiller | $empty

    seq_240 ::= AMPERSAND labelName

    list_241 ::= $empty | list_241 seq_240

    opt_242 ::= propertyTypeList | $empty

    seq_243 ::= COMMA propertyType

    list_244 ::= $empty | list_244 seq_243

    opt_245 ::= typed | $empty

    opt_246 ::= BINDING | $empty

    seq_247 ::= LEFT_BRACKET maxLength RIGHT_BRACKET

    opt_248 ::= seq_247 | $empty

    opt_249 ::= notNull | $empty

    seq_250 ::= LEFT_BRACKET maxLength RIGHT_BRACKET

    opt_251 ::= seq_250 | $empty

    opt_252 ::= notNull | $empty

    seq_253 ::= LEFT_BRACKET maxLength RIGHT_BRACKET

    opt_254 ::= seq_253 | $empty

    opt_255 ::= notNull | $empty

    opt_256 ::= VALUE | $empty

    opt_257 ::= notNull | $empty

    opt_258 ::= ANY | $empty

    opt_259 ::= notNull | $empty

    opt_260 ::= VALUE | $empty

    seq_261 ::= VERTICAL_BAR valueType

    list_262 ::= $empty | list_262 seq_261

    grp_263 ::= BOOL | BOOLEAN

    opt_264 ::= notNull | $empty

    seq_265 ::= minLength COMMA

    opt_266 ::= seq_265 | $empty

    seq_267 ::= LEFT_PAREN opt_266 maxLength RIGHT_PAREN

    opt_268 ::= seq_267 | $empty

    opt_269 ::= notNull | $empty

    seq_270 ::= LEFT_PAREN fixedLength RIGHT_PAREN

    opt_271 ::= seq_270 | $empty

    opt_272 ::= notNull | $empty

    seq_273 ::= LEFT_PAREN maxLength RIGHT_PAREN

    opt_274 ::= seq_273 | $empty

    opt_275 ::= notNull | $empty

    seq_276 ::= minLength COMMA

    opt_277 ::= seq_276 | $empty

    seq_278 ::= LEFT_PAREN opt_277 maxLength RIGHT_PAREN

    opt_279 ::= seq_278 | $empty

    opt_280 ::= notNull | $empty

    seq_281 ::= LEFT_PAREN fixedLength RIGHT_PAREN

    opt_282 ::= seq_281 | $empty

    opt_283 ::= notNull | $empty

    seq_284 ::= LEFT_PAREN maxLength RIGHT_PAREN

    opt_285 ::= seq_284 | $empty

    opt_286 ::= notNull | $empty

    opt_287 ::= notNull | $empty

    opt_288 ::= notNull | $empty

    opt_289 ::= notNull | $empty

    opt_290 ::= notNull | $empty

    opt_291 ::= notNull | $empty

    opt_292 ::= notNull | $empty

    opt_293 ::= notNull | $empty

    seq_294 ::= LEFT_PAREN precision RIGHT_PAREN

    opt_295 ::= seq_294 | $empty

    opt_296 ::= notNull | $empty

    opt_297 ::= notNull | $empty

    opt_298 ::= SIGNED | $empty

    opt_299 ::= notNull | $empty

    opt_300 ::= notNull | $empty

    opt_301 ::= notNull | $empty

    opt_302 ::= notNull | $empty

    opt_303 ::= notNull | $empty

    opt_304 ::= notNull | $empty

    opt_305 ::= notNull | $empty

    seq_306 ::= LEFT_PAREN precision RIGHT_PAREN

    opt_307 ::= seq_306 | $empty

    opt_308 ::= notNull | $empty

    opt_309 ::= notNull | $empty

    opt_310 ::= notNull | $empty

    opt_311 ::= notNull | $empty

    opt_312 ::= notNull | $empty

    opt_313 ::= notNull | $empty

    opt_314 ::= notNull | $empty

    opt_315 ::= notNull | $empty

    opt_316 ::= notNull | $empty

    seq_317 ::= LEFT_PAREN precision RIGHT_PAREN

    opt_318 ::= seq_317 | $empty

    opt_319 ::= notNull | $empty

    opt_320 ::= notNull | $empty

    grp_321 ::= DECIMAL | DEC

    seq_322 ::= COMMA scale

    opt_323 ::= seq_322 | $empty

    opt_324 ::= notNull | $empty

    seq_325 ::= LEFT_PAREN precision opt_323 RIGHT_PAREN opt_324

    opt_326 ::= seq_325 | $empty

    opt_327 ::= notNull | $empty

    opt_328 ::= notNull | $empty

    opt_329 ::= notNull | $empty

    opt_330 ::= notNull | $empty

    opt_331 ::= notNull | $empty

    seq_332 ::= COMMA scale

    opt_333 ::= seq_332 | $empty

    seq_334 ::= LEFT_PAREN precision opt_333 RIGHT_PAREN

    opt_335 ::= seq_334 | $empty

    opt_336 ::= notNull | $empty

    opt_337 ::= notNull | $empty

    opt_338 ::= PRECISION | $empty

    opt_339 ::= notNull | $empty

    opt_340 ::= notNull | $empty

    opt_341 ::= notNull | $empty

    opt_342 ::= notNull | $empty

    seq_343 ::= WITHOUT TIME ZONE

    opt_344 ::= seq_343 | $empty

    opt_345 ::= notNull | $empty

    opt_346 ::= notNull | $empty

    opt_347 ::= notNull | $empty

    opt_348 ::= notNull | $empty

    opt_349 ::= notNull | $empty

    opt_350 ::= notNull | $empty

    opt_351 ::= notNull | $empty

    opt_352 ::= PROPERTY | $empty

    opt_353 ::= notNull | $empty

    opt_354 ::= PROPERTY | $empty

    opt_355 ::= notNull | $empty

    opt_356 ::= notNull | $empty

    opt_357 ::= notNull | $empty

    opt_358 ::= ANY | $empty

    opt_359 ::= notNull | $empty

    opt_360 ::= notNull | $empty

    opt_361 ::= ANY | $empty

    opt_362 ::= notNull | $empty

    opt_363 ::= notNull | $empty

    opt_364 ::= ANY | $empty

    opt_365 ::= notNull | $empty

    opt_366 ::= RECORD | $empty

    opt_367 ::= notNull | $empty

    opt_368 ::= fieldTypeList | $empty

    seq_369 ::= COMMA fieldType

    list_370 ::= $empty | list_370 seq_369

    opt_371 ::= typed | $empty

    grp_372 ::= LEFT_BRACE graphPattern RIGHT_BRACE | LEFT_PAREN graphPattern RIGHT_PAREN | LEFT_BRACE matchStatementBlock RIGHT_BRACE | LEFT_PAREN matchStatementBlock RIGHT_PAREN | nestedQuerySpecification

    opt_373 ::= NOT | $empty

    opt_374 ::= NOT | $empty

    opt_375 ::= NOT | $empty

    opt_376 ::= normalForm | $empty

    opt_377 ::= NOT | $empty

    opt_378 ::= NOT | $empty

    opt_379 ::= NOT | $empty

    opt_380 ::= NOT | $empty

    seq_381 ::= COMMA elementVariableReference

    list_382 ::= $empty | list_382 seq_381

    seq_383 ::= COMMA elementVariableReference

    list_384 ::= $empty | list_384 seq_383

    grp_385 ::= PLUS_SIGN | MINUS_SIGN

    grp_386 ::= ASTERISK | SOLIDUS

    grp_387 ::= PLUS_SIGN | MINUS_SIGN

    opt_388 ::= NOT | $empty

    grp_389 ::= OR | XOR

    opt_390 ::= PROPERTY | $empty

    opt_391 ::= BINDING | $empty

    grp_392 ::= LEFT | RIGHT

    grp_393 ::= UPPER | LOWER

    grp_394 ::= BTRIM | LTRIM | RTRIM

    seq_395 ::= COMMA valueExpression

    opt_396 ::= seq_395 | $empty

    seq_397 ::= COMMA normalForm

    opt_398 ::= seq_397 | $empty

    seq_399 ::= COMMA valueExpression

    list_400 ::= seq_399 | list_400 seq_399

    list_401 ::= simpleWhenClause | list_401 simpleWhenClause

    opt_402 ::= elseClause | $empty

    list_403 ::= searchedWhenClause | list_403 searchedWhenClause

    opt_404 ::= elseClause | $empty

    seq_405 ::= COMMA whenOperand

    list_406 ::= $empty | list_406 seq_405

    opt_407 ::= setQuantifier | $empty

    opt_408 ::= setQuantifier | $empty

    list_409 ::= $empty | list_409 pathElementListStep

    opt_410 ::= listValueTypeName | $empty

    opt_411 ::= listElementList | $empty

    seq_412 ::= COMMA listElement

    list_413 ::= $empty | list_413 seq_412

    opt_414 ::= RECORD | $empty

    opt_415 ::= fieldList | $empty

    seq_416 ::= COMMA field

    list_417 ::= $empty | list_417 seq_416

    grp_418 ::= PLUS_SIGN | MINUS_SIGN

    grp_419 ::= ASTERISK | SOLIDUS

    grp_420 ::= PLUS_SIGN | MINUS_SIGN

    grp_421 ::= CHAR_LENGTH | CHARACTER_LENGTH

    grp_422 ::= BYTE_LENGTH | OCTET_LENGTH

    grp_423 ::= CEIL | CEILING

    opt_424 ::= trimSpecification | $empty

    opt_425 ::= trimCharacterOrByteString | $empty

    seq_426 ::= opt_424 opt_425 FROM

    opt_427 ::= seq_426 | $empty

    opt_428 ::= dateFunctionParameters | $empty

    opt_429 ::= timeFunctionParameters | $empty

    opt_430 ::= timeFunctionParameters | $empty

    seq_431 ::= LEFT_PAREN opt_430 RIGHT_PAREN

    opt_432 ::= seq_431 | $empty

    opt_433 ::= datetimeFunctionParameters | $empty

    opt_434 ::= datetimeFunctionParameters | $empty

    opt_435 ::= temporalDurationQualifier | $empty

    grp_436 ::= DATETIME | TIMESTAMP

%End
