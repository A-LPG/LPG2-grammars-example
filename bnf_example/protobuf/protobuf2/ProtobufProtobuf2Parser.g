-- AUTO-GENERATED from antlr/grammars-v4 protobuf/protobuf2 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=ProtobufProtobuf2Parser
%options package=lpg.grammars.protobuf.protobuf2
%options template=dtParserTemplateF.gi
%options import_terminals=ProtobufProtobuf2Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    proto
%End

%Rules
    proto ::= opt_1 list_3

    syntax ::= SYNTAX EQ grp_4 SEMI

    importStatement ::= IMPORT opt_6 strLit SEMI

    packageStatement ::= PACKAGE fullIdent SEMI

    optionStatement ::= OPTION optionName EQ constant SEMI

    optionName ::= fullIdent
           | grp_7 opt_9

    fieldLabel ::= REQUIRED
           | OPTIONAL
           | REPEATED

    field ::= fieldLabel type_ fieldName EQ fieldNumber opt_11 SEMI

    fieldOptions ::= fieldOption list_13

    fieldOption ::= optionName EQ constant

    fieldNumber ::= intLit

    group ::= fieldLabel GROUP groupName EQ fieldNumber messageBody

    oneof ::= ONEOF oneofName LC list_15 RC

    oneofField ::= type_ fieldName EQ fieldNumber opt_17 SEMI

    mapField ::= MAP LT keyType COMMA type_ GT mapName EQ fieldNumber opt_19 SEMI

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
           | NUMBER
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

    extensions ::= EXTENSIONS ranges SEMI

    reserved ::= RESERVED grp_20 SEMI

    ranges ::= range_ list_22

    range_ ::= intLit opt_25

    reservedFieldNames ::= strLit list_27

    topLevelDef ::= messageDef
           | enumDef
           | serviceDef
           | extendDef

    enumDef ::= ENUM enumName enumBody

    enumBody ::= LC list_28 RC

    enumElement ::= optionStatement
           | enumField
           | reserved
           | emptyStatement_

    enumField ::= ident EQ opt_29 intLit opt_30 SEMI

    enumValueOptions ::= LB enumValueOption list_32 RB

    enumValueOption ::= optionName EQ constant

    messageDef ::= MESSAGE messageName messageBody

    messageBody ::= LC list_33 RC

    messageElement ::= field
           | enumDef
           | messageDef
           | extendDef
           | optionStatement
           | oneof
           | mapField
           | extensions
           | group
           | reserved
           | emptyStatement_

    extendDef ::= EXTEND messageType LC list_34 RC

    extendElement ::= field
           | group
           | emptyStatement_

    serviceDef ::= SERVICE serviceName LC list_35 RC

    serviceElement ::= optionStatement
           | rpc
           | stream
           | emptyStatement_

    rpc ::= RPC rpcName LP opt_36 messageType RP RETURNS LP opt_37 messageType RP grp_38

    stream ::= STREAM streamName LP messageType COMMA messageType RP grp_41

    constant ::= fullIdent
           | opt_45 intLit
           | opt_47 floatLit
           | strLit
           | boolLit
           | blockLit

    blockLit ::= LC list_50 RC

    emptyStatement_ ::= SEMI

    ident ::= Ident
           | keywords

    fullIdent ::= ident list_52

    messageName ::= ident

    enumName ::= ident

    fieldName ::= ident

    groupName ::= ident

    oneofName ::= ident

    mapName ::= ident

    serviceName ::= ident

    rpcName ::= ident

    streamName ::= ident

    messageType ::= opt_53 list_55 messageName

    enumType ::= opt_56 list_58 enumName

    intLit ::= INT_LIT

    strLit ::= STR_LIT
           | PROTO2_LIT_SINGLE
           | PROTO2_LIT_DOUBLE

    boolLit ::= BOOL_LIT

    floatLit ::= FLOAT_LIT

    keywords ::= SYNTAX
           | IMPORT
           | WEAK
           | PUBLIC
           | PACKAGE
           | OPTION
           | REPEATED
           | OPTIONAL
           | REQUIRED
           | GROUP
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
           | NUMBER
           | BYTES
           | RESERVED
           | EXTENSIONS
           | TO
           | MAX
           | ENUM
           | MESSAGE
           | EXTEND
           | SERVICE
           | RPC
           | STREAM
           | RETURNS
           | BOOL_LIT

    opt_1 ::= syntax | $empty

    grp_2 ::= importStatement | packageStatement | optionStatement | topLevelDef | emptyStatement_

    list_3 ::= $empty | list_3 grp_2

    grp_4 ::= PROTO2_LIT_SINGLE | PROTO2_LIT_DOUBLE | STR_LIT | STRING | IDENTIFIER

    grp_5 ::= WEAK | PUBLIC

    opt_6 ::= grp_5 | $empty

    grp_7 ::= ident | LP fullIdent RP

    seq_8 ::= DOT fullIdent

    opt_9 ::= seq_8 | $empty

    seq_10 ::= LB fieldOptions RB

    opt_11 ::= seq_10 | $empty

    seq_12 ::= COMMA fieldOption

    list_13 ::= $empty | list_13 seq_12

    grp_14 ::= optionStatement | oneofField | emptyStatement_

    list_15 ::= $empty | list_15 grp_14

    seq_16 ::= LB fieldOptions RB

    opt_17 ::= seq_16 | $empty

    seq_18 ::= LB fieldOptions RB

    opt_19 ::= seq_18 | $empty

    grp_20 ::= ranges | reservedFieldNames

    seq_21 ::= COMMA range_

    list_22 ::= $empty | list_22 seq_21

    grp_24 ::= intLit | MAX

    grp_23 ::= TO grp_24

    opt_25 ::= grp_23 | $empty

    seq_26 ::= COMMA strLit

    list_27 ::= $empty | list_27 seq_26

    list_28 ::= $empty | list_28 enumElement

    opt_29 ::= MINUS | $empty

    opt_30 ::= enumValueOptions | $empty

    seq_31 ::= COMMA enumValueOption

    list_32 ::= $empty | list_32 seq_31

    list_33 ::= $empty | list_33 messageElement

    list_34 ::= $empty | list_34 extendElement

    list_35 ::= $empty | list_35 serviceElement

    opt_36 ::= STREAM | $empty

    opt_37 ::= STREAM | $empty

    grp_39 ::= optionStatement | emptyStatement_

    list_40 ::= $empty | list_40 grp_39

    grp_38 ::= LC list_40 RC | SEMI

    grp_42 ::= optionStatement | emptyStatement_

    list_43 ::= $empty | list_43 grp_42

    grp_41 ::= LC list_43 RC | SEMI

    grp_44 ::= MINUS | PLUS

    opt_45 ::= grp_44 | $empty

    grp_46 ::= MINUS | PLUS

    opt_47 ::= grp_46 | $empty

    opt_48 ::= COMMA | $empty

    seq_49 ::= ident COLON constant opt_48

    list_50 ::= $empty | list_50 seq_49

    seq_51 ::= DOT ident

    list_52 ::= $empty | list_52 seq_51

    opt_53 ::= DOT | $empty

    seq_54 ::= ident DOT

    list_55 ::= $empty | list_55 seq_54

    opt_56 ::= DOT | $empty

    seq_57 ::= ident DOT

    list_58 ::= $empty | list_58 seq_57

%End
