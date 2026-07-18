-- AUTO-GENERATED from antlr/grammars-v4 css3 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=Css3Parser
%options package=lpg.grammars.css3
%options template=dtParserTemplateF.gi
%options import_terminals=Css3Lexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    stylesheet
%End

%Rules
    stylesheet ::= ws list_4 list_8 list_12 list_16
           | ruleset
           | $empty

    charset ::= IDENTIFIER ws STRING ws SEMI ws
           | IDENTIFIER ws STRING ws

    imports ::= IDENTIFIER ws grp_17 ws mediaQueryList SEMI ws
           | IDENTIFIER ws grp_18 ws SEMI ws
           | IDENTIFIER ws grp_19 ws mediaQueryList
           | IDENTIFIER ws grp_20 ws

    namespace_ ::= IDENTIFIER ws opt_22 grp_23 ws SEMI ws
           | IDENTIFIER ws opt_25 grp_26 ws

    namespacePrefix ::= IDENTIFIER

    media ::= IDENTIFIER ws mediaQueryList groupRuleBody ws

    mediaQueryList ::= opt_30 ws

    mediaQuery ::= opt_32 ws mediaType ws list_34
           | mediaExpression list_36

    mediaType ::= IDENTIFIER

    mediaExpression ::= LPAREN ws mediaFeature opt_38 RPAREN ws

    mediaFeature ::= IDENTIFIER ws

    page ::= IDENTIFIER ws opt_39 LBRACE ws opt_40 list_43 RBRACE ws

    pseudoPage ::= COLON IDENTIFIER ws

    selectorGroup ::= selector list_45

    selector ::= simpleSelectorSequence ws list_47

    combinator ::= Plus ws
           | Greater ws
           | Tilde ws
           | space_tok ws

    simpleSelectorSequence ::= grp_48 list_50
           | list_52

    typeSelector ::= opt_53 elementName

    typeNamespacePrefix ::= opt_55 PIPE

    elementName ::= IDENTIFIER

    universal ::= opt_56 STAR

    className ::= DOT IDENTIFIER

    attrib ::= LBRACKET ws opt_57 IDENTIFIER ws opt_61 RBRACKET

    pseudo ::= COLON opt_62 grp_63

    functionalPseudo ::= IDENTIFIER ws expression RPAREN

    expression ::= list_66

    negation ::= PseudoNot ws negationArg ws RPAREN

    negationArg ::= typeSelector
           | universal
           | IDENTIFIER
           | className
           | attrib
           | pseudo

    operator_ ::= SLASH ws
           | Comma ws
           | space_tok ws
           | EQ ws

    property_ ::= IDENTIFIER ws
           | Variable ws
           | STAR IDENTIFIER
           | UNDERSCORE IDENTIFIER

    ruleset ::= selectorGroup LBRACE ws opt_67 RBRACE ws
           | list_68 LBRACE ws opt_69 RBRACE ws

    declarationList ::= list_71 declaration ws list_74

    declaration ::= property_ COLON ws expr opt_75
           | property_ COLON ws value

    prio ::= Important ws

    value ::= list_77

    expr ::= term list_80

    term ::= number ws
           | percentage ws
           | dimension ws
           | STRING ws
           | UnicodeRange ws
           | IDENTIFIER ws
           | var_
           | hexcolor
           | calc
           | function_
           | unknownDimension ws
           | dxImageTransform

    function_ ::= IDENTIFIER ws expr RPAREN ws

    dxImageTransform ::= DxImageTransform ws expr RPAREN ws

    hexcolor ::= IDENTIFIER ws

    number ::= opt_82 NUMBER

    percentage ::= opt_84 NUMBER

    dimension ::= opt_86 IDENTIFIER

    unknownDimension ::= opt_88 UnknownDimension

    any_ ::= IDENTIFIER ws
           | number ws
           | percentage ws
           | dimension ws
           | unknownDimension ws
           | STRING ws
           | UnicodeRange ws
           | COLON ws
           | IDENTIFIER ws list_90 RPAREN ws
           | LPAREN ws list_92 RPAREN ws
           | LBRACKET ws list_94 RBRACKET ws

    atRule ::= AtKeyword ws list_95 grp_96

    unused ::= block
           | AtKeyword ws
           | SEMI ws
           | IDENTIFIER ws

    block ::= LBRACE ws list_98 RBRACE ws

    nestedStatement ::= ruleset
           | media
           | page
           | fontFaceRule
           | keyframesRule
           | supportsRule
           | viewport
           | counterStyle
           | fontFeatureValuesRule
           | atRule

    groupRuleBody ::= LBRACE ws list_99 RBRACE ws

    supportsRule ::= Supports ws supportsCondition ws groupRuleBody

    supportsCondition ::= supportsNegation
           | supportsConjunction
           | supportsDisjunction
           | supportsConditionInParens

    supportsConditionInParens ::= LPAREN ws supportsCondition ws RPAREN
           | supportsDeclarationCondition
           | generalEnclosed

    supportsNegation ::= Not ws space_tok ws supportsConditionInParens

    supportsConjunction ::= supportsConditionInParens list_101

    supportsDisjunction ::= supportsConditionInParens list_103

    supportsDeclarationCondition ::= LPAREN ws declaration RPAREN

    generalEnclosed ::= grp_104 EMPTY_LIT

    STRING ::= Url_ ws STRING ws RPAREN
           | Url

    var_ ::= Var ws Variable ws RPAREN ws

    calc ::= Calc ws calcSum RPAREN ws

    calcSum ::= calcProduct list_109

    calcProduct ::= calcValue list_111

    calcValue ::= number ws
           | dimension ws
           | unknownDimension ws
           | percentage ws
           | LPAREN ws calcSum RPAREN ws

    fontFaceRule ::= FontFace ws LBRACE ws opt_112 list_115 RBRACE ws

    fontFaceDeclaration ::= property_ COLON ws expr
           | property_ COLON ws value

    keyframesRule ::= Keyframes ws space_tok ws IDENTIFIER ws LBRACE ws list_116 RBRACE ws

    keyframeBlock ::= seq_118

    keyframeSelector ::= grp_119 ws list_122

    viewport ::= Viewport ws LBRACE ws opt_123 RBRACE ws

    counterStyle ::= CounterStyle ws IDENTIFIER ws LBRACE ws opt_124 RBRACE ws

    fontFeatureValuesRule ::= FontFeatureValues ws fontFamilyNameList ws LBRACE ws list_125 RBRACE ws

    fontFamilyNameList ::= fontFamilyName list_127

    fontFamilyName ::= STRING
           | IDENTIFIER list_129

    featureValueBlock ::= featureType ws LBRACE ws opt_130 list_133 RBRACE ws

    featureType ::= AtKeyword

    featureValueDefinition ::= IDENTIFIER ws COLON ws number list_135

    IDENTIFIER ::= Ident
           | MediaOnly
           | Not
           | And
           | Or
           | From
           | To

    ws ::= list_137

    grp_2 ::= comment_tok | space_tok | IDENTIFIER | IDENTIFIER

    list_3 ::= $empty | list_3 grp_2

    grp_1 ::= charset list_3

    list_4 ::= $empty | list_4 grp_1

    grp_6 ::= comment_tok | space_tok | IDENTIFIER | IDENTIFIER

    list_7 ::= $empty | list_7 grp_6

    grp_5 ::= imports list_7

    list_8 ::= $empty | list_8 grp_5

    grp_10 ::= comment_tok | space_tok | IDENTIFIER | IDENTIFIER

    list_11 ::= $empty | list_11 grp_10

    grp_9 ::= namespace_ list_11

    list_12 ::= $empty | list_12 grp_9

    grp_14 ::= comment_tok | space_tok | IDENTIFIER | IDENTIFIER

    list_15 ::= $empty | list_15 grp_14

    grp_13 ::= nestedStatement list_15

    list_16 ::= $empty | list_16 grp_13

    grp_17 ::= STRING | STRING

    grp_18 ::= STRING | STRING

    grp_19 ::= STRING | STRING

    grp_20 ::= STRING | STRING

    seq_21 ::= namespacePrefix ws

    opt_22 ::= seq_21 | $empty

    grp_23 ::= STRING | STRING

    seq_24 ::= namespacePrefix ws

    opt_25 ::= seq_24 | $empty

    grp_26 ::= STRING | STRING

    seq_27 ::= Comma ws mediaQuery

    list_28 ::= $empty | list_28 seq_27

    seq_29 ::= mediaQuery list_28

    opt_30 ::= seq_29 | $empty

    grp_31 ::= MediaOnly | Not

    opt_32 ::= grp_31 | $empty

    seq_33 ::= And ws mediaExpression

    list_34 ::= $empty | list_34 seq_33

    seq_35 ::= And ws mediaExpression

    list_36 ::= $empty | list_36 seq_35

    seq_37 ::= COLON ws expr

    opt_38 ::= seq_37 | $empty

    opt_39 ::= pseudoPage | $empty

    opt_40 ::= declaration | $empty

    opt_41 ::= declaration | $empty

    seq_42 ::= SEMI ws opt_41

    list_43 ::= $empty | list_43 seq_42

    seq_44 ::= Comma ws selector

    list_45 ::= $empty | list_45 seq_44

    seq_46 ::= combinator simpleSelectorSequence ws

    list_47 ::= $empty | list_47 seq_46

    grp_48 ::= typeSelector | universal

    grp_49 ::= IDENTIFIER | className | attrib | pseudo | negation

    list_50 ::= $empty | list_50 grp_49

    grp_51 ::= IDENTIFIER | className | attrib | pseudo | negation

    list_52 ::= grp_51 | list_52 grp_51

    opt_53 ::= typeNamespacePrefix | $empty

    grp_54 ::= IDENTIFIER | STAR

    opt_55 ::= grp_54 | $empty

    opt_56 ::= typeNamespacePrefix | $empty

    opt_57 ::= typeNamespacePrefix | $empty

    grp_59 ::= PrefixMatch | SuffixMatch | SubstringMatch | EQ | IDENTIFIER | IDENTIFIER

    grp_60 ::= IDENTIFIER | STRING

    grp_58 ::= grp_59 ws grp_60 ws

    opt_61 ::= grp_58 | $empty

    opt_62 ::= COLON | $empty

    grp_63 ::= IDENTIFIER | functionalPseudo

    grp_65 ::= Plus | Minus | IDENTIFIER | UnknownDimension | NUMBER | STRING | IDENTIFIER

    grp_64 ::= grp_65 ws

    list_66 ::= grp_64 | list_66 grp_64

    opt_67 ::= declarationList | $empty

    list_68 ::= $empty | list_68 any_

    opt_69 ::= declarationList | $empty

    seq_70 ::= SEMI ws

    list_71 ::= $empty | list_71 seq_70

    opt_72 ::= declaration | $empty

    seq_73 ::= SEMI ws opt_72

    list_74 ::= $empty | list_74 seq_73

    opt_75 ::= prio | $empty

    grp_76 ::= any_ | block | AtKeyword ws

    list_77 ::= grp_76 | list_77 grp_76

    opt_78 ::= operator_ | $empty

    seq_79 ::= opt_78 term

    list_80 ::= $empty | list_80 seq_79

    grp_81 ::= Plus | Minus

    opt_82 ::= grp_81 | $empty

    grp_83 ::= Plus | Minus

    opt_84 ::= grp_83 | $empty

    grp_85 ::= Plus | Minus

    opt_86 ::= grp_85 | $empty

    grp_87 ::= Plus | Minus

    opt_88 ::= grp_87 | $empty

    grp_89 ::= any_ | unused

    list_90 ::= $empty | list_90 grp_89

    grp_91 ::= any_ | unused

    list_92 ::= $empty | list_92 grp_91

    grp_93 ::= any_ | unused

    list_94 ::= $empty | list_94 grp_93

    list_95 ::= $empty | list_95 any_

    grp_96 ::= block | SEMI ws

    grp_97 ::= declarationList | nestedStatement | any_ | block | AtKeyword ws | SEMI ws

    list_98 ::= $empty | list_98 grp_97

    list_99 ::= $empty | list_99 nestedStatement

    seq_100 ::= ws space_tok ws And ws space_tok ws supportsConditionInParens

    list_101 ::= seq_100 | list_101 seq_100

    seq_102 ::= ws space_tok ws Or ws space_tok ws supportsConditionInParens

    list_103 ::= seq_102 | list_103 seq_102

    grp_105 ::= any_ | unused

    list_106 ::= $empty | list_106 grp_105

    grp_104 ::= IDENTIFIER | LPAREN list_106 EMPTY_LIT

    grp_108 ::= Plus | Minus

    grp_107 ::= space_tok ws grp_108 ws space_tok ws calcProduct

    list_109 ::= $empty | list_109 grp_107

    grp_110 ::= STAR ws calcValue | SLASH ws number ws

    list_111 ::= $empty | list_111 grp_110

    opt_112 ::= fontFaceDeclaration | $empty

    opt_113 ::= fontFaceDeclaration | $empty

    seq_114 ::= SEMI ws opt_113

    list_115 ::= $empty | list_115 seq_114

    list_116 ::= $empty | list_116 keyframeBlock

    opt_117 ::= declarationList | $empty

    seq_118 ::= keyframeSelector LBRACE ws opt_117 RBRACE ws

    grp_119 ::= From | To | NUMBER

    grp_121 ::= From | To | NUMBER

    grp_120 ::= Comma ws grp_121 ws

    list_122 ::= $empty | list_122 grp_120

    opt_123 ::= declarationList | $empty

    opt_124 ::= declarationList | $empty

    list_125 ::= $empty | list_125 featureValueBlock

    seq_126 ::= ws Comma ws fontFamilyName

    list_127 ::= $empty | list_127 seq_126

    seq_128 ::= ws IDENTIFIER

    list_129 ::= $empty | list_129 seq_128

    opt_130 ::= featureValueDefinition | $empty

    opt_131 ::= featureValueDefinition | $empty

    seq_132 ::= ws SEMI ws opt_131

    list_133 ::= $empty | list_133 seq_132

    seq_134 ::= ws number

    list_135 ::= $empty | list_135 seq_134

    grp_136 ::= comment_tok | space_tok

    list_137 ::= $empty | list_137 grp_136

    space_tok ::= $empty

    comment_tok ::= $empty

%End
