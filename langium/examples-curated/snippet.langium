// ******************************************************************************
// Copyright 2021 TypeFox GmbH
// This program and the accompanying materials are made available under the
// terms of the MIT License, which is available in the project root.
// *****************************************************************************

grammar LangiumGrammar

entry Grammar:
    (
        isDeclared?='grammar' name=ID ('with' usedGrammars+=[Grammar:ID] (',' usedGrammars+=[Grammar:ID])*)?
        (definesHiddenTokens?='hidden' '(' (hiddenTokens+=[AbstractRule:ID] (',' hiddenTokens+=[AbstractRule:ID])*)? ')')?
    )?
    imports+=GrammarImport*
    (rules+=AbstractRule | interfaces+=Interface | types+=Type)+;

Interface:
    'interface' name=ID
    ('extends' superTypes+=[AbstractType:ID] (',' superTypes+=[AbstractType:ID])*)?
    '{' 
        attributes+=TypeAttribute* 
    '}'
';'?;

TypeAttribute:
    name=FeatureName (isOptional?='?')? ':' type=TypeDefinition ('=' defaultValue=ValueLiteral)? ';'?;

ValueLiteral:
    StringLiteral | NumberLiteral | BooleanLiteral | ArrayLiteral;

StringLiteral:
    value=STRING;
NumberLiteral:
    value=NUMBER;
BooleanLiteral:
    true?='true' | 'false';
ArrayLiteral:
    '[' (elements+=ValueLiteral (',' elements+=ValueLiteral)*)? ']';

TypeDefinition: UnionType;

UnionType infers TypeDefinition:
    ArrayType ({infer UnionType.types+=current} ('|' types+=ArrayType)+)?;

ArrayType infers TypeDefinition:
    ReferenceType ({infer ArrayType.elementType=current} '[' ']')? ;

ReferenceType infers TypeDefinition:
    SimpleType |
    {infer ReferenceType} '@' referenceType=SimpleType;

SimpleType infers TypeDefinition:
    '(' TypeDefinition ')' |
    {infer SimpleType} (typeRef=[AbstractType:ID] | primitiveType=PrimitiveType | stringType=STRING);

PrimitiveType returns string:
    'string' | 'number' | 'boolean' | 'Date' | 'bigint';

type AbstractType = Interface | Type | ParserRule | InferredType;

