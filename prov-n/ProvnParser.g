-- AUTO-GENERATED from antlr/grammars-v4 prov-n by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=ProvNParser
%options package=lpg.grammars.prov_n
%options template=dtParserTemplateF.gi
%options import_terminals=ProvNLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    document
%End

%Rules
    document ::= DOCUMENT opt_1 list_2 opt_5 ENDDOCUMENT
           | DOCUMENT ENDDOCUMENT

    namespaceDeclarations ::= grp_6 list_7

    defaultNamespaceDeclaration ::= DEFAULT IRIREF

    namespaceDeclaration ::= PREFIX IDENTIFIER namespace_

    namespace_ ::= IRIREF

    bundle ::= BUNDLE identifier opt_8 list_9 ENDBUNDLE

    identifier ::= IDENTIFIER
           | QUALIFIED_NAME

    expression ::= grp_10

    entityExpression ::= ENTITY LPAREN identifier optionalAttributeValuePairs RPAREN

    optionalAttributeValuePairs ::= opt_12

    attributeValuePairs ::= grp_13

    attributeValuePair ::= attribute EQ literal

    attribute ::= IDENTIFIER
           | QUALIFIED_NAME

    literal ::= typedLiteral
           | convenienceNotation

    typedLiteral ::= STRING OP_52448 datatype

    datatype ::= IDENTIFIER
           | QUALIFIED_NAME

    convenienceNotation ::= STRING opt_16
           | INT_LITERAL
           | QUALIFIED_NAME_LITERAL

    activityExpression ::= ACTIVITY LPAREN identifier opt_18 optionalAttributeValuePairs RPAREN

    timeOrMarker ::= grp_19

    time ::= DATETIME

    generationExpression ::= WASGENERATEDBY LPAREN optionalIdentifier eIdentifier opt_21 optionalAttributeValuePairs RPAREN

    optionalIdentifier ::= opt_23

    identifierOrMarker ::= grp_24

    eIdentifier ::= identifier

    eIdentifierOrMarker ::= grp_25

    aIdentifierOrMarker ::= grp_26

    aIdentifier ::= identifier

    agIdentifierOrMarker ::= grp_27

    agIdentifier ::= identifier

    cIdentifier ::= identifier

    gIdentifier ::= identifier

    gIdentifierOrMarker ::= grp_28

    uIdentifier ::= identifier

    uIdentifierOrMarker ::= grp_29

    usageExpression ::= USED LPAREN optionalIdentifier aIdentifier opt_31 optionalAttributeValuePairs RPAREN

    startExpression ::= WASSTARTEDBY LPAREN optionalIdentifier aIdentifier opt_33 optionalAttributeValuePairs RPAREN

    endExpression ::= WASENDEDBY LPAREN optionalIdentifier aIdentifier opt_35 optionalAttributeValuePairs RPAREN

    invalidationExpression ::= WASINVALIDATEDBY LPAREN optionalIdentifier eIdentifier opt_37 optionalAttributeValuePairs RPAREN

    communicationExpression ::= WASINFORMEDBY LPAREN optionalIdentifier aIdentifier COMMA aIdentifier optionalAttributeValuePairs RPAREN

    agentExpression ::= AGENT LPAREN identifier optionalAttributeValuePairs RPAREN

    associationExpression ::= WASASSOCIATEDWITH LPAREN optionalIdentifier aIdentifier opt_39 optionalAttributeValuePairs RPAREN

    attributionExpression ::= WASATTRIBUTEDTO LPAREN optionalIdentifier eIdentifier COMMA agIdentifier optionalAttributeValuePairs RPAREN

    delegationExpression ::= ACTEDONBEHALFOF LPAREN optionalIdentifier agIdentifier COMMA agIdentifier opt_41 optionalAttributeValuePairs RPAREN

    derivationExpression ::= WASDERIVEDFROM LPAREN optionalIdentifier eIdentifier COMMA eIdentifier opt_43 optionalAttributeValuePairs RPAREN

    influenceExpression ::= WASINFLUENCEDBY LPAREN optionalIdentifier eIdentifier COMMA eIdentifier optionalAttributeValuePairs RPAREN

    alternateExpression ::= ALTERNATEOF LPAREN eIdentifier COMMA eIdentifier RPAREN

    specializationExpression ::= SPECIALIZATIONOF LPAREN eIdentifier COMMA eIdentifier RPAREN

    membershipExpression ::= HADMEMBER LPAREN cIdentifier COMMA eIdentifier RPAREN

    extensibilityExpression ::= grp_44 LPAREN optionalIdentifier extensibilityArgument list_46 optionalAttributeValuePairs RPAREN

    extensibilityArgument ::= grp_47

    extensibilityTuple ::= LBRACE extensibilityArgument list_49 RBRACE
           | LPAREN extensibilityArgument list_51 RPAREN

    opt_1 ::= namespaceDeclarations | $empty

    list_2 ::= $empty | list_2 expression

    list_3 ::= $empty | list_3 bundle

    seq_4 ::= bundle list_3

    opt_5 ::= seq_4 | $empty

    grp_6 ::= defaultNamespaceDeclaration | namespaceDeclaration

    list_7 ::= $empty | list_7 namespaceDeclaration

    opt_8 ::= namespaceDeclarations | $empty

    list_9 ::= $empty | list_9 expression

    grp_10 ::= entityExpression | activityExpression | generationExpression | usageExpression | startExpression | endExpression | invalidationExpression | communicationExpression | agentExpression | associationExpression | attributionExpression | delegationExpression | derivationExpression | influenceExpression | alternateExpression | specializationExpression | membershipExpression | extensibilityExpression

    seq_11 ::= COMMA LBRACKET attributeValuePairs RBRACKET

    opt_12 ::= seq_11 | $empty

    seq_14 ::= COMMA attributeValuePair

    list_15 ::= $empty | list_15 seq_14

    grp_13 ::= attributeValuePair list_15

    opt_16 ::= LANGTAG | $empty

    seq_17 ::= COMMA timeOrMarker COMMA timeOrMarker

    opt_18 ::= seq_17 | $empty

    grp_19 ::= time | MINUS

    seq_20 ::= COMMA aIdentifierOrMarker COMMA timeOrMarker

    opt_21 ::= seq_20 | $empty

    seq_22 ::= identifierOrMarker SEMI

    opt_23 ::= seq_22 | $empty

    grp_24 ::= identifier | MINUS

    grp_25 ::= eIdentifier | MINUS

    grp_26 ::= aIdentifier | MINUS

    grp_27 ::= agIdentifier | MINUS

    grp_28 ::= gIdentifier | MINUS

    grp_29 ::= uIdentifier | MINUS

    seq_30 ::= COMMA eIdentifierOrMarker COMMA timeOrMarker

    opt_31 ::= seq_30 | $empty

    seq_32 ::= COMMA eIdentifierOrMarker COMMA aIdentifierOrMarker COMMA timeOrMarker

    opt_33 ::= seq_32 | $empty

    seq_34 ::= COMMA eIdentifierOrMarker COMMA aIdentifierOrMarker COMMA timeOrMarker

    opt_35 ::= seq_34 | $empty

    seq_36 ::= COMMA aIdentifierOrMarker COMMA timeOrMarker

    opt_37 ::= seq_36 | $empty

    seq_38 ::= COMMA agIdentifierOrMarker COMMA eIdentifierOrMarker

    opt_39 ::= seq_38 | $empty

    seq_40 ::= COMMA aIdentifierOrMarker

    opt_41 ::= seq_40 | $empty

    seq_42 ::= COMMA aIdentifierOrMarker COMMA gIdentifierOrMarker COMMA uIdentifierOrMarker

    opt_43 ::= seq_42 | $empty

    grp_44 ::= IDENTIFIER | QUALIFIED_NAME

    seq_45 ::= COMMA extensibilityArgument

    list_46 ::= $empty | list_46 seq_45

    grp_47 ::= identifierOrMarker | literal | time | extensibilityExpression | extensibilityTuple

    seq_48 ::= COMMA extensibilityArgument

    list_49 ::= $empty | list_49 seq_48

    seq_50 ::= COMMA extensibilityArgument

    list_51 ::= $empty | list_51 seq_50

%End
