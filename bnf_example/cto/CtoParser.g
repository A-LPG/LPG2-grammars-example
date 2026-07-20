-- CTO Parser (LPG) — structural port of grammars-v4 cto/CtoParser.g4
-- Nonterminals: modelUnit / namespaceDeclaration / importDeclaration /
-- typeDeclaration / asset / concept / enum / participant / transaction / event
-- (language_subset; real_g4_port). Decorators/regex/range omitted from subset.

%Options la=3
%Options fp=CtoParser
%options package=lpg.grammars.cto
%options template=dtParserTemplateF.gi
%options import_terminals=CtoLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    modelUnit
%End

%Rules
    -- modelUnit: namespaceDeclaration importDeclaration* typeDeclaration* EOF
    modelUnit ::= namespaceDeclaration import_list type_list
                | namespaceDeclaration import_list
                | namespaceDeclaration type_list
                | namespaceDeclaration

    import_list ::= importDeclaration
                  | import_list importDeclaration

    type_list ::= typeDeclaration
                | type_list typeDeclaration

    namespaceDeclaration ::= NAMESPACE qualifiedName

    importDeclaration ::= IMPORT qualifiedName
                        | IMPORT qualifiedName DOT STAR

    typeDeclaration ::= assetDeclaration
                      | conceptDeclaration
                      | enumDeclaration
                      | participantDeclaration
                      | transactionDeclaration
                      | eventDeclaration

    assetDeclaration ::= opt_abstract ASSET IDENTIFIER extendsOrIdentified classBody
                       | ASSET IDENTIFIER extendsOrIdentified classBody

    conceptDeclaration ::= opt_abstract CONCEPT IDENTIFIER opt_extends classBody
                         | CONCEPT IDENTIFIER opt_extends classBody

    enumDeclaration ::= ENUM IDENTIFIER LBRACE enum_const_list RBRACE
                      | ENUM IDENTIFIER LBRACE RBRACE

    enum_const_list ::= enumConstant
                      | enum_const_list enumConstant

    enumConstant ::= VAR IDENTIFIER

    eventDeclaration ::= EVENT IDENTIFIER classBody

    participantDeclaration ::= opt_abstract PARTICIPANT IDENTIFIER extendsOrIdentified classBody
                             | PARTICIPANT IDENTIFIER extendsOrIdentified classBody

    transactionDeclaration ::= opt_abstract TRANSACTION IDENTIFIER classBody
                             | TRANSACTION IDENTIFIER classBody

    opt_abstract ::= ABSTRACT

    opt_extends ::= $empty
                  | EXTENDS IDENTIFIER

    extendsOrIdentified ::= EXTENDS IDENTIFIER
                          | identified

    identified ::= IDENTIFIED BY IDENTIFIER

    classBody ::= LBRACE class_member_list RBRACE
                | LBRACE RBRACE

    class_member_list ::= classBodyDeclaration
                        | class_member_list classBodyDeclaration

    classBodyDeclaration ::= SEMI
                           | fieldDeclaration

    fieldDeclaration ::= stringField fieldName opt_default_string opt_optional
                       | booleanField fieldName opt_default_bool opt_optional
                       | numericField fieldName opt_default_number opt_optional
                       | dateField fieldName opt_optional
                       | identifierField fieldName
                       | reference fieldName

    fieldName ::= IDENTIFIER
                | ASSET
                | PARTICIPANT

    stringField ::= VAR STRINGTYPE opt_square
    booleanField ::= VAR BOOLEAN opt_square
    numericField ::= VAR numericPrimitive opt_square
    dateField ::= VAR DATETIME opt_square
    identifierField ::= VAR IDENTIFIER opt_square
    reference ::= REF IDENTIFIER opt_square

    numericPrimitive ::= DOUBLE | INTEGER | LONG

    opt_square ::= $empty
                 | LBRACKET RBRACKET

    opt_optional ::= $empty
                   | OPTIONAL

    opt_default_string ::= $empty
                         | DEFAULT EQ STRING

    opt_default_bool ::= $empty
                       | DEFAULT EQ TRUE
                       | DEFAULT EQ FALSE

    opt_default_number ::= $empty
                         | DEFAULT EQ NUMBER

    -- name atoms may be keywords (e.g. namespace ...transaction)
    qualifiedName ::= nameAtom
                    | qualifiedName DOT nameAtom

    nameAtom ::= IDENTIFIER
               | ASSET
               | PARTICIPANT
               | TRANSACTION
               | EVENT
               | ENUM
               | CONCEPT
               | ABSTRACT
               | OPTIONAL
               | DEFAULT
               | BOOLEAN
               | DATETIME
               | DOUBLE
               | INTEGER
               | LONG
               | STRINGTYPE
               | VAR
               | TRUE
               | FALSE
%End
