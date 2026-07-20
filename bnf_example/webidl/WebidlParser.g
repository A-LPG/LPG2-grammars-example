-- AUTO-GENERATED from antlr/grammars-v4 webidl by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=WebidlParser
%options package=lpg.grammars.webidl
%options template=dtParserTemplateF.gi
%options import_terminals=WebidlLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    webIDL
%End

%Rules
    webIDL ::= definitions

    definitions ::= extendedAttributeList definition definitions
           | $empty

    definition ::= callbackOrInterfaceOrMixin
           | namespace_
           | partial
           | dictionary
           | enum_
           | typedef_
           | includesStatement

    argumentNameKeyword ::= ASYNC
           | ATTRIBUTE
           | CALLBACK
           | CONST
           | CONSTRUCTOR
           | DELETER
           | DICTIONARY
           | ENUM
           | GETTER
           | INCLUDES
           | INHERIT
           | INTERFACE
           | ITERABLE
           | MAPLIKE
           | MIXIN
           | NAMESPACE
           | PARTIAL
           | READONLY
           | REQUIRED
           | SETLIKE
           | SETTER
           | STATIC
           | STRINGIFIER
           | TYPEDEF
           | UNRESTRICTED

    callbackOrInterfaceOrMixin ::= CALLBACK callbackRestOrInterface
           | INTERFACE interfaceOrMixin

    interfaceOrMixin ::= interfaceRest
           | mixinRest

    interfaceRest ::= IDENTIFIER inheritance LBRACE interfaceMembers RBRACE SEMI

    partial ::= PARTIAL partialDefinition

    partialDefinition ::= INTERFACE partialInterfaceOrPartialMixin
           | partialDictionary
           | namespace_

    partialInterfaceOrPartialMixin ::= partialInterfaceRest
           | mixinRest

    partialInterfaceRest ::= IDENTIFIER LBRACE partialInterfaceMembers RBRACE SEMI

    interfaceMembers ::= extendedAttributeList interfaceMember interfaceMembers
           | $empty

    interfaceMember ::= partialInterfaceMember
           | constructor

    partialInterfaceMembers ::= extendedAttributeList partialInterfaceMember partialInterfaceMembers
           | $empty

    partialInterfaceMember ::= const_
           | operation
           | stringifier
           | staticMember
           | iterable
           | asyncIterable
           | readonlyMember
           | readWriteAttribute
           | readWriteMaplike
           | readWriteSetlike
           | inheritAttribute

    inheritance ::= COLON IDENTIFIER
           | $empty

    mixinRest ::= MIXIN IDENTIFIER LBRACE mixinMembers RBRACE SEMI

    mixinMembers ::= extendedAttributeList mixinMember mixinMembers
           | $empty

    mixinMember ::= const_
           | regularOperation
           | stringifier
           | optionalReadOnly attributeRest

    includesStatement ::= IDENTIFIER INCLUDES IDENTIFIER SEMI

    callbackRestOrInterface ::= callbackRest
           | INTERFACE IDENTIFIER LBRACE callbackInterfaceMembers RBRACE SEMI

    callbackInterfaceMembers ::= extendedAttributeList callbackInterfaceMember callbackInterfaceMembers
           | $empty

    callbackInterfaceMember ::= const_
           | regularOperation

    const_ ::= CONST constType IDENTIFIER EQ constValue SEMI

    constValue ::= booleanLiteralNt
           | floatLiteral
           | INTEGER_WEBIDL

    booleanLiteralNt ::= TRUE
           | FALSE

    floatLiteral ::= DECIMAL_WEBIDL
           | _INFINITY
           | INFINITY
           | NAN

    constType ::= primitiveType
           | IDENTIFIER

    readonlyMember ::= READONLY readonlyMemberRest

    readonlyMemberRest ::= attributeRest
           | maplikeRest
           | setlikeRest

    readWriteAttribute ::= attributeRest

    inheritAttribute ::= INHERIT attributeRest

    attributeRest ::= ATTRIBUTE typeWithExtendedAttributes attributeName SEMI

    attributeName ::= attributeNameKeywordNt
           | IDENTIFIER

    attributeNameKeywordNt ::= ASYNC
           | REQUIRED

    optionalReadOnly ::= READONLY
           | $empty

    defaultValue ::= constValue
           | STRING_WEBIDL
           | LBRACKET RBRACKET
           | LBRACE RBRACE
           | NULL_LITERAL

    operation ::= regularOperation
           | specialOperation

    regularOperation ::= type_ operationRest

    specialOperation ::= special regularOperation

    special ::= GETTER
           | SETTER
           | DELETER

    operationRest ::= optionalOperationName LPAREN argumentList RPAREN SEMI

    optionalOperationName ::= operationName
           | $empty

    operationName ::= operationNameKeywordNt
           | IDENTIFIER

    operationNameKeywordNt ::= INCLUDES

    argumentList ::= argument arguments
           | $empty

    arguments ::= COMMA argument arguments
           | $empty

    argument ::= extendedAttributeList argumentRest

    argumentRest ::= OPTIONAL typeWithExtendedAttributes argumentName default_
           | type_ ellipsis argumentName

    argumentName ::= argumentNameKeyword
           | IDENTIFIER

    ellipsis ::= ELLIPSIS
           | $empty

    constructor ::= CONSTRUCTOR LPAREN argumentList RPAREN SEMI

    stringifier ::= STRINGIFIER stringifierRest

    stringifierRest ::= optionalReadOnly attributeRest
           | regularOperation
           | SEMI

    staticMember ::= STATIC staticMemberRest

    staticMemberRest ::= optionalReadOnly attributeRest
           | regularOperation

    iterable ::= ITERABLE LT typeWithExtendedAttributes optionalType GT SEMI

    optionalType ::= COMMA typeWithExtendedAttributes
           | $empty

    asyncIterable ::= ASYNC ITERABLE LT typeWithExtendedAttributes optionalType GT optionalArgumentList SEMI

    optionalArgumentList ::= LPAREN argumentList RPAREN
           | $empty

    readWriteMaplike ::= maplikeRest

    maplikeRest ::= MAPLIKE LT typeWithExtendedAttributes COMMA typeWithExtendedAttributes GT SEMI

    readWriteSetlike ::= setlikeRest

    setlikeRest ::= SETLIKE LT typeWithExtendedAttributes GT SEMI

    namespace_ ::= NAMESPACE IDENTIFIER LBRACE namespaceMembers RBRACE SEMI

    namespaceMembers ::= extendedAttributeList namespaceMember namespaceMembers
           | $empty

    namespaceMember ::= regularOperation
           | READONLY attributeRest
           | const_

    dictionary ::= DICTIONARY IDENTIFIER inheritance LBRACE dictionaryMembers RBRACE SEMI

    dictionaryMembers ::= dictionaryMember dictionaryMembers
           | $empty

    dictionaryMember ::= extendedAttributeList dictionaryMemberRest

    dictionaryMemberRest ::= REQUIRED typeWithExtendedAttributes IDENTIFIER SEMI
           | type_ IDENTIFIER default_ SEMI

    partialDictionary ::= DICTIONARY IDENTIFIER LBRACE dictionaryMembers RBRACE SEMI

    default_ ::= EQ defaultValue
           | $empty

    enum_ ::= ENUM IDENTIFIER LBRACE enumValueList RBRACE SEMI

    enumValueList ::= STRING_WEBIDL enumValueListComma

    enumValueListComma ::= COMMA enumValueListString
           | $empty

    enumValueListString ::= STRING_WEBIDL enumValueListComma
           | $empty

    callbackRest ::= IDENTIFIER EQ type_ LPAREN argumentList RPAREN SEMI

    typedef_ ::= TYPEDEF typeWithExtendedAttributes IDENTIFIER SEMI

    type_ ::= singleType
           | unionType null_

    typeWithExtendedAttributes ::= extendedAttributeList type_

    singleType ::= distinguishableType
           | ANY
           | promiseType

    unionType ::= LPAREN unionMemberType OR unionMemberType unionMemberTypes RPAREN

    unionMemberType ::= extendedAttributeList distinguishableType
           | unionType null_

    unionMemberTypes ::= OR unionMemberType unionMemberTypes
           | $empty

    distinguishableType ::= primitiveType null_
           | stringType null_
           | IDENTIFIER null_
           | SEQUENCE LT typeWithExtendedAttributes GT null_
           | OBJECT null_
           | SYMBOL null_
           | bufferRelatedType null_
           | FROZENARRAY LT typeWithExtendedAttributes GT null_
           | OBSERVABLEARRAY LT typeWithExtendedAttributes GT null_
           | recordType null_

    primitiveType ::= unsignedIntegerType
           | unrestrictedFloatType
           | UNDEFINED
           | BOOLEAN
           | BYTE
           | OCTET
           | BIGINT

    unrestrictedFloatType ::= UNRESTRICTED floatTypeNt
           | floatTypeNt

    floatTypeNt ::= FLOAT
           | DOUBLE

    unsignedIntegerType ::= UNSIGNED integerType
           | integerType

    integerType ::= SHORT
           | LONG optionalLong

    optionalLong ::= LONG
           | $empty

    stringType ::= BYTESTRING
           | DOMSTRING
           | USVSTRING

    promiseType ::= PROMISE LT type_ GT

    recordType ::= RECORD LT stringType COMMA typeWithExtendedAttributes GT

    null_ ::= QUESTION
           | $empty

    bufferRelatedType ::= ARRAYBUFFER
           | DATAVIEW
           | INT8ARRAY
           | INT16ARRAY
           | INT32ARRAY
           | UINT8ARRAY
           | UINT16ARRAY
           | UINT32ARRAY
           | UINT8CLAMPEDARRAY
           | FLOAT32ARRAY
           | FLOAT64ARRAY

    extendedAttributeList ::= LBRACKET extendedAttribute extendedAttributes RBRACKET
           | $empty

    extendedAttributes ::= COMMA extendedAttribute extendedAttributes
           | $empty

    extendedAttribute ::= extendedAttributeNoArgs
           | extendedAttributeArgList
           | extendedAttributeNamedArgList
           | extendedAttributeIdent
           | extendedAttributeIdentList
           | extendedAttributeString
           | extendedAttributeStringList

    other ::= INTEGER_WEBIDL
           | DECIMAL_WEBIDL
           | IDENTIFIER
           | STRING_WEBIDL
           | OTHER_WEBIDL
           | MINUS
           | _INFINITY
           | DOT
           | ELLIPSIS
           | COLON
           | SEMI
           | LT
           | EQ
           | GT
           | QUESTION
           | BYTESTRING
           | DOMSTRING
           | FROZENARRAY
           | INFINITY
           | NAN
           | OBSERVABLEARRAY
           | PROMISE
           | USVSTRING
           | ANY
           | BIGINT
           | BOOLEAN
           | BYTE
           | DOUBLE
           | FALSE
           | FLOAT
           | LONG
           | NULL_LITERAL
           | OBJECT
           | OCTET
           | OR
           | OPTIONAL
           | RECORD
           | SEQUENCE
           | SHORT
           | SYMBOL
           | TRUE
           | UNSIGNED
           | UNDEFINED
           | argumentNameKeyword
           | bufferRelatedType

    otherOrComma ::= other
           | COMMA

    identifierList ::= IDENTIFIER identifiers

    identifiers ::= COMMA IDENTIFIER identifiers
           | $empty

    extendedAttributeNoArgs ::= IDENTIFIER

    extendedAttributeArgList ::= IDENTIFIER LPAREN argumentList RPAREN

    extendedAttributeIdent ::= IDENTIFIER EQ IDENTIFIER

    extendedAttributeIdentList ::= IDENTIFIER EQ LPAREN identifierList RPAREN

    extendedAttributeNamedArgList ::= IDENTIFIER EQ IDENTIFIER LPAREN argumentList RPAREN

    extendedAttributeString ::= IDENTIFIER EQ STRING_WEBIDL

    extendedAttributeStringList ::= IDENTIFIER EQ LPAREN stringList RPAREN

    stringList ::= STRING_WEBIDL strings

    strings ::= COMMA STRING_WEBIDL strings
           | $empty

%End
