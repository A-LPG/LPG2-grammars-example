-- AUTO-GENERATED from antlr/grammars-v4 asn/asn by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=AsnParser
%options package=lpg.grammars.asn.asn
%options template=dtParserTemplateF.gi
%options import_terminals=AsnLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    modules
%End

%Rules
    modules ::= list_1

    moduleDefinition ::= IDENTIFIER opt_5 DEFINITIONS_LITERAL tagDefault extensionDefault ASSIGN_OP BEGIN_LITERAL moduleBody END_LITERAL

    tagDefault ::= opt_8

    extensionDefault ::= opt_10

    moduleBody ::= opt_12

    exports ::= opt_14

    symbolsExported ::= opt_15

    imports ::= opt_17

    symbolsImported ::= opt_18

    symbolsFromModuleList ::= symbolsFromModule listn19

    symbolsFromModule ::= symbolList FROM_LITERAL globalModuleReference

    globalModuleReference ::= IDENTIFIER assignedIdentifier

    assignedIdentifier ::= $empty

    symbolList ::= symbol list_21

    symbol ::= IDENTIFIER opt_23

    assignmentList ::= list_24

    assignment ::= IDENTIFIER grp_25

    sequenceType ::= SEQUENCE_LITERAL LBRACE opt_27 RBRACE

    extensionAndException ::= ELLIPSIS opt_28

    optionalExtensionMarker ::= opt_30

    componentTypeLists ::= rootComponentTypeList opt_33
           | extensionAndException extensionAdditions grp_34

    rootComponentTypeList ::= componentTypeList

    componentTypeList ::= componentType listn36

    componentType ::= namedType opt_38
           | COMPONENTS_LITERAL OF_LITERAL asnType

    extensionAdditions ::= opt_40

    extensionAdditionList ::= extensionAddition list_42

    extensionAddition ::= componentType
           | extensionAdditionGroup

    extensionAdditionGroup ::= DOUBLE_L_BRACKET versionNumber componentTypeList DOUBLE_R_BRACKET

    versionNumber ::= opt_44

    sequenceOfType ::= SEQUENCE_LITERAL opt_47 OF_LITERAL grp_48

    sizeConstraint ::= SIZE_LITERAL constraint

    parameterizedAssignment ::= parameterList ASSIGN_OP grp_49
           | definedObjectClass ASSIGN_OP grp_50

    parameterList ::= LBRACE parameter list_52 RBRACE

    parameter ::= optn54 IDENTIFIER

    paramGovernor ::= governor
           | IDENTIFIER

    governor ::= asnType
           | definedObjectClass

    objectClassAssignment ::= ASSIGN_OP objectClass

    objectClass ::= definedObjectClass
           | objectClassDefn

    definedObjectClass ::= optn56 IDENTIFIER
           | TYPE_IDENTIFIER_LITERAL
           | ABSTRACT_SYNTAX_LITERAL

    usefulObjectClassReference ::= TYPE_IDENTIFIER_LITERAL
           | ABSTRACT_SYNTAX_LITERAL

    externalObjectClassReference ::= IDENTIFIER DOT IDENTIFIER

    objectClassDefn ::= CLASS_LITERAL LBRACE fieldSpec list_58 RBRACE optn59

    withSyntaxSpec ::= WITH_LITERAL SYNTAX_LITERAL syntaxList

    syntaxList ::= LBRACE list_60 RBRACE

    tokenOrGroupSpec ::= requiredToken
           | optionalGroup

    optionalGroup ::= LBRACKET list_61 RBRACKET

    requiredToken ::= literal
           | primitiveFieldName

    literal ::= IDENTIFIER
           | COMMA

    primitiveFieldName ::= AMP IDENTIFIER

    fieldSpec ::= AMP IDENTIFIER grpn62

    typeFieldSpec ::= AMP IDENTIFIER opt_74

    typeOptionalitySpec ::= OPTIONAL_LITERAL
           | DEFAULT_LITERAL asnType

    fixedTypeValueFieldSpec ::= AMP IDENTIFIER asnType opt_75 opt_76

    valueOptionalitySpec ::= OPTIONAL_LITERAL
           | DEFAULT_LITERAL value

    variableTypeValueFieldSpec ::= AMP IDENTIFIER fieldName opt_77

    fixedTypeValueSetFieldSpec ::= AMP IDENTIFIER asnType opt_78

    valueSetOptionalitySpec ::= OPTIONAL_LITERAL
           | DEFAULT_LITERAL valueSet

    object_ ::= definedObject
           | parameterizedObject

    parameterizedObject ::= definedObject actualParameterList

    definedObject ::= IDENTIFIER opt_79

    objectSet ::= LBRACE objectSetSpec RBRACE

    objectSetSpec ::= rootElementSetSpec optn83
           | ELLIPSIS optn85

    fieldName ::= AMP IDENTIFIER list_87

    valueSet ::= LBRACE elementSetSpecs RBRACE

    elementSetSpecs ::= rootElementSetSpec opt_91

    rootElementSetSpec ::= elementSetSpec

    additionalElementSetSpec ::= elementSetSpec

    elementSetSpec ::= unions
           | ALL_LITERAL exclusions

    unions ::= intersections list_93

    exclusions ::= EXCEPT_LITERAL elements

    intersections ::= intersectionElements list_95

    unionMark ::= PIPE
           | UNION_LITERAL

    intersectionMark ::= CARET
           | INTERSECTION_LITERAL

    elements ::= subtypeElements

    objectSetElements ::= object_
           | definedObject

    intersectionElements ::= elements opt_96

    subtypeElements ::= grp_97 opt_98 DOUBLE_DOT opt_99 grp_100
           | sizeConstraint
           | PATTERN_LITERAL value
           | value

    variableTypeValueSetFieldSpec ::= AMP IDENTIFIER fieldName optn101

    objectFieldSpec ::= AMP IDENTIFIER definedObjectClass optn102

    objectOptionalitySpec ::= OPTIONAL_LITERAL
           | DEFAULT_LITERAL object_

    objectSetFieldSpec ::= AMP IDENTIFIER definedObjectClass optn103

    objectSetOptionalitySpec ::= OPTIONAL_LITERAL
           | DEFAULT_LITERAL objectSet

    typeAssignment ::= ASSIGN_OP asnType

    valueAssignment ::= asnType ASSIGN_OP value

    asnType ::= grp_104 listn105

    builtinType ::= octetStringType
           | bitStringType
           | choiceType
           | enumeratedType
           | integerType
           | sequenceType
           | sequenceOfType
           | setType
           | setOfType
           | objectidentifiertype
           | objectClassFieldType
           | BOOLEAN_LITERAL
           | NULL_LITERAL

    objectClassFieldType ::= definedObjectClass DOT fieldName

    setType ::= SET_LITERAL LBRACE optn107 RBRACE

    setOfType ::= SET_LITERAL optn109 OF_LITERAL grp_110

    referencedType ::= definedType

    definedType ::= IDENTIFIER opt_112 opt_113

    constraint ::= LPAREN constraintSpec opt_114 RPAREN

    constraintSpec ::= generalConstraint
           | subtypeConstraint

    userDefinedConstraint ::= CONSTRAINED_LITERAL BY_LITERAL LBRACE userDefinedConstraintParameter listn116 RBRACE

    generalConstraint ::= userDefinedConstraint
           | tableConstraint
           | contentsConstraint

    userDefinedConstraintParameter ::= governor opt_118

    tableConstraint ::= componentRelationConstraint

    simpleTableConstraint ::= objectSet

    contentsConstraint ::= CONTAINING_LITERAL asnType
           | ENCODED_LITERAL BY_LITERAL value
           | CONTAINING_LITERAL asnType ENCODED_LITERAL BY_LITERAL value
           | WITH_LITERAL COMPONENTS_LITERAL LBRACE componentPresenceLists RBRACE

    componentPresenceLists ::= opt_119 optn123
           | ELLIPSIS optn125

    componentPresenceList ::= componentPresence listn127

    componentPresence ::= IDENTIFIER grp_128

    subtypeConstraint ::= elementSetSpecs

    value ::= builtinValue

    builtinValue ::= enumeratedValue
           | integerValue
           | choiceValue
           | objectIdentifierValue
           | booleanValue
           | STRING

    objectIdentifierValue ::= LBRACE objIdComponentsList RBRACE

    objIdComponentsList ::= objIdComponents listn129

    objIdComponents ::= NUMBER
           | IDENTIFIER opt_132
           | definedValue

    integerValue ::= signedNumber
           | IDENTIFIER

    choiceValue ::= IDENTIFIER COLON value

    enumeratedValue ::= IDENTIFIER

    signedNumber ::= opt_133 NUMBER

    choiceType ::= CHOICE_LITERAL LBRACE alternativeTypeLists RBRACE

    alternativeTypeLists ::= rootAlternativeTypeList opt_135

    extensionAdditionAlternatives ::= opt_137

    extensionAdditionAlternativesList ::= extensionAdditionAlternative listn139

    extensionAdditionAlternative ::= extensionAdditionAlternativesGroup
           | namedType

    extensionAdditionAlternativesGroup ::= DOUBLE_L_BRACKET versionNumber alternativeTypeList DOUBLE_R_BRACKET

    rootAlternativeTypeList ::= alternativeTypeList

    alternativeTypeList ::= namedType listn141

    namedType ::= IDENTIFIER asnType

    enumeratedType ::= ENUMERATED_LITERAL LBRACE enumerations RBRACE

    enumerations ::= rootEnumeration optn146

    rootEnumeration ::= enumeration

    enumeration ::= enumerationItem listn148

    enumerationItem ::= IDENTIFIER
           | namedNumber
           | value

    namedNumber ::= IDENTIFIER LPAREN grp_149 RPAREN

    definedValue ::= parameterizedValue

    parameterizedValue ::= simpleDefinedValue optn150

    simpleDefinedValue ::= IDENTIFIER optn152

    actualParameterList ::= LBRACE actualParameter listn154 RBRACE

    actualParameter ::= asnType
           | value

    exceptionSpec ::= BANG exceptionIdentification

    exceptionIdentification ::= signedNumber
           | definedValue
           | asnType COLON value

    additionalEnumeration ::= enumeration

    integerType ::= INTEGER_LITERAL optn156

    namedNumberList ::= namedNumber listn158

    objectidentifiertype ::= OBJECT_LITERAL IDENTIFIER_LITERAL

    componentRelationConstraint ::= LBRACE IDENTIFIER opt_160 RBRACE opt_164

    atNotation ::= grp_165 componentIdList

    level ::= opt_167

    componentIdList ::= IDENTIFIER listn169

    octetStringType ::= OCTET_LITERAL STRING_LITERAL

    bitStringType ::= BIT_LITERAL STRING_LITERAL optn171

    namedBitList ::= namedBit listn173

    namedBit ::= IDENTIFIER LPAREN grp_174 RPAREN

    booleanValue ::= TRUE_LITERAL
           | FALSE_LITERAL

    list_1 ::= moduleDefinition | list_1 moduleDefinition

    seq_2 ::= IDENTIFIER LPAREN NUMBER RPAREN

    list_3 ::= $empty | list_3 seq_2

    seq_4 ::= LBRACE list_3 RBRACE

    opt_5 ::= seq_4 | $empty

    grp_7 ::= EXPLICIT_LITERAL | IMPLICIT_LITERAL | AUTOMATIC_LITERAL

    grp_6 ::= grp_7 TAGS_LITERAL

    opt_8 ::= grp_6 | $empty

    seq_9 ::= EXTENSIBILITY_LITERAL IMPLIED_LITERAL

    opt_10 ::= seq_9 | $empty

    seq_11 ::= exports imports assignmentList

    opt_12 ::= seq_11 | $empty

    grp_13 ::= EXPORTS_LITERAL symbolsExported SEMI | EXPORTS_LITERAL ALL_LITERAL SEMI

    opt_14 ::= grp_13 | $empty

    opt_15 ::= symbolList | $empty

    seq_16 ::= IMPORTS_LITERAL symbolsImported SEMI

    opt_17 ::= seq_16 | $empty

    opt_18 ::= symbolsFromModuleList | $empty

    listn19 ::= $empty | listn19 symbolsFromModule

    seqn20 ::= COMMA symbol

    list_21 ::= $empty | list_21 seqn20

    seqn22 ::= LBRACE RBRACE

    opt_23 ::= seqn22 | $empty

    list_24 ::= assignment | list_24 assignment

    grp_25 ::= valueAssignment | typeAssignment | parameterizedAssignment | objectClassAssignment

    grp_26 ::= extensionAndException optionalExtensionMarker | componentTypeLists

    opt_27 ::= grp_26 | $empty

    opt_28 ::= exceptionSpec | $empty

    seqn29 ::= COMMA ELLIPSIS

    opt_30 ::= seqn29 | $empty

    grp_32 ::= optionalExtensionMarker | ELLIPSIS COMMA rootComponentTypeList

    grp_31 ::= COMMA extensionAndException extensionAdditions grp_32

    opt_33 ::= grp_31 | $empty

    grp_34 ::= optionalExtensionMarker | ELLIPSIS COMMA rootComponentTypeList

    seq_35 ::= COMMA componentType

    listn36 ::= $empty | listn36 seq_35

    grp_37 ::= OPTIONAL_LITERAL | DEFAULT_LITERAL value

    opt_38 ::= grp_37 | $empty

    seq_39 ::= COMMA extensionAdditionList

    opt_40 ::= seq_39 | $empty

    seqn41 ::= COMMA extensionAddition

    list_42 ::= $empty | list_42 seqn41

    seqn43 ::= NUMBER COLON

    opt_44 ::= seqn43 | $empty

    grp_46 ::= constraint | sizeConstraint

    grp_45 ::= LPAREN grp_46 RPAREN

    opt_47 ::= grp_45 | $empty

    grp_48 ::= asnType | namedType

    grp_49 ::= asnType | value | valueSet

    grp_50 ::= object_ | objectClass | objectSet

    seq_51 ::= COMMA parameter

    list_52 ::= $empty | list_52 seq_51

    seq_53 ::= paramGovernor COLON

    optn54 ::= seq_53 | $empty

    seq_55 ::= IDENTIFIER DOT

    optn56 ::= seq_55 | $empty

    seq_57 ::= COMMA fieldSpec

    list_58 ::= $empty | list_58 seq_57

    optn59 ::= withSyntaxSpec | $empty

    list_60 ::= tokenOrGroupSpec | list_60 tokenOrGroupSpec

    list_61 ::= tokenOrGroupSpec | list_61 tokenOrGroupSpec

    opt_63 ::= typeOptionalitySpec | $empty

    opt_65 ::= valueSetOptionalitySpec | $empty

    opt_66 ::= UNIQUE_LITERAL | $empty

    opt_67 ::= valueOptionalitySpec | $empty

    grpn64 ::= opt_65 | opt_66 opt_67

    grpn69 ::= valueSet | value

    grpn68 ::= OPTIONAL_LITERAL | DEFAULT_LITERAL grpn69

    opt_70 ::= grpn68 | $empty

    grpn72 ::= objectSet | object_

    grpn71 ::= OPTIONAL_LITERAL | DEFAULT_LITERAL grpn72

    opt_73 ::= grpn71 | $empty

    grpn62 ::= opt_63 | asnType grpn64 | fieldName opt_70 | definedObjectClass opt_73

    opt_74 ::= typeOptionalitySpec | $empty

    opt_75 ::= UNIQUE_LITERAL | $empty

    opt_76 ::= valueOptionalitySpec | $empty

    opt_77 ::= valueOptionalitySpec | $empty

    opt_78 ::= valueSetOptionalitySpec | $empty

    opt_79 ::= DOT | $empty

    seq_80 ::= COMMA additionalElementSetSpec

    optn81 ::= seq_80 | $empty

    seq_82 ::= COMMA ELLIPSIS optn81

    optn83 ::= seq_82 | $empty

    seq_84 ::= COMMA additionalElementSetSpec

    optn85 ::= seq_84 | $empty

    seq_86 ::= AMP IDENTIFIER DOT

    list_87 ::= $empty | list_87 seq_86

    seq_88 ::= COMMA additionalElementSetSpec

    optn89 ::= seq_88 | $empty

    seqn90 ::= COMMA ELLIPSIS optn89

    opt_91 ::= seqn90 | $empty

    seqn92 ::= unionMark intersections

    list_93 ::= $empty | list_93 seqn92

    seqn94 ::= intersectionMark intersectionElements

    list_95 ::= $empty | list_95 seqn94

    opt_96 ::= exclusions | $empty

    grp_97 ::= value | MIN_LITERAL

    opt_98 ::= LT | $empty

    opt_99 ::= LT | $empty

    grp_100 ::= value | MAX_LITERAL

    optn101 ::= valueSetOptionalitySpec | $empty

    optn102 ::= objectOptionalitySpec | $empty

    optn103 ::= objectSetOptionalitySpec | $empty

    grp_104 ::= builtinType | referencedType

    listn105 ::= $empty | listn105 constraint

    grp_106 ::= extensionAndException optionalExtensionMarker | componentTypeLists

    optn107 ::= grp_106 | $empty

    grp_108 ::= constraint | sizeConstraint

    optn109 ::= grp_108 | $empty

    grp_110 ::= asnType | namedType

    seqn111 ::= DOT IDENTIFIER

    opt_112 ::= seqn111 | $empty

    opt_113 ::= actualParameterList | $empty

    opt_114 ::= exceptionSpec | $empty

    seqn115 ::= COMMA userDefinedConstraintParameter

    listn116 ::= $empty | listn116 seqn115

    grp_117 ::= COLON value | valueSet | object_ | objectSet

    opt_118 ::= grp_117 | $empty

    opt_119 ::= componentPresenceList | $empty

    seq_120 ::= COMMA componentPresenceList

    optn121 ::= seq_120 | $empty

    seq_122 ::= COMMA ELLIPSIS optn121

    optn123 ::= seq_122 | $empty

    seq_124 ::= COMMA componentPresenceList

    optn125 ::= seq_124 | $empty

    seq_126 ::= COMMA componentPresence

    listn127 ::= $empty | listn127 seq_126

    grp_128 ::= ABSENT_LITERAL | PRESENT_LITERAL

    listn129 ::= $empty | listn129 objIdComponents

    grpn131 ::= NUMBER | definedValue

    grpn130 ::= LPAREN grpn131 RPAREN

    opt_132 ::= grpn130 | $empty

    opt_133 ::= MINUS | $empty

    seq_134 ::= COMMA extensionAndException extensionAdditionAlternatives optionalExtensionMarker

    opt_135 ::= seq_134 | $empty

    seq_136 ::= COMMA extensionAdditionAlternativesList

    opt_137 ::= seq_136 | $empty

    seq_138 ::= COMMA extensionAdditionAlternative

    listn139 ::= $empty | listn139 seq_138

    seq_140 ::= COMMA namedType

    listn141 ::= $empty | listn141 seq_140

    optn142 ::= exceptionSpec | $empty

    seq_143 ::= COMMA additionalEnumeration

    optn144 ::= seq_143 | $empty

    seq_145 ::= COMMA ELLIPSIS optn142 optn144

    optn146 ::= seq_145 | $empty

    seq_147 ::= COMMA enumerationItem

    listn148 ::= $empty | listn148 seq_147

    grp_149 ::= signedNumber | definedValue

    optn150 ::= actualParameterList | $empty

    seq_151 ::= DOT IDENTIFIER

    optn152 ::= seq_151 | $empty

    seq_153 ::= COMMA actualParameter

    listn154 ::= $empty | listn154 seq_153

    seq_155 ::= LBRACE namedNumberList RBRACE

    optn156 ::= seq_155 | $empty

    seq_157 ::= COMMA namedNumber

    listn158 ::= $empty | listn158 seq_157

    seq_159 ::= DOT IDENTIFIER

    opt_160 ::= seq_159 | $empty

    seqn161 ::= COMMA atNotation

    listn162 ::= $empty | listn162 seqn161

    seqn163 ::= LBRACE atNotation listn162 RBRACE

    opt_164 ::= seqn163 | $empty

    grp_165 ::= AT | AT level

    seqn166 ::= DOT level

    opt_167 ::= seqn166 | $empty

    seqn168 ::= DOT IDENTIFIER

    listn169 ::= $empty | listn169 seqn168

    seq_170 ::= LBRACE namedBitList RBRACE

    optn171 ::= seq_170 | $empty

    seq_172 ::= COMMA namedBit

    listn173 ::= $empty | listn173 seq_172

    grp_174 ::= NUMBER | definedValue

%End
