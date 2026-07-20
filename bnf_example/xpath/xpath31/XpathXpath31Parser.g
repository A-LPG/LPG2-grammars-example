-- AUTO-GENERATED from antlr/grammars-v4 xpath/xpath31 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=XpathXpath31Parser
%options package=lpg.grammars.xpath.xpath31
%options template=dtParserTemplateF.gi
%options import_terminals=XpathXpath31Lexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    xpath
%End

%Rules
    xpath ::= expr

    paramlist ::= param list_2

    param ::= DOLLAR eqname opt_3

    functionbody ::= enclosedexpr

    enclosedexpr ::= LBRACE opt_4 RBRACE

    expr ::= exprsingle list_6

    exprsingle ::= forexpr
           | letexpr
           | quantifiedexpr
           | ifexpr
           | orexpr

    forexpr ::= simpleforclause KW_RETURN exprsingle

    simpleforclause ::= KW_FOR simpleforbinding list_8

    simpleforbinding ::= DOLLAR varname KW_IN exprsingle

    letexpr ::= simpleletclause KW_RETURN exprsingle

    simpleletclause ::= KW_LET simpleletbinding list_10

    simpleletbinding ::= DOLLAR varname COLONEQ exprsingle

    quantifiedexpr ::= grp_11 DOLLAR varname KW_IN exprsingle list_13 KW_SATISFIES exprsingle

    ifexpr ::= KW_IF LPAREN expr RPAREN KW_THEN exprsingle KW_ELSE exprsingle

    orexpr ::= andexpr list_15

    andexpr ::= comparisonexpr list_17

    comparisonexpr ::= stringconcatexpr opt_20

    stringconcatexpr ::= rangeexpr list_22

    rangeexpr ::= additiveexpr opt_24

    additiveexpr ::= multiplicativeexpr list_27

    multiplicativeexpr ::= unionexpr list_30

    unionexpr ::= intersectexceptexpr list_33

    intersectexceptexpr ::= instanceofexpr list_36

    instanceofexpr ::= treatexpr opt_38

    treatexpr ::= castableexpr opt_40

    castableexpr ::= castexpr opt_42

    castexpr ::= arrowexpr opt_44

    arrowexpr ::= unaryexpr list_46

    unaryexpr ::= list_48 valueexpr

    valueexpr ::= simplemapexpr

    generalcomp ::= EQ
           | NE
           | LT
           | LE
           | GT
           | GE

    valuecomp ::= KW_EQ
           | KW_NE
           | KW_LT
           | KW_LE
           | KW_GT
           | KW_GE

    nodecomp ::= KW_IS
           | LSHIFT
           | RSHIFT

    simplemapexpr ::= pathexpr list_50

    pathexpr ::= SLASH opt_51
           | SLASHSLASH relativepathexpr
           | relativepathexpr

    relativepathexpr ::= stepexpr list_54

    stepexpr ::= postfixexpr
           | axisstep

    axisstep ::= grp_55 predicatelist

    forwardstep ::= forwardaxis nodetest
           | abbrevforwardstep

    forwardaxis ::= KW_CHILD COLONCOLON
           | KW_DESCENDANT COLONCOLON
           | KW_ATTRIBUTE COLONCOLON
           | KW_SELF COLONCOLON
           | KW_DESCENDANT_OR_SELF COLONCOLON
           | KW_FOLLOWING_SIBLING COLONCOLON
           | KW_FOLLOWING COLONCOLON
           | KW_NAMESPACE COLONCOLON

    abbrevforwardstep ::= opt_56 nodetest

    reversestep ::= reverseaxis nodetest
           | abbrevreversestep

    reverseaxis ::= KW_PARENT COLONCOLON
           | KW_ANCESTOR COLONCOLON
           | KW_PRECEDING_SIBLING COLONCOLON
           | KW_PRECEDING COLONCOLON
           | KW_ANCESTOR_OR_SELF COLONCOLON

    abbrevreversestep ::= DOTDOT

    nodetest ::= kindtest
           | nametest

    nametest ::= eqname
           | wildcard

    wildcard ::= STAR
           | IDENTIFIER CS
           | SC IDENTIFIER
           | BracedURILiteral STAR

    postfixexpr ::= primaryexpr list_58

    argumentlist ::= LPAREN opt_62 RPAREN

    predicatelist ::= list_63

    predicate ::= LBRACKET expr RBRACKET

    lookup ::= QUESTION keyspecifier

    keyspecifier ::= IDENTIFIER
           | NUMBER
           | parenthesizedexpr
           | STAR

    arrowfunctionspecifier ::= eqname
           | varref
           | parenthesizedexpr

    primaryexpr ::= literal
           | varref
           | parenthesizedexpr
           | contextitemexpr
           | functioncall
           | functionitemexpr
           | mapconstructor
           | arrayconstructor
           | unarylookup

    literal ::= numericliteral
           | STRING

    numericliteral ::= NUMBER

    varref ::= DOLLAR varname

    varname ::= eqname

    parenthesizedexpr ::= LPAREN opt_64 RPAREN

    contextitemexpr ::= DOT

    functioncall ::= eqname argumentlist

    argument ::= exprsingle
           | argumentplaceholder

    argumentplaceholder ::= QUESTION

    functionitemexpr ::= namedfunctionref
           | inlinefunctionexpr

    namedfunctionref ::= eqname HASH NUMBER

    inlinefunctionexpr ::= KW_FUNCTION LPAREN opt_65 RPAREN opt_67 functionbody

    mapconstructor ::= KW_MAP LBRACE opt_71 RBRACE

    mapconstructorentry ::= mapkeyexpr COLON mapvalueexpr

    mapkeyexpr ::= exprsingle

    mapvalueexpr ::= exprsingle

    arrayconstructor ::= squarearrayconstructor
           | curlyarrayconstructor

    squarearrayconstructor ::= LBRACKET opt_75 RBRACKET

    curlyarrayconstructor ::= KW_ARRAY enclosedexpr

    unarylookup ::= QUESTION keyspecifier

    singletype ::= simpletypename opt_76

    typedeclaration ::= KW_AS sequencetype

    sequencetype ::= KW_EMPTY_SEQUENCE LPAREN RPAREN
           | itemtype opt_77

    occurrenceindicator ::= QUESTION
           | STAR
           | PLUS

    itemtype ::= kindtest
           | KW_ITEM LPAREN RPAREN
           | functiontest
           | maptest
           | arraytest
           | atomicoruniontype
           | parenthesizeditemtype

    atomicoruniontype ::= eqname

    kindtest ::= documenttest
           | elementtest
           | attributetest
           | schemaelementtest
           | schemaattributetest
           | pitest
           | commenttest
           | texttest
           | namespacenodetest
           | anykindtest

    anykindtest ::= KW_NODE LPAREN RPAREN

    documenttest ::= KW_DOCUMENT_NODE LPAREN opt_79 RPAREN

    texttest ::= KW_TEXT LPAREN RPAREN

    commenttest ::= KW_COMMENT LPAREN RPAREN

    namespacenodetest ::= KW_NAMESPACE_NODE LPAREN RPAREN

    pitest ::= KW_PROCESSING_INSTRUCTION LPAREN opt_81 RPAREN

    attributetest ::= KW_ATTRIBUTE LPAREN opt_85 RPAREN

    attribnameorwildcard ::= attributename
           | STAR

    schemaattributetest ::= KW_SCHEMA_ATTRIBUTE LPAREN attributedeclaration RPAREN

    attributedeclaration ::= attributename

    elementtest ::= KW_ELEMENT LPAREN opt_90 RPAREN

    elementnameorwildcard ::= elementname
           | STAR

    schemaelementtest ::= KW_SCHEMA_ELEMENT LPAREN elementdeclaration RPAREN

    elementdeclaration ::= elementname

    attributename ::= eqname

    elementname ::= eqname

    simpletypename ::= typename_

    typename_ ::= eqname

    functiontest ::= anyfunctiontest
           | typedfunctiontest

    anyfunctiontest ::= KW_FUNCTION LPAREN STAR RPAREN

    typedfunctiontest ::= KW_FUNCTION LPAREN opt_94 RPAREN KW_AS sequencetype

    maptest ::= anymaptest
           | typedmaptest

    anymaptest ::= KW_MAP LPAREN STAR RPAREN

    typedmaptest ::= KW_MAP LPAREN atomicoruniontype COMMA sequencetype RPAREN

    arraytest ::= anyarraytest
           | typedarraytest

    anyarraytest ::= KW_ARRAY LPAREN STAR RPAREN

    typedarraytest ::= KW_ARRAY LPAREN sequencetype RPAREN

    parenthesizeditemtype ::= LPAREN itemtype RPAREN

    eqname ::= IDENTIFIER
           | URIQualifiedName
           | KW_ANCESTOR
           | KW_ANCESTOR_OR_SELF
           | KW_AND
           | KW_ARRAY
           | KW_AS
           | KW_ATTRIBUTE
           | KW_CAST
           | KW_CASTABLE
           | KW_CHILD
           | KW_COMMENT
           | KW_DESCENDANT
           | KW_DESCENDANT_OR_SELF
           | KW_DIV
           | KW_DOCUMENT_NODE
           | KW_ELEMENT
           | KW_ELSE
           | KW_EMPTY_SEQUENCE
           | KW_EQ
           | KW_EVERY
           | KW_EXCEPT
           | KW_FOLLOWING
           | KW_FOLLOWING_SIBLING
           | KW_FOR
           | KW_FUNCTION
           | KW_GE
           | KW_GT
           | KW_IDIV
           | KW_IF
           | KW_IN
           | KW_INSTANCE
           | KW_INTERSECT
           | KW_IS
           | KW_ITEM
           | KW_LE
           | KW_LET
           | KW_LT
           | KW_MAP
           | KW_MOD
           | KW_NAMESPACE
           | KW_NAMESPACE_NODE
           | KW_NE
           | KW_NODE
           | KW_OF
           | KW_OR
           | KW_PARENT
           | KW_PRECEDING
           | KW_PRECEDING_SIBLING
           | KW_PROCESSING_INSTRUCTION
           | KW_RETURN
           | KW_SATISFIES
           | KW_SCHEMA_ATTRIBUTE
           | KW_SCHEMA_ELEMENT
           | KW_SELF
           | KW_SOME
           | KW_TEXT
           | KW_THEN
           | KW_TREAT
           | KW_UNION

    auxilary ::= list_96

    seq_1 ::= COMMA param

    list_2 ::= $empty
           | list_2 seq_1

    opt_3 ::= typedeclaration
           | $empty

    opt_4 ::= expr
           | $empty

    seq_5 ::= COMMA exprsingle

    list_6 ::= $empty
           | list_6 seq_5

    seq_7 ::= COMMA simpleforbinding

    list_8 ::= $empty
           | list_8 seq_7

    seq_9 ::= COMMA simpleletbinding

    list_10 ::= $empty
           | list_10 seq_9

    grp_11 ::= KW_SOME
           | KW_EVERY

    seq_12 ::= COMMA DOLLAR varname KW_IN exprsingle

    list_13 ::= $empty
           | list_13 seq_12

    seq_14 ::= KW_OR andexpr

    list_15 ::= $empty
           | list_15 seq_14

    seq_16 ::= KW_AND comparisonexpr

    list_17 ::= $empty
           | list_17 seq_16

    grp_19 ::= valuecomp
           | generalcomp
           | nodecomp

    grp_18 ::= grp_19 stringconcatexpr

    opt_20 ::= grp_18
           | $empty

    seq_21 ::= OROR rangeexpr

    list_22 ::= $empty
           | list_22 seq_21

    seq_23 ::= KW_TO additiveexpr

    opt_24 ::= seq_23
           | $empty

    grp_26 ::= PLUS
           | MINUS

    grp_25 ::= grp_26 multiplicativeexpr

    list_27 ::= $empty
           | list_27 grp_25

    grp_29 ::= STAR
           | KW_DIV
           | KW_IDIV
           | KW_MOD

    grp_28 ::= grp_29 unionexpr

    list_30 ::= $empty
           | list_30 grp_28

    grp_32 ::= KW_UNION
           | PIPE

    grp_31 ::= grp_32 intersectexceptexpr

    list_33 ::= $empty
           | list_33 grp_31

    grp_35 ::= KW_INTERSECT
           | KW_EXCEPT

    grp_34 ::= grp_35 instanceofexpr

    list_36 ::= $empty
           | list_36 grp_34

    seq_37 ::= KW_INSTANCE KW_OF sequencetype

    opt_38 ::= seq_37
           | $empty

    seq_39 ::= KW_TREAT KW_AS sequencetype

    opt_40 ::= seq_39
           | $empty

    seq_41 ::= KW_CASTABLE KW_AS singletype

    opt_42 ::= seq_41
           | $empty

    seq_43 ::= KW_CAST KW_AS singletype

    opt_44 ::= seq_43
           | $empty

    seq_45 ::= FATARROW arrowfunctionspecifier argumentlist

    list_46 ::= $empty
           | list_46 seq_45

    grp_47 ::= MINUS
           | PLUS

    list_48 ::= $empty
           | list_48 grp_47

    seq_49 ::= BANG pathexpr

    list_50 ::= $empty
           | list_50 seq_49

    opt_51 ::= relativepathexpr
           | $empty

    grp_53 ::= SLASH
           | SLASHSLASH

    grp_52 ::= grp_53 stepexpr

    list_54 ::= $empty
           | list_54 grp_52

    grp_55 ::= reversestep
           | forwardstep

    opt_56 ::= AT
           | $empty

    grp_57 ::= predicate
           | argumentlist
           | lookup

    list_58 ::= $empty
           | list_58 grp_57

    seq_59 ::= COMMA argument

    list_60 ::= $empty
           | list_60 seq_59

    seq_61 ::= argument list_60

    opt_62 ::= seq_61
           | $empty

    list_63 ::= $empty
           | list_63 predicate

    opt_64 ::= expr
           | $empty

    opt_65 ::= paramlist
           | $empty

    seq_66 ::= KW_AS sequencetype

    opt_67 ::= seq_66
           | $empty

    seq_68 ::= COMMA mapconstructorentry

    list_69 ::= $empty
           | list_69 seq_68

    seq_70 ::= mapconstructorentry list_69

    opt_71 ::= seq_70
           | $empty

    seq_72 ::= COMMA exprsingle

    list_73 ::= $empty
           | list_73 seq_72

    seq_74 ::= exprsingle list_73

    opt_75 ::= seq_74
           | $empty

    opt_76 ::= QUESTION
           | $empty

    opt_77 ::= occurrenceindicator
           | $empty

    grp_78 ::= elementtest
           | schemaelementtest

    opt_79 ::= grp_78
           | $empty

    grp_80 ::= IDENTIFIER
           | STRING

    opt_81 ::= grp_80
           | $empty

    seq_82 ::= COMMA typename_

    opt_83 ::= seq_82
           | $empty

    seq_84 ::= attribnameorwildcard opt_83

    opt_85 ::= seq_84
           | $empty

    opt_86 ::= QUESTION
           | $empty

    seq_87 ::= COMMA typename_ opt_86

    opt_88 ::= seq_87
           | $empty

    seq_89 ::= elementnameorwildcard opt_88

    opt_90 ::= seq_89
           | $empty

    seq_91 ::= COMMA sequencetype

    list_92 ::= $empty
           | list_92 seq_91

    seq_93 ::= sequencetype list_92

    opt_94 ::= seq_93
           | $empty

    seq_95 ::= expr SEMI

    list_96 ::= seq_95
           | list_96 seq_95

%End
