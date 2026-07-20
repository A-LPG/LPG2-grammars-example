-- AUTO-GENERATED from antlr/grammars-v4 scss by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=ScssParser
%options package=lpg.grammars.scss
%options template=btParserTemplateF.gi
%options import_terminals=ScssLexer.gi
%options automatic_ast=none
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
           | variableDeclaration
           | propertyDeclaration
           | interpolationDeclaration
           | mediaDeclaration
           | mixinDeclaration
           | contentDeclaration
           | functionDeclaration
           | ifDeclaration
           | forDeclaration
           | whileDeclaration
           | eachDeclaration
           | fontFaceDeclaration
           | keyframesDeclaration
           | includeDeclaration
           | extendDeclaration
           | warndingDeclaration
           | errorDeclaration
           | ruleset
           | atStatementDeclaration
           | percentageStatement

    importDeclaration ::= Import importPath opt_2
           | Require importPath opt_3
           | Use importPath opt_4 opt_5 opt_6
           | Forward importPath

    importPath ::= uri
           | String_

    asClause ::= As grp_7

    withClause ::= With Lparen parameters Rparen

    variableDeclaration ::= variableName Colon variableValue opt_8 opt_9

    variableValue ::= value
           | functionDeclaration
           | functionCall
           | list_10
           | list_11
           | variableName
           | identifier

    variableName ::= grp_12 identifier
           | opt_14 opt_15 Dollar grp_16
           | Variable

    namespace_ ::= list_18

    propertyDeclaration ::= identifier Colon propertyValue opt_19

    prio ::= Important
           | Default

    propertyValue ::= grp_20 opt_23

    mediaDeclaration ::= Media mediaQueryList block

    mediaQueryList ::= opt_27

    mediaQuery ::= opt_29 grp_30 list_32
           | mediaExpression list_34

    mediaExpression ::= Lparen identifier opt_36 Rparen

    mixinDeclaration ::= Mixin grp_37 block

    contentDeclaration ::= Content opt_39 opt_40

    fontFaceDeclaration ::= FontFace BlockStart list_41 BlockEnd

    keyframesDeclaration ::= Keyframes opt_42 keyframesBlock

    keyframesBlock ::= BlockStart list_43 BlockEnd
           | block

    percentageStatement ::= percentage block

    includeDeclaration ::= Include opt_44 grp_45 opt_47 opt_48

    interpolationDeclaration ::= interpolation Colon propertyValue opt_49

    extendDeclaration ::= Extend opt_51 list_53 opt_54

    warndingDeclaration ::= Warn String_ Semi

    errorDeclaration ::= Error String_ Semi

    atStatementDeclaration ::= At grp_55 block

    ruleset ::= selectorGroup block

    block ::= BlockStart list_56 opt_57 BlockEnd

    selectorGroup ::= selector list_59

    selector ::= opt_60 selectorSequence list_62

    combinator ::= Plus
           | Greater
           | Tilde
           | Space

    selectorSequence ::= grp_63 list_67
           | list_71

    id ::= Hash identifier

    typeSelector ::= opt_72 opt_74 grp_75

    typeNamespacePrefix ::= opt_77 Pipe

    universal ::= opt_78 Times

    className ::= Dot list_80

    interpolation ::= opt_81 Hash BlockStart opt_82 grp_83 BlockEnd opt_84

    parentRef ::= Amp

    attrib ::= Lbrack opt_85 identifier opt_89 Rbrack

    pseudo ::= Colon opt_90 grp_91

    functionalPseudo ::= IDENTIFIER Lparen list_92 Rparen

    pseudoParameter ::= grp_93

    negation ::= PseudoNot negationArg Rparen

    negationArg ::= typeSelector
           | universal
           | Hash
           | className
           | attrib
           | pseudo

    operator_ ::= Div
           | Times
           | Minus
           | Plus
           | Greater
           | Less
           | Greater Eq
           | Less Eq
           | Eq opt_96
           | NotEq
           | And
           | Or
           | Not

    value ::= unit
           | number
           | boolean
           | calc
           | rotate
           | rgba
           | var_
           | uri
           | repeat
           | Format
           | String_
           | functionCall
           | variableName
           | interpolation
           | hexcolor
           | identifier
           | expression
           | block
           | Lparen Rparen
           | measurment

    functionDeclaration ::= Function opt_99 Lparen parameters Rparen BlockStart opt_100 BlockEnd

    parameters ::= opt_101 list_103

    parameter ::= grp_104 opt_105 opt_106

    functionBody ::= list_107 opt_108

    functionReturn ::= Return expression list_110 opt_111

    functionStatement ::= expression Semi
           | statement

    functionCall ::= opt_112 identifier Lparen parameters Rparen

    expression ::= opt_113 expressionPart list_116

    expressionPart ::= unit
           | identifier
           | variableName
           | var_
           | boolean
           | calc
           | rotate
           | rgba
           | number
           | uri
           | Format
           | String_
           | interpolation
           | hexcolor
           | ifExpression
           | functionCall
           | opt_117 Lparen opt_118 Rparen
           | prio
           | measurment

    ifExpression ::= If Lparen grp_119 Comma value Comma value Rparen opt_120 opt_121

    listDeclaration ::= grp_122
           | Lparen listDeclaration Rparen

    listCommaSeparated ::= listElement list_124 opt_125

    listSpaceSeparated ::= list_126

    listBracketed ::= Lbrack grp_127 Rbrack

    listElement ::= opt_128 list_131 opt_132 opt_133

    mapDeclaration ::= Lparen mapEntries Rparen

    mapEntries ::= mapEntry list_135 opt_136

    mapEntry ::= mapKey Colon mapValue

    mapKey ::= value
           | listDeclaration
           | mapDeclaration

    mapValue ::= value
           | listDeclaration
           | mapDeclaration

    ifDeclaration ::= AtIf expression block list_137 opt_138

    elseIfStatement ::= AtElse If expression block

    elseStatement ::= AtElse block

    forDeclaration ::= AtFor variableName From Number grp_139 through block

    through ::= Number
           | functionCall
           | expression

    whileDeclaration ::= AtWhile expression block

    eachDeclaration ::= AtEach variableName list_141 In eachValueList block

    eachValueList ::= listDeclaration
           | mapDeclaration

    var_ ::= Var Variable opt_143 Rparen

    calc ::= Calc expression Rparen

    rotate ::= Rotate degree Rparen

    rgba ::= Rgba value list_146 Rparen

    repeat ::= Repeat value Comma number Freq Rparen

    unit ::= grp_147

    length ::= opt_148 Number grp_149

    dimension ::= opt_150 Number grp_151

    percentage ::= opt_152 Number Percentage

    degree ::= opt_153 Number Angle

    measurment ::= AbsLength
           | FontRelative
           | ViewportRelative
           | Time
           | Freq
           | Resolution
           | Angle
           | Percentage

    uri ::= Uri

    arglist ::= Dot Dot Dot

    plusMinus ::= Plus
           | Minus

    hexcolor ::= Hash color

    color ::= list_155

    boolean ::= True
           | False

    number ::= opt_156 Number

    identifier ::= opt_158 IDENTIFIER
           | From
           | To

    list_1 ::= $empty | list_1 statement

    opt_2 ::= Semi | $empty

    opt_3 ::= Semi | $empty

    opt_4 ::= asClause | $empty

    opt_5 ::= withClause | $empty

    opt_6 ::= Semi | $empty

    grp_7 ::= Times | identifier

    opt_8 ::= prio | $empty

    opt_9 ::= Semi | $empty

    list_10 ::= mapDeclaration | list_10 mapDeclaration

    list_11 ::= listDeclaration | list_11 listDeclaration

    seq_13 ::= Minus Minus

    grp_12 ::= seq_13 Dollar | plusMinus Dollar | Dollar

    opt_14 ::= plusMinus | $empty

    opt_15 ::= namespace_ | $empty

    grp_16 ::= identifier | measurment

    seq_17 ::= identifier Dot

    list_18 ::= seq_17 | list_18 seq_17

    opt_19 ::= Semi | $empty

    opt_21 ::= value | $empty

    opt_22 ::= prio | $empty

    grp_20 ::= value | opt_21 opt_22 block | variableName | listSpaceSeparated | listCommaSeparated | expression | functionCall

    opt_23 ::= prio | $empty

    seq_24 ::= Comma mediaQuery

    list_25 ::= $empty | list_25 seq_24

    seq_26 ::= mediaQuery list_25

    opt_27 ::= seq_26 | $empty

    grp_28 ::= Only | Not

    opt_29 ::= grp_28 | $empty

    grp_30 ::= identifier | value

    seq_31 ::= And mediaExpression

    list_32 ::= $empty | list_32 seq_31

    seq_33 ::= And mediaExpression

    list_34 ::= $empty | list_34 seq_33

    seq_35 ::= Colon value

    opt_36 ::= seq_35 | $empty

    grp_37 ::= identifier | identifier Lparen parameters Rparen

    seq_38 ::= Lparen parameters Rparen

    opt_39 ::= seq_38 | $empty

    opt_40 ::= Semi | $empty

    list_41 ::= $empty | list_41 statement

    opt_42 ::= identifier | $empty

    list_43 ::= $empty | list_43 percentageStatement

    opt_44 ::= namespace_ | $empty

    grp_45 ::= identifier | functionCall

    grp_46 ::= Semi | Using Lparen parameters Rparen

    opt_47 ::= grp_46 | $empty

    opt_48 ::= block | $empty

    opt_49 ::= Semi | $empty

    grp_50 ::= Percentage | parentRef

    opt_51 ::= grp_50 | $empty

    grp_52 ::= id | typeSelector | universal | className | attrib | pseudo | interpolation | parentRef

    list_53 ::= grp_52 | list_53 grp_52

    opt_54 ::= Semi | $empty

    grp_55 ::= identifier Lparen parameters Rparen | identifier

    list_56 ::= $empty | list_56 statement

    opt_57 ::= functionReturn | $empty

    seq_58 ::= Comma selector

    list_59 ::= $empty | list_59 seq_58

    opt_60 ::= combinator | $empty

    seq_61 ::= combinator selectorSequence

    list_62 ::= $empty | list_62 seq_61

    grp_63 ::= typeSelector | universal

    grp_65 ::= variableName | Percentage

    opt_66 ::= grp_65 | $empty

    grp_64 ::= id | className | attrib | pseudo | negation | interpolation opt_66 | parentRef

    list_67 ::= $empty | list_67 grp_64

    grp_69 ::= variableName | Percentage

    opt_70 ::= grp_69 | $empty

    grp_68 ::= typeSelector | id | className | attrib | pseudo | negation | interpolation opt_70 | parentRef

    list_71 ::= grp_68 | list_71 grp_68

    opt_72 ::= typeNamespacePrefix | $empty

    grp_73 ::= Percentage | parentRef

    opt_74 ::= grp_73 | $empty

    grp_75 ::= identifier | variableName

    grp_76 ::= identifier | Times

    opt_77 ::= grp_76 | $empty

    opt_78 ::= typeNamespacePrefix | $empty

    grp_79 ::= Minus | identifier | interpolation

    list_80 ::= grp_79 | list_80 grp_79

    opt_81 ::= namespace_ | $empty

    opt_82 ::= namespace_ | $empty

    grp_83 ::= ifExpression | value | parentRef

    opt_84 ::= measurment | $empty

    opt_85 ::= typeNamespacePrefix | $empty

    grp_87 ::= PrefixMatch | SuffixMatch | SubstringMatch | Eq | Includes | DashMatch

    grp_88 ::= identifier | String_

    grp_86 ::= grp_87 grp_88

    opt_89 ::= grp_86 | $empty

    opt_90 ::= Colon | $empty

    grp_91 ::= interpolation | identifier | functionalPseudo

    list_92 ::= pseudoParameter | list_92 pseudoParameter

    grp_94 ::= value | className | interpolation

    opt_95 ::= Comma | $empty

    grp_93 ::= grp_94 opt_95

    opt_96 ::= Eq | $empty

    opt_97 ::= namespace_ | $empty

    seq_98 ::= opt_97 identifier

    opt_99 ::= seq_98 | $empty

    opt_100 ::= functionBody | $empty

    opt_101 ::= parameter | $empty

    seq_102 ::= Comma parameter

    list_103 ::= $empty | list_103 seq_102

    grp_104 ::= value | variableDeclaration | listSpaceSeparated | mapDeclaration

    opt_105 ::= arglist | $empty

    opt_106 ::= prio | $empty

    list_107 ::= $empty | list_107 functionStatement

    opt_108 ::= functionReturn | $empty

    seq_109 ::= Comma expression

    list_110 ::= $empty | list_110 seq_109

    opt_111 ::= Semi | $empty

    opt_112 ::= namespace_ | $empty

    opt_113 ::= Not | $empty

    opt_114 ::= Not | $empty

    seq_115 ::= operator_ opt_114 expressionPart

    list_116 ::= $empty | list_116 seq_115

    opt_117 ::= plusMinus | $empty

    opt_118 ::= expression | $empty

    grp_119 ::= expression | parentRef

    opt_120 ::= measurment | $empty

    opt_121 ::= prio | $empty

    grp_122 ::= listBracketed | listCommaSeparated | listSpaceSeparated

    seq_123 ::= Comma listElement

    list_124 ::= $empty | list_124 seq_123

    opt_125 ::= Comma | $empty

    list_126 ::= listElement | list_126 listElement

    grp_127 ::= listSpaceSeparated | listCommaSeparated

    opt_128 ::= Lparen | $empty

    opt_129 ::= Comma | $empty

    seq_130 ::= value opt_129

    list_131 ::= seq_130 | list_131 seq_130

    opt_132 ::= Rparen | $empty

    opt_133 ::= Comma | $empty

    seq_134 ::= Comma mapEntry

    list_135 ::= $empty | list_135 seq_134

    opt_136 ::= Comma | $empty

    list_137 ::= $empty | list_137 elseIfStatement

    opt_138 ::= elseStatement | $empty

    grp_139 ::= To | Through

    seq_140 ::= Comma variableName

    list_141 ::= $empty | list_141 seq_140

    seq_142 ::= Comma value

    opt_143 ::= seq_142 | $empty

    opt_144 ::= Comma | $empty

    seq_145 ::= opt_144 value

    list_146 ::= $empty | list_146 seq_145

    grp_147 ::= length | dimension | percentage | degree

    opt_148 ::= plusMinus | $empty

    grp_149 ::= AbsLength | FontRelative | ViewportRelative

    opt_150 ::= plusMinus | $empty

    grp_151 ::= Time | Freq | Resolution | Angle

    opt_152 ::= plusMinus | $empty

    opt_153 ::= plusMinus | $empty

    grp_154 ::= Number | IDENTIFIER

    list_155 ::= grp_154 | list_155 grp_154

    opt_156 ::= plusMinus | $empty

    grp_157 ::= VendorPrefix | Minus

    opt_158 ::= grp_157 | $empty

%End
