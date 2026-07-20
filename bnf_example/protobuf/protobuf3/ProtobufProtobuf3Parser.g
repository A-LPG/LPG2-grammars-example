-- AUTO-GENERATED from antlr/grammars-v4 protobuf/protobuf3 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=ProtobufProtobuf3Parser
%options package=lpg.grammars.protobuf.protobuf3
%options template=dtParserTemplateF.gi
%options import_terminals=ProtobufProtobuf3Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    twoPassParse
%End

%Rules
    twoPassParse ::= proto

    proto ::= syntax list_2

    syntax ::= SYNTAX EQ grp_3 SEMI

    importStatement ::= IMPORT opt_5 strLit SEMI

    packageStatement ::= PACKAGE fullIdent SEMI

    optionStatement ::= OPTION optionName EQ constant SEMI

    optionName ::= fullIdent
           | LP fullIdent RP opt_7

    fieldLabel ::= OPTIONAL
           | REPEATED

    field ::= opt_8 type_ fieldName EQ fieldNumber opt_10 SEMI

    fieldOptions ::= fieldOption list_12

    fieldOption ::= optionName EQ constant

    fieldNumber ::= intLit

    oneof ::= ONEOF oneofName LC list_14 RC

    oneofField ::= type_ fieldName EQ fieldNumber opt_16 SEMI

    mapField ::= MAP LT keyType COMMA type_ GT mapName EQ fieldNumber opt_18 SEMI

    keyType ::= INT32
           | INT64
           | UINT32
           | UINT64
           | SINT32
           | SINT64
           | FIXED32
           | FIXED64
           | SFIXED32
           | SFIXED64
           | BOOL
           | StrLit

    type_ ::= DOUBLE
           | FLOAT
           | INT32
           | INT64
           | UINT32
           | UINT64
           | SINT32
           | SINT64
           | FIXED32
           | FIXED64
           | SFIXED32
           | SFIXED64
           | BOOL
           | StrLit
           | BYTES
           | messageType
           | enumType

    reserved ::= RESERVED grp_19 SEMI

    ranges ::= range_ list_21

    range_ ::= intLit opt_24

    reservedFieldNames ::= strLit list_26

    topLevelDef ::= messageDef
           | enumDef
           | extendDef
           | serviceDef

    enumDef ::= ENUM enumName doEnumNameDef enumBody

    enumBody ::= LC doEnterBlock list_27 RC doExitBlock

    enumElement ::= optionStatement
           | enumField
           | reserved
           | emptyStatement_

    enumField ::= ident EQ opt_28 intLit opt_29 SEMI

    enumValueOptions ::= LB enumValueOption list_31 RB

    enumValueOption ::= optionName EQ constant

    messageDef ::= MESSAGE messageName doMessageNameDef messageBody

    messageBody ::= LC doEnterBlock list_32 RC doExitBlock

    messageElement ::= field
           | enumDef
           | messageDef
           | extendDef
           | optionStatement
           | oneof
           | mapField
           | reserved
           | emptyStatement_

    extendDef ::= EXTEND messageType LC list_34 RC

    serviceDef ::= SERVICE serviceName doServiceNameDef LC doEnterBlock list_35 RC doExitBlock

    serviceElement ::= optionStatement
           | rpc
           | emptyStatement_

    rpc ::= RPC rpcName LP opt_36 messageType RP RETURNS LP opt_37 messageType RP grp_38

    constant ::= fullIdent
           | opt_42 intLit
           | opt_44 floatLit
           | strLit
           | boolLit
           | blockLit

    blockLit ::= LC list_46 RC

    emptyStatement_ ::= SEMI

    ident ::= Ident
           | keywords

    fullIdent ::= ident list_48

    messageName ::= ident

    enumName ::= ident

    fieldName ::= ident

    oneofName ::= ident

    mapName ::= ident

    serviceName ::= ident

    rpcName ::= ident

    messageType ::= opt_49 list_51 messageName

    enumType ::= opt_52 list_54 enumName

    intLit ::= INT_LIT

    strLit ::= STR_LIT
           | PROTO3_LIT_SINGLE
           | PROTO3_LIT_DOUBLE

    boolLit ::= BOOL_LIT

    floatLit ::= FLOAT_LIT

    keywords ::= SYNTAX
           | IMPORT
           | WEAK
           | PUBLIC
           | PACKAGE
           | OPTION
           | OPTIONAL
           | REPEATED
           | ONEOF
           | MAP
           | INT32
           | INT64
           | UINT32
           | UINT64
           | SINT32
           | SINT64
           | FIXED32
           | FIXED64
           | SFIXED32
           | SFIXED64
           | BOOL
           | StrLit
           | DOUBLE
           | FLOAT
           | BYTES
           | RESERVED
           | TO
           | MAX
           | ENUM
           | MESSAGE
           | SERVICE
           | EXTEND
           | RPC
           | STREAM
           | RETURNS
           | BOOL_LIT

    doEnterBlock ::= $empty

    doEnumNameDef ::= $empty

    doExitBlock ::= $empty

    doMessageNameDef ::= $empty

    doServiceNameDef ::= $empty

    grp_1 ::= importStatement | packageStatement | optionStatement | topLevelDef | emptyStatement_

    list_2 ::= $empty | list_2 grp_1

    grp_3 ::= PROTO3_LIT_SINGLE | PROTO3_LIT_DOUBLE | STR_LIT | STRING | IDENTIFIER

    grp_4 ::= WEAK | PUBLIC

    opt_5 ::= grp_4 | $empty

    seq_6 ::= DOT fullIdent

    opt_7 ::= seq_6 | $empty

    opt_8 ::= fieldLabel | $empty

    seq_9 ::= LB fieldOptions RB

    opt_10 ::= seq_9 | $empty

    seq_11 ::= COMMA fieldOption

    list_12 ::= $empty | list_12 seq_11

    grp_13 ::= optionStatement | oneofField | emptyStatement_

    list_14 ::= $empty | list_14 grp_13

    seq_15 ::= LB fieldOptions RB

    opt_16 ::= seq_15 | $empty

    seq_17 ::= LB fieldOptions RB

    opt_18 ::= seq_17 | $empty

    grp_19 ::= ranges | reservedFieldNames

    seq_20 ::= COMMA range_

    list_21 ::= $empty | list_21 seq_20

    grp_23 ::= intLit | MAX

    grp_22 ::= TO grp_23

    opt_24 ::= grp_22 | $empty

    seq_25 ::= COMMA strLit

    list_26 ::= $empty | list_26 seq_25

    list_27 ::= $empty | list_27 enumElement

    opt_28 ::= MINUS | $empty

    opt_29 ::= enumValueOptions | $empty

    seq_30 ::= COMMA enumValueOption

    list_31 ::= $empty | list_31 seq_30

    list_32 ::= $empty | list_32 messageElement

    grp_33 ::= field | emptyStatement_

    list_34 ::= $empty | list_34 grp_33

    list_35 ::= $empty | list_35 serviceElement

    opt_36 ::= STREAM | $empty

    opt_37 ::= STREAM | $empty

    grp_39 ::= optionStatement | emptyStatement_

    list_40 ::= $empty | list_40 grp_39

    grp_38 ::= LC list_40 RC | SEMI

    grp_41 ::= MINUS | PLUS

    opt_42 ::= grp_41 | $empty

    grp_43 ::= MINUS | PLUS

    opt_44 ::= grp_43 | $empty

    seq_45 ::= ident COLON constant

    list_46 ::= $empty | list_46 seq_45

    seq_47 ::= DOT ident

    list_48 ::= $empty | list_48 seq_47

    opt_49 ::= DOT | $empty

    seq_50 ::= ident DOT

    list_51 ::= $empty | list_51 seq_50

    opt_52 ::= DOT | $empty

    seq_53 ::= ident DOT

    list_54 ::= $empty | list_54 seq_53

%End
