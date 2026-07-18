-- AUTO-GENERATED from antlr/grammars-v4 less by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=LessParser
%options package=lpg.grammars.less
%options template=dtParserTemplateF.gi
%options import_terminals=LessLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    stylesheet
%End

%Rules
    stylesheet ::= list_1

    statement ::= importDeclaration
           | ruleset
           | variableDeclaration SEMI
           | mixinDefinition

    variableName ::= AT variableName
           | AT IDENTIFIER
           | AT COLOR

    commandStatement ::= list_2 opt_3

    mathCharacter ::= TIMES
           | PLUS
           | DIV
           | MINUS
           | PERC

    mathStatement ::= mathCharacter commandStatement

    expression ::= measurement
           | identifier IMPORTANT
           | identifier
           | identifier LPAREN opt_4 RPAREN
           | COLOR
           | StringLiteral
           | url
           | variableName IMPORTANT
           | variableName

    function_ ::= FUNCTION_NAME LPAREN opt_5 RPAREN

    conditions ::= condition list_8

    condition ::= LPAREN conditionStatement RPAREN
           | NOT LPAREN conditionStatement RPAREN

    conditionStatement ::= commandStatement grp_9 commandStatement
           | commandStatement

    variableDeclaration ::= variableName COLON values

    importDeclaration ::= _IMPORT opt_14 referenceUrl opt_15 SEMI

    importOption ::= REFERENCE
           | INLINE
           | LESS
           | CSS
           | ONCE
           | MULTIPLE

    referenceUrl ::= StringLiteral
           | UrlStart Url UrlEnd

    mediaTypes ::= seq_18

    ruleset ::= selectors block

    block ::= BlockStart list_20 opt_21 BlockEnd

    mixinDefinition ::= selectors LPAREN opt_25 opt_26 RPAREN opt_27 block

    mixinGuard ::= WHEN conditions

    mixinDefinitionParam ::= variableName
           | variableDeclaration

    mixinReference ::= selector LPAREN opt_28 RPAREN opt_29 SEMI

    selectors ::= selector list_31

    selector ::= list_32 list_33 opt_34

    attrib ::= LBRACKET IDENTIFIER opt_37 RBRACKET

    negation ::= COLON NOT LPAREN opt_38 selectors opt_39 RPAREN

    pseudo ::= grp_40 IDENTIFIER

    element ::= selectorPrefix identifier
           | identifier
           | HASH identifier
           | pseudo
           | negation
           | PARENTREF
           | STAR

    selectorPrefix ::= grp_41

    attribRelate ::= EQ
           | OP_82812
           | PIPEEQ

    identifier ::= IDENTIFIER list_42
           | COLOR list_42
           | InterpolationStart identifierVariableName BlockEnd list_43

    identifierPart ::= InterpolationStartAfter identifierVariableName BlockEnd
           | IDENTIFIER

    identifierVariableName ::= grp_44

    property_ ::= identifier COLON values

    values ::= commandStatement list_46

    url ::= UrlStart Url UrlEnd

    measurement ::= Number opt_47

    list_1 ::= $empty | list_1 statement

    list_2 ::= expression | list_2 expression

    opt_3 ::= mathStatement | $empty

    opt_4 ::= values | $empty

    opt_5 ::= values | $empty

    grp_7 ::= AND | COMMA

    grp_6 ::= grp_7 condition

    list_8 ::= $empty | list_8 grp_6

    grp_9 ::= EQ | LT | GT | GTEQ | LTEQ

    seq_10 ::= COMMA importOption

    list_11 ::= $empty | list_11 seq_10

    seq_12 ::= importOption list_11

    seq_13 ::= LPAREN seq_12 RPAREN

    opt_14 ::= seq_13 | $empty

    opt_15 ::= mediaTypes | $empty

    seq_16 ::= COMMA IDENTIFIER

    list_17 ::= $empty | list_17 seq_16

    seq_18 ::= IDENTIFIER list_17

    grp_19 ::= property_ SEMI | statement | mixinReference

    list_20 ::= $empty | list_20 grp_19

    opt_21 ::= property_ | $empty

    seq_22 ::= SEMI mixinDefinitionParam

    list_23 ::= $empty | list_23 seq_22

    seq_24 ::= mixinDefinitionParam list_23

    opt_25 ::= seq_24 | $empty

    opt_26 ::= Ellipsis | $empty

    opt_27 ::= mixinGuard | $empty

    opt_28 ::= values | $empty

    opt_29 ::= IMPORTANT | $empty

    seq_30 ::= COMMA selector

    list_31 ::= $empty | list_31 seq_30

    list_32 ::= element | list_32 element

    list_33 ::= $empty | list_33 attrib

    opt_34 ::= pseudo | $empty

    grp_36 ::= StringLiteral | IDENTIFIER

    grp_35 ::= attribRelate grp_36

    opt_37 ::= grp_35 | $empty

    opt_38 ::= LBRACK | $empty

    opt_39 ::= RBRACK | $empty

    grp_40 ::= COLON | COLONCOLON

    grp_41 ::= GT | PLUS | TIL

    list_42 ::= $empty | list_42 identifierPart

    list_43 ::= $empty | list_43 identifierPart

    grp_44 ::= IDENTIFIER

    seq_45 ::= COMMA commandStatement

    list_46 ::= $empty | list_46 seq_45

    opt_47 ::= Unit | $empty

%End
