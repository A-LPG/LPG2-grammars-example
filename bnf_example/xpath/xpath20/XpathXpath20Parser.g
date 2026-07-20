-- AUTO-GENERATED from antlr/grammars-v4 xpath/xpath20 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=XpathXpath20Parser
%options package=lpg.grammars.xpath.xpath20
%options template=dtParserTemplateF.gi
%options import_terminals=XpathXpath20Lexer.gi
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

    expr ::= exprsingle list_2

    exprsingle ::= forexpr
           | quantifiedexpr
           | ifexpr
           | orexpr

    forexpr ::= simpleforclause KW_RETURN exprsingle

    simpleforclause ::= KW_FOR DOLLAR varname KW_IN exprsingle list_4

    quantifiedexpr ::= grp_5 DOLLAR varname KW_IN exprsingle list_7 KW_SATISFIES exprsingle

    ifexpr ::= KW_IF OP expr CP KW_THEN exprsingle KW_ELSE exprsingle

    orexpr ::= andexpr list_9

    andexpr ::= comparisonexpr list_11

    comparisonexpr ::= rangeexpr opt_14

    rangeexpr ::= additiveexpr opt_16

    additiveexpr ::= multiplicativeexpr list_19

    multiplicativeexpr ::= unionexpr list_22

    unionexpr ::= intersectexceptexpr list_25

    intersectexceptexpr ::= instanceofexpr list_28

    instanceofexpr ::= treatexpr opt_30

    treatexpr ::= castableexpr opt_32

    castableexpr ::= castexpr opt_34

    castexpr ::= unaryexpr opt_36

    unaryexpr ::= list_38 valueexpr

    valueexpr ::= pathexpr

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
           | LL
           | GG

    pathexpr ::= SLASH opt_39
           | SS relativepathexpr
           | relativepathexpr

    relativepathexpr ::= stepexpr list_42

    stepexpr ::= filterexpr
           | axisstep

    axisstep ::= grp_43 predicatelist

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

    abbrevforwardstep ::= opt_44 nodetest

    reversestep ::= reverseaxis nodetest
           | abbrevreversestep

    reverseaxis ::= KW_PARENT COLONCOLON
           | KW_ANCESTOR COLONCOLON
           | KW_PRECEDING_SIBLING COLONCOLON
           | KW_PRECEDING COLONCOLON
           | KW_ANCESTOR_OR_SELF COLONCOLON

    abbrevreversestep ::= DD

    nodetest ::= kindtest
           | nametest

    nametest ::= qname
           | wildcard

    wildcard ::= STAR
           | NCName CS
           | SC NCName

    filterexpr ::= primaryexpr predicatelist

    predicatelist ::= list_45

    predicate ::= OB expr CB

    primaryexpr ::= literal
           | varref
           | parenthesizedexpr
           | contextitemexpr
           | functioncall

    literal ::= numericliteral
           | StringLiteral

    numericliteral ::= IntegerLiteral
           | DecimalLiteral
           | DoubleLiteral

    varref ::= DOLLAR varname

    varname ::= qname

    parenthesizedexpr ::= OP opt_46 CP

    contextitemexpr ::= D

    functioncall ::= qname OP opt_50 CP

    singletype ::= atomictype opt_51

    sequencetype ::= KW_EMPTY_SEQUENCE OP CP
           | itemtype opt_52

    occurrenceindicator ::= QM
           | STAR
           | PLUS

    itemtype ::= kindtest
           | KW_ITEM OP CP
           | atomictype

    atomictype ::= qname

    kindtest ::= documenttest
           | elementtest
           | attributetest
           | schemaelementtest
           | schemaattributetest
           | pitest
           | commenttest
           | texttest
           | anykindtest

    anykindtest ::= KW_NODE OP CP

    documenttest ::= KW_DOCUMENT_NODE OP opt_54 CP

    texttest ::= KW_TEXT OP CP

    commenttest ::= KW_COMMENT OP CP

    pitest ::= KW_PROCESSING_INSTRUCTION OP opt_56 CP

    attributetest ::= KW_ATTRIBUTE OP opt_60 CP

    attribnameorwildcard ::= attributename
           | STAR

    schemaattributetest ::= KW_SCHEMA_ATTRIBUTE OP attributedeclaration CP

    attributedeclaration ::= attributename

    elementtest ::= KW_ELEMENT OP opt_65 CP

    elementnameorwildcard ::= elementname
           | STAR

    schemaelementtest ::= KW_SCHEMA_ELEMENT OP elementdeclaration CP

    elementdeclaration ::= elementname

    attributename ::= qname

    elementname ::= qname

    typename_ ::= qname

    qname ::= QName
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

    auxilary ::= list_67

    seq_1 ::= COMMA exprsingle

    list_2 ::= $empty | list_2 seq_1

    seq_3 ::= COMMA DOLLAR varname KW_IN exprsingle

    list_4 ::= $empty | list_4 seq_3

    grp_5 ::= KW_SOME | KW_EVERY

    seq_6 ::= COMMA DOLLAR varname KW_IN exprsingle

    list_7 ::= $empty | list_7 seq_6

    seq_8 ::= KW_OR andexpr

    list_9 ::= $empty | list_9 seq_8

    seq_10 ::= KW_AND comparisonexpr

    list_11 ::= $empty | list_11 seq_10

    grp_13 ::= valuecomp | generalcomp | nodecomp

    grp_12 ::= grp_13 rangeexpr

    opt_14 ::= grp_12 | $empty

    seq_15 ::= KW_TO additiveexpr

    opt_16 ::= seq_15 | $empty

    grp_18 ::= PLUS | MINUS

    grp_17 ::= grp_18 multiplicativeexpr

    list_19 ::= $empty | list_19 grp_17

    grp_21 ::= STAR | KW_DIV | KW_IDIV | KW_MOD

    grp_20 ::= grp_21 unionexpr

    list_22 ::= $empty | list_22 grp_20

    grp_24 ::= KW_UNION | P

    grp_23 ::= grp_24 intersectexceptexpr

    list_25 ::= $empty | list_25 grp_23

    grp_27 ::= KW_INTERSECT | KW_EXCEPT

    grp_26 ::= grp_27 instanceofexpr

    list_28 ::= $empty | list_28 grp_26

    seq_29 ::= KW_INSTANCE KW_OF sequencetype

    opt_30 ::= seq_29 | $empty

    seq_31 ::= KW_TREAT KW_AS sequencetype

    opt_32 ::= seq_31 | $empty

    seq_33 ::= KW_CASTABLE KW_AS singletype

    opt_34 ::= seq_33 | $empty

    seq_35 ::= KW_CAST KW_AS singletype

    opt_36 ::= seq_35 | $empty

    grp_37 ::= MINUS | PLUS

    list_38 ::= $empty | list_38 grp_37

    opt_39 ::= relativepathexpr | $empty

    grp_41 ::= SLASH | SS

    grp_40 ::= grp_41 stepexpr

    list_42 ::= $empty | list_42 grp_40

    grp_43 ::= reversestep | forwardstep

    opt_44 ::= AT | $empty

    list_45 ::= $empty | list_45 predicate

    opt_46 ::= expr | $empty

    seq_47 ::= COMMA exprsingle

    list_48 ::= $empty | list_48 seq_47

    seq_49 ::= exprsingle list_48

    opt_50 ::= seq_49 | $empty

    opt_51 ::= QM | $empty

    opt_52 ::= occurrenceindicator | $empty

    grp_53 ::= elementtest | schemaelementtest

    opt_54 ::= grp_53 | $empty

    grp_55 ::= NCName | StringLiteral

    opt_56 ::= grp_55 | $empty

    seq_57 ::= COMMA typename_

    opt_58 ::= seq_57 | $empty

    seq_59 ::= attribnameorwildcard opt_58

    opt_60 ::= seq_59 | $empty

    opt_61 ::= QM | $empty

    seq_62 ::= COMMA typename_ opt_61

    opt_63 ::= seq_62 | $empty

    seq_64 ::= elementnameorwildcard opt_63

    opt_65 ::= seq_64 | $empty

    seq_66 ::= expr SEMI

    list_67 ::= seq_66 | list_67 seq_66

%End
