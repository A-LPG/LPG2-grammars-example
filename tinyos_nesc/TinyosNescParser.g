-- AUTO-GENERATED from antlr/grammars-v4 tinyos_nesc by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=TinyosNescParser
%options package=lpg.grammars.tinyos_nesc
%options template=dtParserTemplateF.gi
%options import_terminals=TinyosNescLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    compilationUnit
%End

%Rules
    compilationUnit ::= list_1 componentDeclaration

    includeDeclarationModule ::= HASHTAG INCLUDE qualifiedName

    includeDeclarationConfiguration ::= HASHTAG INCLUDE qualifiedName

    qualifiedName ::= singleLine

    componentDeclaration ::= moduleDeclaration
           | configurationDeclaration

    moduleDeclaration ::= moduleSignature moduleImplementation

    moduleSignature ::= MODULE moduleName opt_4 opt_5 moduleSignatureBody

    moduleName ::= singleLine

    moduleSignatureBody ::= OBRACE list_6 CBRACE

    usesOrProvides ::= usesState
           | providesState

    usesState ::= USES INTERFACE list_7 SCOL
           | USES OBRACE list_9 CBRACE

    providesState ::= PROVIDES INTERFACE list_10 SCOL
           | PROVIDES OBRACE list_12 CBRACE

    usesInterfaceDescription ::= interfaceNameAs
           | interfaceName

    providesInterfaceDescription ::= interfaceNameAs
           | interfaceName

    interfaceNameAs ::= interfaceName AS interfaceName

    interfaceName ::= singleLine

    moduleImplementation ::= IMPLEMENTATION OBRACE moduleImplementationBody CBRACE

    moduleImplementationBody ::= block

    block ::= list_13

    stat ::= statement
           | event_stat
           | task_stat
           | static_stat
           | if_stat
           | enum_stat
           | while_stat
           | for_stat
           | switch_stat
           | other_stat
           | atomic_stat
           | define_stat
           | call_stat
           | packet_define
           | OTHER

    packet_define ::= TYPEDEF common_name singleLine OBRACE list_14 CBRACE statement

    call_stat ::= CALL common_name call_condition_block opt_15

    call_condition_block ::= OPAR opt_16 CPAR

    define_stat ::= HASHTAG DEFINE common_name singleLine OBRACE statement CBRACE statement

    statement ::= anystatement opt_17
           | expr SCOL

    event_stat ::= EVENT opt_18 common_name event_condition_block opt_19
           | EVENT opt_20 common_name event_condition_block opt_21 list_22 opt_25

    event_condition_block ::= OPAR opt_26 CPAR

    event_stat_block ::= OBRACE block CBRACE

    task_stat ::= TASK opt_27 common_name task_condition_block opt_28
           | TASK opt_29 common_name task_condition_block opt_30 list_31 opt_34

    task_condition_block ::= OPAR opt_35 CPAR opt_36

    task_stat_block ::= OBRACE block CBRACE

    static_stat ::= STATIC opt_37 common_name static_condition_block opt_38
           | STATIC opt_39 common_name static_condition_block opt_40 list_41 opt_44

    static_condition_block ::= OPAR opt_45 CPAR opt_46

    static_stat_block ::= OBRACE block CBRACE

    other_stat ::= opt_47 common_name other_condition_block opt_48
           | opt_49 common_name other_condition_block opt_50 list_51 opt_54

    other_condition_block ::= OPAR opt_55 CPAR

    other_stat_block ::= OBRACE block CBRACE

    enum_stat ::= ENUM OBRACE list_58 CBRACE SCOL

    common_name ::= singleLine
           | name_or_reserved

    if_stat ::= IF if_condition_block list_60 opt_62

    if_condition_block ::= OPAR grp_63 CPAR if_stat_block
           | OPAR CPAR if_stat_block
           | OPAR expr CPAR if_stat_block
           | OPAR symbol CPAR if_stat_block

    if_stat_block ::= OBRACE block CBRACE
           | stat

    while_stat ::= WHILE OPAR expr CPAR while_stat_block

    while_stat_block ::= OBRACE block CBRACE
           | stat

    for_stat ::= FOR OPAR list_69 CPAR for_stat_block

    for_stat_block ::= OBRACE block CBRACE
           | stat

    switch_stat ::= SWITCH switch_condition_block OBRACE list_70 CBRACE

    switch_condition_block ::= OPAR expr CPAR
           | OPAR symbol CPAR

    switch_stat_block ::= CASE grp_71 COLON list_72 BREAK SCOL
           | DEFAULT COLON list_73 BREAK SCOL

    atomic_stat ::= ATOMIC atomic_stat_block

    atomic_stat_block ::= OBRACE grp_74 CBRACE
           | grp_75

    expr ::= expr POW expr
           | MINUS expr
           | NOT expr
           | expr grp_76 expr
           | expr grp_77 expr
           | expr grp_78 expr
           | expr grp_79 expr
           | expr AND expr
           | expr OR expr
           | atom list_80
           | singleLine
           | singleDoubleArray

    atom ::= STRING
           | ID
           | grp_81
           | grp_82
           | HEX

    symbol ::= OTHER

    singleDoubleArray ::= OBRACE list_83 CBRACE

    arrayElement ::= atom opt_84
           | seq_85 opt_86

    chars ::= grp_87

    chars_no_comma ::= grp_88

    reservedwords ::= grp_89

    singleLine ::= grp_90 list_94
           | grp_95 list_97

    anystatement ::= grp_98 list_100

    name_or_reserved ::= grp_101 list_103

    name_with_char ::= atom list_107

    configurationDeclaration ::= configurationSignature configurationImplementation

    configurationSignature ::= CONFIGURATION configurationName configurationSignatureBody

    configurationSignatureBody ::= OBRACE opt_108 CBRACE

    configurationName ::= singleLine

    configurationImplementation ::= IMPLEMENTATION configurationImplementationBody

    configurationImplementationBody ::= OBRACE configurationImplementationDescription CBRACE

    configurationImplementationDescription ::= list_110

    platformDefinition ::= HASHTAG IF list_111 HASHTAG ENDIF

    platformDefinitionDescription ::= opt_112 singleLine componentsDefinition
           | HASHTAG ELIF opt_113 singleLine componentsDefinition
           | HASHTAG ELSE HASHTAG ERROR singleLine

    componentsDefinition ::= COMPONENTS componentsDefinitionDetails SCOL

    componentsDefinitionDetails ::= list_116

    componentsDefinitionName ::= componentsName

    componentsWiring ::= wiring SCOL

    wiring ::= wiringName

    wiringName ::= componentsName grp_117 componentsName

    componentsName ::= atom
           | name_with_char
           | NEW atom
           | NEW atom opt_118 opt_119 opt_120
           | NEW atom AS atom
           | opt_121 atom opt_122 opt_123 opt_124 AS atom

    list_1 ::= $empty | list_1 includeDeclarationModule

    opt_2 ::= componentDeclaration | $empty

    list_3 ::= $empty | list_3 includeDeclarationConfiguration

    opt_4 ::= OPAR | $empty

    opt_5 ::= CPAR | $empty

    list_6 ::= $empty | list_6 usesOrProvides

    list_7 ::= $empty | list_7 usesInterfaceDescription

    seq_8 ::= INTERFACE usesInterfaceDescription SCOL

    list_9 ::= $empty | list_9 seq_8

    list_10 ::= $empty | list_10 providesInterfaceDescription

    seq_11 ::= INTERFACE providesInterfaceDescription SCOL

    list_12 ::= $empty | list_12 seq_11

    list_13 ::= $empty | list_13 stat

    list_14 ::= $empty | list_14 statement

    opt_15 ::= SCOL | $empty

    opt_16 ::= expr | $empty

    opt_17 ::= SCOL | $empty

    opt_18 ::= VOID | $empty

    opt_19 ::= event_stat_block | $empty

    opt_20 ::= VOID | $empty

    opt_21 ::= event_stat_block | $empty

    list_22 ::= $empty | list_22 stat

    opt_23 ::= VOID | $empty

    seq_24 ::= EVENT opt_23 common_name event_stat_block

    opt_25 ::= seq_24 | $empty

    opt_26 ::= expr | $empty

    opt_27 ::= VOID | $empty

    opt_28 ::= task_stat_block | $empty

    opt_29 ::= VOID | $empty

    opt_30 ::= task_stat_block | $empty

    list_31 ::= $empty | list_31 stat

    opt_32 ::= VOID | $empty

    seq_33 ::= TASK opt_32 common_name task_stat_block

    opt_34 ::= seq_33 | $empty

    opt_35 ::= expr | $empty

    opt_36 ::= SCOL | $empty

    opt_37 ::= VOID | $empty

    opt_38 ::= static_stat_block | $empty

    opt_39 ::= VOID | $empty

    opt_40 ::= static_stat_block | $empty

    list_41 ::= $empty | list_41 stat

    opt_42 ::= VOID | $empty

    seq_43 ::= STATIC opt_42 common_name static_stat_block

    opt_44 ::= seq_43 | $empty

    opt_45 ::= expr | $empty

    opt_46 ::= SCOL | $empty

    opt_47 ::= VOID | $empty

    opt_48 ::= other_stat_block | $empty

    opt_49 ::= VOID | $empty

    opt_50 ::= other_stat_block | $empty

    list_51 ::= $empty | list_51 stat

    opt_52 ::= VOID | $empty

    seq_53 ::= opt_52 common_name other_stat_block

    opt_54 ::= seq_53 | $empty

    opt_55 ::= expr | $empty

    opt_56 ::= COMMA | $empty

    seq_57 ::= expr opt_56

    list_58 ::= $empty | list_58 seq_57

    seq_59 ::= ELSE IF if_condition_block

    list_60 ::= $empty | list_60 seq_59

    seq_61 ::= ELSE if_stat_block

    opt_62 ::= seq_61 | $empty

    list_64 ::= $empty | list_64 name_or_reserved

    list_65 ::= $empty | list_65 expr

    grp_63 ::= list_64 | list_65

    grp_67 ::= expr | anystatement

    opt_68 ::= SCOL | $empty

    grp_66 ::= grp_67 opt_68

    list_69 ::= grp_66 | list_69 grp_66

    list_70 ::= $empty | list_70 switch_stat_block

    grp_71 ::= expr | anystatement

    list_72 ::= $empty | list_72 stat

    list_73 ::= $empty | list_73 stat

    grp_74 ::= statement | if_stat | other_stat

    grp_75 ::= statement | if_stat | other_stat

    grp_76 ::= MULT | DIV | MOD

    grp_77 ::= PLUS | MINUS | ASSIGN

    grp_78 ::= LTEQ | GTEQ | LT | GT

    grp_79 ::= EQ | NEQ

    list_80 ::= $empty | list_80 atom

    grp_81 ::= INT | FLOAT

    grp_82 ::= TRUE | FALSE

    list_83 ::= $empty | list_83 arrayElement

    opt_84 ::= COMMA | $empty

    seq_85 ::= OBRACE atom COMMA atom CBRACE

    opt_86 ::= COMMA | $empty

    grp_87 ::= OPAR | CPAR | INC | DEC | FORWARDARROW | BACKARROW | COLONCOLON | AT | COMMA | MULT | GT | LT | DOT | ASSIGN | BITAND | OBRACK | CBRACK

    grp_88 ::= OPAR | CPAR | INC | DEC | FORWARDARROW | BACKARROW | COLONCOLON | AT | MULT | GT | LT | DOT | ASSIGN | BITAND | OBRACK | CBRACK

    grp_89 ::= VOID | RETURN | AS | POST | ATOMIC | ERROR | ABSTRACT | NEW | CALL | BREAK

    grp_90 ::= atom | symbol | chars

    opt_92 ::= DOT | $empty

    grp_93 ::= atom | symbol | chars

    grp_91 ::= opt_92 grp_93

    list_94 ::= $empty | list_94 grp_91

    grp_95 ::= atom | symbol | chars | reservedwords

    grp_96 ::= atom | symbol | chars | reservedwords

    list_97 ::= $empty | list_97 grp_96

    grp_98 ::= atom | symbol | chars

    grp_99 ::= atom | symbol | chars

    list_100 ::= $empty | list_100 grp_99

    grp_101 ::= atom | symbol | chars | reservedwords

    grp_102 ::= atom | symbol | chars | reservedwords

    list_103 ::= $empty | list_103 grp_102

    opt_105 ::= DOT | $empty

    grp_106 ::= chars | symbol | atom

    grp_104 ::= opt_105 grp_106

    list_107 ::= $empty | list_107 grp_104

    opt_108 ::= expr | $empty

    grp_109 ::= componentsDefinition | componentsWiring | platformDefinition

    list_110 ::= $empty | list_110 grp_109

    list_111 ::= $empty | list_111 platformDefinitionDescription

    opt_112 ::= DEFINED | $empty

    opt_113 ::= DEFINED | $empty

    opt_114 ::= COMMA | $empty

    seq_115 ::= componentsDefinitionName opt_114

    list_116 ::= $empty | list_116 seq_115

    grp_117 ::= FORWARDARROW | BACKARROW

    opt_118 ::= OPAR | $empty

    opt_119 ::= atom | $empty

    opt_120 ::= CPAR | $empty

    opt_121 ::= NEW | $empty

    opt_122 ::= OPAR | $empty

    opt_123 ::= atom | $empty

    opt_124 ::= CPAR | $empty

%End
