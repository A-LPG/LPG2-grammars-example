-- AUTO-GENERATED from antlr/grammars-v4 langium by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack,ebnf
%Options fp=LangiumParser
%options package=lpg.grammars.langium
%options template=btParserTemplateF.gi
%options import_terminals=LangiumLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End


%Define
    $ast_class /.Object./
    $ast_type /.Object./
%End

%Start
    file_
%End

%Rules
    file_ ::= start_

    start_ ::= opt_12 list_13 list_15

    interface ::= INTERFACE ID opt_19 LBRACE list_20 RBRACE opt_21

    typeAttribute ::= featureName opt_22 COLON typeDefinition opt_24 opt_25

    valueLiteral ::= stringLiteral
                    | numberLiteral
                    | booleanLiteral
                    | arrayLiteral

    stringLiteral ::= STRING

    numberLiteral ::= NUMBER

    booleanLiteral ::= TRUE
                      | FALSE

    arrayLiteral ::= LBRACKET opt_29 RBRACKET

    typeDefinition ::= unionType

    unionType ::= arrayType opt_33

    arrayType ::= referenceType opt_35

    referenceType ::= simpleType
                     | AT simpleType

    simpleType ::= LPAREN typeDefinition RPAREN
                  | grp_36

    primitiveType ::= STRING
                     | NUMBER
                     | BOOLEAN
                     | DATE
                     | BIGINT

    type ::= TYPE ID EQ typeDefinition opt_37

    abstractRule ::= parserRule_
                    | terminalRule

    grammarImport ::= IMPORT STRING opt_38

    parserRule_ ::= opt_40 ruleNameAndParams opt_44 opt_50 COLON alternatives SEMI

    inferredType ::= grp_51 ID

    ruleNameAndParams ::= ID opt_57

    parameter ::= ID

    alternatives ::= conditionalBranch opt_61

    conditionalBranch ::= unorderedGroup
                         | LT disjunction GT list_62

    unorderedGroup ::= group opt_65

    group ::= abstractToken opt_67

    abstractToken ::= abstractTokenWithCardinality
                     | action

    abstractTokenWithCardinality ::= grp_68 opt_70

    action ::= LBRACE grp_71 opt_74 RBRACE

    abstractTerminal ::= keyword
                        | ruleCall
                        | parenthesizedElement
                        | predicatedKeyword
                        | predicatedRuleCall
                        | predicatedGroup

    keyword ::= STRING

    ruleCall ::= ID opt_78

    namedArgument ::= opt_80 disjunction

    disjunction ::= conjunction list_82

    conjunction ::= negation list_84

    negation ::= atom
                | BANG negation

    atom ::= parameterReference
            | parenthesizedCondition
            | booleanLiteral

    parenthesizedCondition ::= LPAREN disjunction RPAREN

    parameterReference ::= ID

    predicatedKeyword ::= grp_85 STRING

    predicatedRuleCall ::= grp_86 ID opt_90

    assignment ::= opt_92 featureName grp_93 assignableTerminal

    assignableTerminal ::= keyword
                          | ruleCall
                          | parenthesizedAssignableElement
                          | crossReference

    parenthesizedAssignableElement ::= LPAREN assignableAlternatives RPAREN

    assignableAlternatives ::= assignableTerminal opt_97

    crossReference ::= LBRACKET crossReferenceableTerminal opt_100 RBRACKET

    crossReferenceableTerminal ::= keyword
                                  | ruleCall

    parenthesizedElement ::= LPAREN alternatives RPAREN

    predicatedGroup ::= grp_101 LPAREN alternatives RPAREN

    returnType ::= grp_102

    terminalRule ::= opt_103 TERMINAL grp_104 COLON terminalAlternatives SEMI

    terminalAlternatives ::= terminalGroup list_108

    terminalGroup ::= terminalToken opt_110

    terminalToken ::= terminalTokenElement opt_112

    terminalTokenElement ::= characterRange
                            | terminalRuleCall
                            | parenthesizedTerminalElement
                            | negatedToken
                            | untilToken
                            | regexToken
                            | wildcard

    parenthesizedTerminalElement ::= LPAREN opt_115 terminalAlternatives RPAREN

    terminalRuleCall ::= ID

    negatedToken ::= BANG terminalTokenElement

    untilToken ::= ARROW terminalTokenElement

    regexToken ::= RegexLiteral

    wildcard ::= DOT

    characterRange ::= keyword opt_117

    featureName ::= CURRENT
                   | ENTRY
                   | EXTENDS
                   | FALSE
                   | FRAGMENT
                   | GRAMMAR
                   | HIDDEN
                   | IMPORT
                   | INTERFACE
                   | RETURNS
                   | TERMINAL
                   | TRUE
                   | TYPE
                   | INFER
                   | INFERS
                   | WITH
                   | primitiveType
                   | ID

    seq_1 ::= COMMA ID

    list_2 ::= (list_2 seq_1)?

    seq_3 ::= WITH ID list_2

    opt_4 ::= seq_3?

    seq_5 ::= COMMA ID

    list_6 ::= (list_6 seq_5)?

    seq_7 ::= ID list_6

    opt_8 ::= seq_7?

    seq_9 ::= HIDDEN LPAREN opt_8 RPAREN

    opt_10 ::= seq_9?

    seq_11 ::= GRAMMAR ID opt_4 opt_10

    opt_12 ::= seq_11?

    list_13 ::= (list_13 grammarImport)?

    grp_14 ::= abstractRule
              | interface
              | type

    list_15 ::= grp_14+

    seq_16 ::= COMMA ID

    list_17 ::= (list_17 seq_16)?

    seq_18 ::= EXTENDS ID list_17

    opt_19 ::= seq_18?

    list_20 ::= (list_20 typeAttribute)?

    opt_21 ::= SEMI?

    opt_22 ::= QUESTION?

    seq_23 ::= EQ valueLiteral

    opt_24 ::= seq_23?

    opt_25 ::= SEMI?

    seq_26 ::= COMMA valueLiteral

    list_27 ::= (list_27 seq_26)?

    seq_28 ::= valueLiteral list_27

    opt_29 ::= seq_28?

    grp_31 ::= PIPE arrayType

    list_32 ::= grp_31+

    grp_30 ::= list_32

    opt_33 ::= grp_30?

    seq_34 ::= LBRACKET RBRACKET

    opt_35 ::= seq_34?

    grp_36 ::= ID
              | primitiveType
              | STRING

    opt_37 ::= SEMI?

    opt_38 ::= SEMI?

    grp_39 ::= ENTRY
              | FRAGMENT

    opt_40 ::= grp_39?

    grp_43 ::= ID
              | primitiveType

    grp_42 ::= RETURNS grp_43

    grp_41 ::= STAR
              | grp_42
              | inferredType

    opt_44 ::= grp_41?

    seq_45 ::= COMMA ID

    list_46 ::= (list_46 seq_45)?

    seq_47 ::= ID list_46

    opt_48 ::= seq_47?

    seq_49 ::= HIDDEN LPAREN opt_48 RPAREN

    opt_50 ::= seq_49?

    grp_51 ::= INFER
              | INFERS

    seq_52 ::= COMMA parameter

    list_53 ::= (list_53 seq_52)?

    seq_54 ::= parameter list_53

    opt_55 ::= seq_54?

    seq_56 ::= LT opt_55 GT

    opt_57 ::= seq_56?

    grp_59 ::= PIPE conditionalBranch

    list_60 ::= grp_59+

    grp_58 ::= list_60

    opt_61 ::= grp_58?

    list_62 ::= abstractToken+

    seq_63 ::= AMP group

    list_64 ::= seq_63+

    opt_65 ::= list_64?

    list_66 ::= abstractToken+

    opt_67 ::= list_66?

    grp_68 ::= assignment
              | abstractTerminal

    grp_69 ::= QUESTION
              | STAR
              | PLUS

    opt_70 ::= grp_69?

    grp_71 ::= ID
              | inferredType true

    grp_73 ::= EQ
              | PLUSEQ

    grp_72 ::= DOT featureName grp_73 CURRENT

    opt_74 ::= grp_72?

    seq_75 ::= COMMA namedArgument

    list_76 ::= (list_76 seq_75)?

    seq_77 ::= LT namedArgument list_76 GT

    opt_78 ::= seq_77?

    seq_79 ::= ID EQ

    opt_80 ::= seq_79?

    grp_81 ::= PIPE conjunction

    list_82 ::= (list_82 grp_81)?

    seq_83 ::= AMP negation

    list_84 ::= (list_84 seq_83)?

    grp_85 ::= FATARROW
              | ARROW

    grp_86 ::= FATARROW
              | ARROW

    seq_87 ::= COMMA namedArgument

    list_88 ::= (list_88 seq_87)?

    seq_89 ::= LT namedArgument list_88 GT

    opt_90 ::= seq_89?

    grp_91 ::= FATARROW
              | ARROW

    opt_92 ::= grp_91?

    grp_93 ::= PLUSEQ
              | EQ
              | OP_69319

    grp_95 ::= PIPE assignableTerminal

    list_96 ::= grp_95+

    grp_94 ::= list_96

    opt_97 ::= grp_94?

    grp_99 ::= PIPE
              | COLON

    grp_98 ::= grp_99 crossReferenceableTerminal

    opt_100 ::= grp_98?

    grp_101 ::= FATARROW
               | ARROW

    grp_102 ::= primitiveType
               | ID

    opt_103 ::= HIDDEN?

    seq_105 ::= RETURNS returnType

    opt_106 ::= seq_105?

    grp_104 ::= FRAGMENT ID
               | ID opt_106

    grp_107 ::= PIPE terminalGroup

    list_108 ::= (list_108 grp_107)?

    list_109 ::= terminalToken+

    opt_110 ::= list_109?

    grp_111 ::= QUESTION
               | STAR
               | PLUS

    opt_112 ::= grp_111?

    grp_114 ::= OP_69319
               | OP_38535
               | OP_23851
               | OP_32676

    grp_113 ::= grp_114

    opt_115 ::= grp_113?

    seq_116 ::= DOTDOT keyword

    opt_117 ::= seq_116?
%End
