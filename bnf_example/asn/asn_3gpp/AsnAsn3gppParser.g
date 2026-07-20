-- AUTO-GENERATED from antlr/grammars-v4 asn/asn_3gpp by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=AsnAsn3gppParser
%options package=lpg.grammars.asn.asn_3gpp
%options template=dtParserTemplateF.gi
%options import_terminals=AsnAsn3gppLexer.gi
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

    assignmentList ::= assignment list_24

    assignment ::= IDENTIFIER grp_25

    sequenceType ::= SEQUENCE_LITERAL LBRACE opt_27 RBRACE

    extensionAndException ::= ELLIPSIS opt_28

    optionalExtensionMarker ::= opt_30

    componentTypeLists ::= rootComponentTypeList opt_35
           | extensionAndException extensionAdditions grp_36

    rootComponentTypeList ::= componentTypeList

    componentTypeList ::= componentType list_40

    componentType ::= namedType opt_42
           | COMPONENTS_LITERAL OF_LITERAL asnType

    tag ::= needTag
           | condTag
           | IDENTIFIER

    needTag ::= IDENTIFIER IDENTIFIER

    condTag ::= IDENTIFIER IDENTIFIER

    extensionAdditions ::= opt_44

    extensionAdditionList ::= extensionAddition list_46

    extensionAddition ::= componentType
           | extensionAdditionGroup

    extensionAdditionGroup ::= DOUBLE_L_BRACKET versionNumber componentTypeList opt_47 DOUBLE_R_BRACKET

    versionNumber ::= opt_49

    sequenceOfType ::= SEQUENCE_LITERAL optn52 OF_LITERAL grp_53

    sizeConstraint ::= SIZE_LITERAL constraint

    parameterizedAssignment ::= parameterList ASSIGN_OP grp_54
           | definedObjectClass ASSIGN_OP grp_55

    parameterList ::= LBRACE parameter list_57 RBRACE

    parameter ::= optn59 IDENTIFIER

    paramGovernor ::= governor
           | IDENTIFIER

    governor ::= asnType
           | definedObjectClass

    objectClassAssignment ::= ASSIGN_OP objectClass

    objectClass ::= definedObjectClass
           | objectClassDefn

    definedObjectClass ::= opt_61 IDENTIFIER
           | TYPE_IDENTIFIER_LITERAL
           | ABSTRACT_SYNTAX_LITERAL

    usefulObjectClassReference ::= TYPE_IDENTIFIER_LITERAL
           | ABSTRACT_SYNTAX_LITERAL

    externalObjectClassReference ::= IDENTIFIER DOT IDENTIFIER

    objectClassDefn ::= CLASS_LITERAL LBRACE fieldSpec list_63 RBRACE opt_64

    withSyntaxSpec ::= WITH_LITERAL SYNTAX_LITERAL syntaxList

    syntaxList ::= LBRACE list_65 RBRACE

    tokenOrGroupSpec ::= requiredToken
           | optionalGroup

    optionalGroup ::= LBRACKET list_66 RBRACKET

    requiredToken ::= literal
           | primitiveFieldName

    literal ::= IDENTIFIER
           | COMMA

    primitiveFieldName ::= AMP IDENTIFIER

    fieldSpec ::= AMP IDENTIFIER grpn67

    typeFieldSpec ::= AMP IDENTIFIER opt_79

    typeOptionalitySpec ::= OPTIONAL_LITERAL
           | DEFAULT_LITERAL asnType

    fixedTypeValueFieldSpec ::= AMP IDENTIFIER asnType optn80 optn81

    valueOptionalitySpec ::= OPTIONAL_LITERAL
           | DEFAULT_LITERAL value

    variableTypeValueFieldSpec ::= AMP IDENTIFIER fieldName optn82

    fixedTypeValueSetFieldSpec ::= AMP IDENTIFIER asnType optn83

    valueSetOptionalitySpec ::= OPTIONAL_LITERAL
           | DEFAULT_LITERAL valueSet

    object_ ::= definedObject
           | parameterizedObject

    parameterizedObject ::= definedObject actualParameterList

    definedObject ::= IDENTIFIER optn84

    objectSet ::= LBRACE objectSetSpec RBRACE

    objectSetSpec ::= rootElementSetSpec optn88
           | ELLIPSIS opt_90

    fieldName ::= AMP IDENTIFIER list_92

    valueSet ::= LBRACE elementSetSpecs RBRACE

    elementSetSpecs ::= rootElementSetSpec opt_96

    rootElementSetSpec ::= elementSetSpec

    additionalElementSetSpec ::= elementSetSpec

    elementSetSpec ::= unions
           | ALL_LITERAL exclusions

    unions ::= intersections list_98

    exclusions ::= EXCEPT_LITERAL elements

    intersections ::= intersectionElements listn100

    unionMark ::= PIPE
           | UNION_LITERAL

    intersectionMark ::= CARET
           | INTERSECTION_LITERAL

    elements ::= subtypeElements

    objectSetElements ::= object_
           | definedObject

    intersectionElements ::= elements optn101

    subtypeElements ::= grp_102 optn103 DOUBLE_DOT optn104 grp_105
           | sizeConstraint
           | PATTERN_LITERAL value
           | value

    variableTypeValueSetFieldSpec ::= AMP IDENTIFIER fieldName optn106

    objectFieldSpec ::= AMP IDENTIFIER definedObjectClass optn107

    objectOptionalitySpec ::= OPTIONAL_LITERAL
           | DEFAULT_LITERAL object_

    objectSetFieldSpec ::= AMP IDENTIFIER definedObjectClass optn108

    objectSetOptionalitySpec ::= OPTIONAL_LITERAL
           | DEFAULT_LITERAL objectSet

    typeAssignment ::= ASSIGN_OP asnType

    valueAssignment ::= asnType ASSIGN_OP value

    asnType ::= grp_109 listn110

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

    setType ::= SET_LITERAL LBRACE opt_112 RBRACE

    setOfType ::= SET_LITERAL opt_114 OF_LITERAL grp_115

    referencedType ::= definedType

    definedType ::= IDENTIFIER opt_117 opt_118

    constraint ::= LPAREN constraintSpec opt_119 RPAREN

    constraintSpec ::= generalConstraint
           | subtypeConstraint

    userDefinedConstraint ::= CONSTRAINED_LITERAL BY_LITERAL LBRACE userDefinedConstraintParameter listn121 RBRACE

    generalConstraint ::= userDefinedConstraint
           | tableConstraint
           | contentsConstraint

    userDefinedConstraintParameter ::= governor optn123

    tableConstraint ::= componentRelationConstraint

    simpleTableConstraint ::= objectSet

    contentsConstraint ::= CONTAINING_LITERAL asnType
           | ENCODED_LITERAL BY_LITERAL value
           | CONTAINING_LITERAL asnType ENCODED_LITERAL BY_LITERAL value
           | WITH_LITERAL COMPONENTS_LITERAL LBRACE componentPresenceLists RBRACE

    componentPresenceLists ::= optn124 optn128
           | ELLIPSIS opt_130

    componentPresenceList ::= componentPresence listn132

    componentPresence ::= IDENTIFIER grpn133

    subtypeConstraint ::= elementSetSpecs

    value ::= builtinValue

    builtinValue ::= enumeratedValue
           | integerValue
           | choiceValue
           | objectIdentifierValue
           | booleanValue
           | STRING

    objectIdentifierValue ::= LBRACE objIdComponentsList RBRACE

    objIdComponentsList ::= objIdComponents listn134

    objIdComponents ::= NUMBER
           | IDENTIFIER opt_137
           | definedValue

    integerValue ::= signedNumber
           | IDENTIFIER

    choiceValue ::= IDENTIFIER COLON value

    enumeratedValue ::= IDENTIFIER

    signedNumber ::= opt_138 NUMBER

    choiceType ::= CHOICE_LITERAL LBRACE alternativeTypeLists RBRACE

    alternativeTypeLists ::= rootAlternativeTypeList optn140

    extensionAdditionAlternatives ::= optn142

    extensionAdditionAlternativesList ::= extensionAdditionAlternative listn144

    extensionAdditionAlternative ::= extensionAdditionAlternativesGroup
           | namedType

    extensionAdditionAlternativesGroup ::= DOUBLE_L_BRACKET versionNumber alternativeTypeList DOUBLE_R_BRACKET

    rootAlternativeTypeList ::= alternativeTypeList

    alternativeTypeList ::= namedType listn146

    namedType ::= IDENTIFIER asnType

    enumeratedType ::= ENUMERATED_LITERAL LBRACE enumerations RBRACE

    enumerations ::= rootEnumeration optn151

    rootEnumeration ::= enumeration

    enumeration ::= enumerationItem listn153

    enumerationItem ::= IDENTIFIER
           | namedNumber
           | value

    namedNumber ::= IDENTIFIER LPAREN grp_154 RPAREN

    definedValue ::= parameterizedValue

    parameterizedValue ::= simpleDefinedValue optn155

    simpleDefinedValue ::= IDENTIFIER optn157

    actualParameterList ::= LBRACE actualParameter listn159 RBRACE

    actualParameter ::= asnType
           | value

    exceptionSpec ::= BANG exceptionIdentification

    exceptionIdentification ::= signedNumber
           | definedValue
           | asnType COLON value

    additionalEnumeration ::= enumeration

    integerType ::= INTEGER_LITERAL opt_161

    namedNumberList ::= namedNumber listn163

    objectidentifiertype ::= OBJECT_LITERAL IDENTIFIER_LITERAL

    componentRelationConstraint ::= LBRACE IDENTIFIER opt_165 RBRACE opt_169

    atNotation ::= grp_170 componentIdList

    level ::= optn172

    componentIdList ::= IDENTIFIER listn174

    octetStringType ::= OCTET_LITERAL STRING_LITERAL

    bitStringType ::= BIT_LITERAL STRING_LITERAL optn176

    namedBitList ::= namedBit listn178

    namedBit ::= IDENTIFIER LPAREN grp_179 RPAREN

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

    list_24 ::= $empty | list_24 assignment

    grp_25 ::= valueAssignment | typeAssignment | parameterizedAssignment | objectClassAssignment

    grp_26 ::= extensionAndException optionalExtensionMarker | componentTypeLists

    opt_27 ::= grp_26 | $empty

    opt_28 ::= exceptionSpec | $empty

    seqn29 ::= COMMA ELLIPSIS

    opt_30 ::= seqn29 | $empty

    opt_32 ::= tag | $empty

    opt_34 ::= tag | $empty

    grp_33 ::= optionalExtensionMarker | ELLIPSIS COMMA rootComponentTypeList opt_34

    grp_31 ::= tag | COMMA opt_32 extensionAndException extensionAdditions grp_33

    opt_35 ::= grp_31 | $empty

    opt_37 ::= tag | $empty

    grp_36 ::= optionalExtensionMarker | ELLIPSIS COMMA rootComponentTypeList opt_37

    opt_38 ::= tag | $empty

    seq_39 ::= COMMA opt_38 componentType

    list_40 ::= $empty | list_40 seq_39

    grp_41 ::= OPTIONAL_LITERAL | DEFAULT_LITERAL value

    opt_42 ::= grp_41 | $empty

    seqn43 ::= COMMA extensionAdditionList

    opt_44 ::= seqn43 | $empty

    seqn45 ::= COMMA extensionAddition

    list_46 ::= $empty | list_46 seqn45

    opt_47 ::= tag | $empty

    seqn48 ::= NUMBER COLON

    opt_49 ::= seqn48 | $empty

    grp_51 ::= constraint | sizeConstraint

    grp_50 ::= LPAREN grp_51 RPAREN

    optn52 ::= grp_50 | $empty

    grp_53 ::= asnType | namedType

    grp_54 ::= asnType | value | valueSet

    grp_55 ::= object_ | objectClass | objectSet

    seq_56 ::= COMMA parameter

    list_57 ::= $empty | list_57 seq_56

    seq_58 ::= paramGovernor COLON

    optn59 ::= seq_58 | $empty

    seq_60 ::= IDENTIFIER DOT

    opt_61 ::= seq_60 | $empty

    seq_62 ::= COMMA fieldSpec

    list_63 ::= $empty | list_63 seq_62

    opt_64 ::= withSyntaxSpec | $empty

    list_65 ::= tokenOrGroupSpec | list_65 tokenOrGroupSpec

    list_66 ::= tokenOrGroupSpec | list_66 tokenOrGroupSpec

    opt_68 ::= typeOptionalitySpec | $empty

    opt_70 ::= valueSetOptionalitySpec | $empty

    opt_71 ::= UNIQUE_LITERAL | $empty

    opt_72 ::= valueOptionalitySpec | $empty

    grpn69 ::= opt_70 | opt_71 opt_72

    grpn74 ::= valueSet | value

    grpn73 ::= OPTIONAL_LITERAL | DEFAULT_LITERAL grpn74

    opt_75 ::= grpn73 | $empty

    grpn77 ::= objectSet | object_

    grpn76 ::= OPTIONAL_LITERAL | DEFAULT_LITERAL grpn77

    opt_78 ::= grpn76 | $empty

    grpn67 ::= opt_68 | asnType grpn69 | fieldName opt_75 | definedObjectClass opt_78

    opt_79 ::= typeOptionalitySpec | $empty

    optn80 ::= UNIQUE_LITERAL | $empty

    optn81 ::= valueOptionalitySpec | $empty

    optn82 ::= valueOptionalitySpec | $empty

    optn83 ::= valueSetOptionalitySpec | $empty

    optn84 ::= DOT | $empty

    seq_85 ::= COMMA additionalElementSetSpec

    optn86 ::= seq_85 | $empty

    seq_87 ::= COMMA ELLIPSIS optn86

    optn88 ::= seq_87 | $empty

    seq_89 ::= COMMA additionalElementSetSpec

    opt_90 ::= seq_89 | $empty

    seqn91 ::= AMP IDENTIFIER DOT

    list_92 ::= $empty | list_92 seqn91

    seqn93 ::= COMMA additionalElementSetSpec

    opt_94 ::= seqn93 | $empty

    seqn95 ::= COMMA ELLIPSIS opt_94

    opt_96 ::= seqn95 | $empty

    seqn97 ::= unionMark intersections

    list_98 ::= $empty | list_98 seqn97

    seqn99 ::= intersectionMark intersectionElements

    listn100 ::= $empty | listn100 seqn99

    optn101 ::= exclusions | $empty

    grp_102 ::= value | MIN_LITERAL

    optn103 ::= LT | $empty

    optn104 ::= LT | $empty

    grp_105 ::= value | MAX_LITERAL

    optn106 ::= valueSetOptionalitySpec | $empty

    optn107 ::= objectOptionalitySpec | $empty

    optn108 ::= objectSetOptionalitySpec | $empty

    grp_109 ::= builtinType | referencedType

    listn110 ::= $empty | listn110 constraint

    grp_111 ::= extensionAndException optionalExtensionMarker | componentTypeLists

    opt_112 ::= grp_111 | $empty

    grp_113 ::= constraint | sizeConstraint

    opt_114 ::= grp_113 | $empty

    grp_115 ::= asnType | namedType

    seqn116 ::= DOT IDENTIFIER

    opt_117 ::= seqn116 | $empty

    opt_118 ::= actualParameterList | $empty

    opt_119 ::= exceptionSpec | $empty

    seq_120 ::= COMMA userDefinedConstraintParameter

    listn121 ::= $empty | listn121 seq_120

    grp_122 ::= COLON value | valueSet | object_ | objectSet

    optn123 ::= grp_122 | $empty

    optn124 ::= componentPresenceList | $empty

    seq_125 ::= COMMA componentPresenceList

    optn126 ::= seq_125 | $empty

    seq_127 ::= COMMA ELLIPSIS optn126

    optn128 ::= seq_127 | $empty

    seq_129 ::= COMMA componentPresenceList

    opt_130 ::= seq_129 | $empty

    seq_131 ::= COMMA componentPresence

    listn132 ::= $empty | listn132 seq_131

    grpn133 ::= ABSENT_LITERAL | PRESENT_LITERAL

    listn134 ::= $empty | listn134 objIdComponents

    grpn136 ::= NUMBER | definedValue

    grpn135 ::= LPAREN grpn136 RPAREN

    opt_137 ::= grpn135 | $empty

    opt_138 ::= MINUS | $empty

    seq_139 ::= COMMA extensionAndException extensionAdditionAlternatives optionalExtensionMarker

    optn140 ::= seq_139 | $empty

    seq_141 ::= COMMA extensionAdditionAlternativesList

    optn142 ::= seq_141 | $empty

    seq_143 ::= COMMA extensionAdditionAlternative

    listn144 ::= $empty | listn144 seq_143

    seq_145 ::= COMMA namedType

    listn146 ::= $empty | listn146 seq_145

    optn147 ::= exceptionSpec | $empty

    seq_148 ::= COMMA additionalEnumeration

    optn149 ::= seq_148 | $empty

    seq_150 ::= COMMA ELLIPSIS optn147 optn149

    optn151 ::= seq_150 | $empty

    seq_152 ::= COMMA enumerationItem

    listn153 ::= $empty | listn153 seq_152

    grp_154 ::= signedNumber | definedValue

    optn155 ::= actualParameterList | $empty

    seq_156 ::= DOT IDENTIFIER

    optn157 ::= seq_156 | $empty

    seq_158 ::= COMMA actualParameter

    listn159 ::= $empty | listn159 seq_158

    seqn160 ::= LBRACE namedNumberList RBRACE

    opt_161 ::= seqn160 | $empty

    seqn162 ::= COMMA namedNumber

    listn163 ::= $empty | listn163 seqn162

    seqn164 ::= DOT IDENTIFIER

    opt_165 ::= seqn164 | $empty

    seqn166 ::= COMMA atNotation

    listn167 ::= $empty | listn167 seqn166

    seqn168 ::= LBRACE atNotation listn167 RBRACE

    opt_169 ::= seqn168 | $empty

    grp_170 ::= AT | AT level

    seq_171 ::= DOT level

    optn172 ::= seq_171 | $empty

    seq_173 ::= DOT IDENTIFIER

    listn174 ::= $empty | listn174 seq_173

    seq_175 ::= LBRACE namedBitList RBRACE

    optn176 ::= seq_175 | $empty

    seq_177 ::= COMMA namedBit

    listn178 ::= $empty | listn178 seq_177

    grp_179 ::= NUMBER | definedValue

%End
