-- AUTO-GENERATED from antlr/grammars-v4 graphql by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=GraphqlParser
%options package=lpg.grammars.graphql
%options template=dtParserTemplateF.gi
%options import_terminals=GraphqlLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    document
%End

%Rules
    document ::= list_1

    definition ::= executableDocument
           | typeSystemDocument
           | typeSystemExtensionDocument

    executableDocument ::= list_2

    executableDefinition ::= operationDefinition
           | fragmentDefinition

    operationDefinition ::= operationType opt_3 opt_4 opt_5 selectionSet
           | selectionSet

    operationType ::= QUERY
           | MUTATION
           | SUBSCRIPTION

    selectionSet ::= LBRACE list_6 RBRACE

    selection ::= field
           | fragmentSpread
           | inlineFragment

    field ::= opt_7 name opt_8 opt_9 opt_10

    arguments ::= LPAREN list_11 RPAREN

    argument ::= name COLON value

    alias ::= name COLON

    fragmentSpread ::= ELLIPSIS fragmentName opt_12

    fragmentDefinition ::= FRAGMENT fragmentName typeCondition opt_13 selectionSet

    fragmentName ::= name

    typeCondition ::= ON namedType

    inlineFragment ::= ELLIPSIS opt_14 opt_15 selectionSet

    value ::= variable
           | intValue
           | floatValue
           | stringValue
           | booleanValue
           | nullValue
           | enumValue
           | listValue
           | objectValue

    intValue ::= INT

    floatValue ::= FLOAT

    booleanValue ::= TRUE
           | FALSE

    stringValue ::= STRING
           | BLOCK_STRING

    nullValue ::= NULL_LITERAL

    enumValue ::= name

    listValue ::= LBRACKET RBRACKET
           | LBRACKET list_16 RBRACKET

    objectValue ::= LBRACE list_17 RBRACE

    objectField ::= name COLON value

    variable ::= DOLLAR name

    variableDefinitions ::= LPAREN list_18 RPAREN

    variableDefinition ::= variable COLON type_ opt_19

    defaultValue ::= EQ value

    type_ ::= namedType opt_20
           | listType opt_21

    namedType ::= name

    listType ::= LBRACKET type_ RBRACKET

    directives ::= list_22

    directive ::= AT name opt_23

    typeSystemDocument ::= list_24

    typeSystemDefinition ::= schemaDefinition
           | typeDefinition
           | directiveDefinition

    typeSystemExtensionDocument ::= list_25

    typeSystemExtension ::= schemaExtension
           | typeExtension

    schemaDefinition ::= SCHEMA opt_26 LBRACE list_27 RBRACE

    rootOperationTypeDefinition ::= operationType COLON namedType

    schemaExtension ::= EXTEND SCHEMA opt_28 LBRACE list_29 RBRACE
           | EXTEND SCHEMA directives

    description ::= stringValue

    typeDefinition ::= scalarTypeDefinition
           | objectTypeDefinition
           | interfaceTypeDefinition
           | unionTypeDefinition
           | enumTypeDefinition
           | inputObjectTypeDefinition

    typeExtension ::= scalarTypeExtension
           | objectTypeExtension
           | interfaceTypeExtension
           | unionTypeExtension
           | enumTypeExtension
           | inputObjectTypeExtension

    scalarTypeDefinition ::= opt_30 SCALAR name opt_31

    scalarTypeExtension ::= EXTEND SCALAR name directives

    objectTypeDefinition ::= opt_32 TYPE name opt_33 opt_34 opt_35

    implementsInterfaces ::= IMPLEMENTS opt_36 namedType
           | implementsInterfaces AMP namedType

    fieldsDefinition ::= LBRACE list_37 RBRACE

    fieldDefinition ::= opt_38 name opt_39 COLON type_ opt_40

    argumentsDefinition ::= LPAREN list_41 RPAREN

    inputValueDefinition ::= opt_42 name COLON type_ opt_43 opt_44

    objectTypeExtension ::= EXTEND TYPE name opt_45 opt_46 fieldsDefinition
           | EXTEND TYPE name opt_47 directives
           | EXTEND TYPE name implementsInterfaces

    interfaceTypeDefinition ::= opt_48 INTERFACE name opt_49 opt_50 opt_51

    interfaceTypeExtension ::= EXTEND INTERFACE name opt_52 opt_53 fieldsDefinition
           | EXTEND INTERFACE name opt_54 directives

    unionTypeDefinition ::= opt_55 UNION name opt_56 opt_57

    unionMemberTypes ::= EQ opt_58 namedType list_60

    unionTypeExtension ::= EXTEND UNION name opt_61 unionMemberTypes
           | EXTEND UNION name directives

    enumTypeDefinition ::= opt_62 ENUM name opt_63 opt_64

    enumValuesDefinition ::= LBRACE list_65 RBRACE

    enumValueDefinition ::= opt_66 enumValue opt_67

    enumTypeExtension ::= EXTEND ENUM name opt_68 enumValuesDefinition
           | EXTEND ENUM name directives

    inputObjectTypeDefinition ::= opt_69 INPUT name opt_70 opt_71

    inputFieldsDefinition ::= LBRACE list_72 RBRACE

    inputObjectTypeExtension ::= EXTEND INPUT name opt_73 inputFieldsDefinition
           | EXTEND INPUT name directives

    directiveDefinition ::= opt_74 DIRECTIVE AT name opt_75 opt_76 ON directiveLocations

    directiveLocations ::= directiveLocation list_78

    directiveLocation ::= executableDirectiveLocation
           | typeSystemDirectiveLocation

    executableDirectiveLocation ::= QUERY
           | MUTATION
           | SUBSCRIPTION
           | FIELD
           | FRAGMENT_DEFINITION
           | FRAGMENT_SPREAD
           | INLINE_FRAGMENT
           | VARIABLE_DEFINITION

    typeSystemDirectiveLocation ::= SCHEMA
           | SCALAR
           | OBJECT
           | FIELD_DEFINITION
           | ARGUMENT_DEFINITION
           | INTERFACE
           | UNION
           | ENUM
           | ENUM_VALUE
           | INPUT_OBJECT
           | INPUT_FIELD_DEFINITION

    name ::= IDENTIFIER

    list_1 ::= definition | list_1 definition

    list_2 ::= executableDefinition | list_2 executableDefinition

    opt_3 ::= name | $empty

    opt_4 ::= variableDefinitions | $empty

    opt_5 ::= directives | $empty

    list_6 ::= selection | list_6 selection

    opt_7 ::= alias | $empty

    opt_8 ::= arguments | $empty

    opt_9 ::= directives | $empty

    opt_10 ::= selectionSet | $empty

    list_11 ::= argument | list_11 argument

    opt_12 ::= directives | $empty

    opt_13 ::= directives | $empty

    opt_14 ::= typeCondition | $empty

    opt_15 ::= directives | $empty

    list_16 ::= value | list_16 value

    list_17 ::= $empty | list_17 objectField

    list_18 ::= variableDefinition | list_18 variableDefinition

    opt_19 ::= defaultValue | $empty

    opt_20 ::= BANG | $empty

    opt_21 ::= BANG | $empty

    list_22 ::= directive | list_22 directive

    opt_23 ::= arguments | $empty

    list_24 ::= typeSystemDefinition | list_24 typeSystemDefinition

    list_25 ::= typeSystemExtension | list_25 typeSystemExtension

    opt_26 ::= directives | $empty

    list_27 ::= rootOperationTypeDefinition | list_27 rootOperationTypeDefinition

    opt_28 ::= directives | $empty

    list_29 ::= rootOperationTypeDefinition | list_29 rootOperationTypeDefinition

    opt_30 ::= description | $empty

    opt_31 ::= directives | $empty

    opt_32 ::= description | $empty

    opt_33 ::= implementsInterfaces | $empty

    opt_34 ::= directives | $empty

    opt_35 ::= fieldsDefinition | $empty

    opt_36 ::= AMP | $empty

    list_37 ::= fieldDefinition | list_37 fieldDefinition

    opt_38 ::= description | $empty

    opt_39 ::= argumentsDefinition | $empty

    opt_40 ::= directives | $empty

    list_41 ::= inputValueDefinition | list_41 inputValueDefinition

    opt_42 ::= description | $empty

    opt_43 ::= defaultValue | $empty

    opt_44 ::= directives | $empty

    opt_45 ::= implementsInterfaces | $empty

    opt_46 ::= directives | $empty

    opt_47 ::= implementsInterfaces | $empty

    opt_48 ::= description | $empty

    opt_49 ::= implementsInterfaces | $empty

    opt_50 ::= directives | $empty

    opt_51 ::= fieldsDefinition | $empty

    opt_52 ::= implementsInterfaces | $empty

    opt_53 ::= directives | $empty

    opt_54 ::= implementsInterfaces | $empty

    opt_55 ::= description | $empty

    opt_56 ::= directives | $empty

    opt_57 ::= unionMemberTypes | $empty

    opt_58 ::= PIPE | $empty

    grp_59 ::= PIPE namedType

    list_60 ::= $empty | list_60 grp_59

    opt_61 ::= directives | $empty

    opt_62 ::= description | $empty

    opt_63 ::= directives | $empty

    opt_64 ::= enumValuesDefinition | $empty

    list_65 ::= enumValueDefinition | list_65 enumValueDefinition

    opt_66 ::= description | $empty

    opt_67 ::= directives | $empty

    opt_68 ::= directives | $empty

    opt_69 ::= description | $empty

    opt_70 ::= directives | $empty

    opt_71 ::= inputFieldsDefinition | $empty

    list_72 ::= inputValueDefinition | list_72 inputValueDefinition

    opt_73 ::= directives | $empty

    opt_74 ::= description | $empty

    opt_75 ::= argumentsDefinition | $empty

    opt_76 ::= REPEATABLE | $empty

    grp_77 ::= PIPE directiveLocation

    list_78 ::= $empty | list_78 grp_77

%End
