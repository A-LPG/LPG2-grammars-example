-- AUTO-GENERATED from antlr/grammars-v4 antlr/antlr2 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=AntlrAntlr2Parser
%options package=lpg.grammars.antlr.antlr2
%options template=dtParserTemplateF.gi
%options import_terminals=AntlrAntlr2Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    grammar_
%End

%Rules
    grammar_ ::= list_1 opt_2 list_3

    header_ ::= HEADER opt_4 actionBlock

    classDef ::= opt_5 opt_6 grp_7 rules

    fileOptionsSpec ::= OPTIONS LBRACE list_8 RBRACE

    parserOptionsSpec ::= OPTIONS LBRACE list_9 RBRACE

    treeParserOptionsSpec ::= OPTIONS LBRACE list_10 RBRACE

    lexerOptionsSpec ::= OPTIONS LBRACE list_11 RBRACE

    subruleOptionsSpec ::= OPTIONS LBRACE list_12 RBRACE

    option ::= id_ EQ optionValue SEMI

    optionValue ::= qualifiedID
           | STRING_LITERAL
           | CHAR_LITERAL
           | NUMBER

    lexerOption ::= id_ EQ lexerOptionValue SEMI

    lexerOptionValue ::= charSet
           | optionValue

    charSet ::= setBlockElement list_14

    setBlockElement ::= CHAR_LITERAL opt_16

    tokensSpec ::= TOKENS LBRACE list_17 RBRACE

    tokenEntry ::= grp_18 SEMI

    tokensSpecOptions ::= OPEN_ELEMENT_OPTION id_ EQ optionValue list_24 CLOSE_ELEMENT_OPTION

    superClass ::= LPAREN STRING_LITERAL RPAREN

    parserSpec ::= CLASS id_ grp_25 SEMI opt_27 opt_28 opt_29

    lexerSpec ::= grp_30 SEMI opt_32 opt_33 opt_34

    treeParserSpec ::= CLASS id_ EXTENDS TREEPARSER opt_35 SEMI opt_36 opt_37 opt_38

    rules ::= list_39

    rule_ ::= opt_40 opt_42 id_ opt_43 opt_44 opt_46 opt_47 opt_48 list_49 COLON altList SEMI opt_50

    ruleOptionsSpec ::= OPTIONS LBRACE list_51 RBRACE

    throwsSpec ::= THROWS id_ list_53

    block ::= alternative list_55

    alternative ::= opt_56 list_57

    exceptionGroup ::= list_58

    exceptionSpec ::= EXCEPTION opt_59 list_60

    exceptionSpecNoLabel ::= EXCEPTION list_61

    exceptionHandler ::= CATCH argActionBlock actionBlock

    element ::= elementNoOptionSpec opt_62

    elementOptionSpec ::= OPEN_ELEMENT_OPTION id_ EQ optionValue list_64 CLOSE_ELEMENT_OPTION

    elementNoOptionSpec ::= id_ EQ opt_66 grp_67
           | opt_72 grp_73
           | actionBlock opt_77
           | tree_

    rule_ref_or_keyword_as ::= IDENTIFIER
           | GRAMMAR
           | TREE

    tree_ ::= TREE_BEGIN rootNode list_78 RPAREN

    rootNode ::= opt_80 terminal_

    ebnf ::= LPAREN opt_83 block RPAREN grp_84

    ast_type_spec ::= opt_89

    range_ ::= CHAR_LITERAL RANGE CHAR_LITERAL opt_90
           | grp_91 RANGE ast_type_spec

    terminal_ ::= CHAR_LITERAL opt_92
           | IDENTIFIER ast_type_spec opt_93
           | STRING_LITERAL ast_type_spec
           | DOT ast_type_spec

    notTerminal ::= CHAR_LITERAL opt_94
           | IDENTIFIER ast_type_spec

    qualifiedID ::= id_ list_96

    id_ ::= IDENTIFIER
           | GRAMMAR
           | TREE

    action ::= AT opt_98 id_ actionBlock

    actionScopeName ::= id_
           | LEXER
           | PARSER

    ruleAction ::= actionBlock

    altList ::= alternative list_100

    actionBlock ::= BEGIN_ACTION list_101 END_ACTION

    argActionBlock ::= BEGIN_ARGUMENT list_102 END_ARGUMENT

    list_1 ::= $empty | list_1 header_

    opt_2 ::= fileOptionsSpec | $empty

    list_3 ::= $empty | list_3 classDef

    opt_4 ::= STRING_LITERAL | $empty

    opt_5 ::= actionBlock | $empty

    opt_6 ::= DOC_COMMENT | $empty

    grp_7 ::= lexerSpec | treeParserSpec | parserSpec

    list_8 ::= $empty | list_8 option

    list_9 ::= $empty | list_9 option

    list_10 ::= $empty | list_10 option

    list_11 ::= $empty | list_11 lexerOption

    list_12 ::= $empty | list_12 option

    seq_13 ::= OR setBlockElement

    list_14 ::= $empty | list_14 seq_13

    seq_15 ::= RANGE CHAR_LITERAL

    opt_16 ::= seq_15 | $empty

    list_17 ::= tokenEntry | list_17 tokenEntry

    seq_19 ::= EQ STRING_LITERAL

    opt_20 ::= seq_19 | $empty

    opt_21 ::= tokensSpecOptions | $empty

    opt_22 ::= tokensSpecOptions | $empty

    grp_18 ::= IDENTIFIER opt_20 opt_21 | STRING_LITERAL opt_22

    seq_23 ::= SEMI id_ EQ optionValue

    list_24 ::= $empty | list_24 seq_23

    opt_26 ::= superClass | $empty

    grp_25 ::= EXTENDS PARSER opt_26

    opt_27 ::= parserOptionsSpec | $empty

    opt_28 ::= tokensSpec | $empty

    opt_29 ::= actionBlock | $empty

    opt_31 ::= superClass | $empty

    grp_30 ::= LEXCLASS id_ | CLASS id_ EXTENDS LEXER opt_31

    opt_32 ::= lexerOptionsSpec | $empty

    opt_33 ::= tokensSpec | $empty

    opt_34 ::= actionBlock | $empty

    opt_35 ::= superClass | $empty

    opt_36 ::= treeParserOptionsSpec | $empty

    opt_37 ::= tokensSpec | $empty

    opt_38 ::= actionBlock | $empty

    list_39 ::= rule_ | list_39 rule_

    opt_40 ::= DOC_COMMENT | $empty

    grp_41 ::= PROTECTED | PUBLIC | PRIVATE

    opt_42 ::= grp_41 | $empty

    opt_43 ::= BANG | $empty

    opt_44 ::= argActionBlock | $empty

    seq_45 ::= RETURNS argActionBlock

    opt_46 ::= seq_45 | $empty

    opt_47 ::= throwsSpec | $empty

    opt_48 ::= ruleOptionsSpec | $empty

    list_49 ::= $empty | list_49 ruleAction

    opt_50 ::= exceptionGroup | $empty

    list_51 ::= $empty | list_51 option

    seq_52 ::= COMMA id_

    list_53 ::= $empty | list_53 seq_52

    seq_54 ::= OR alternative

    list_55 ::= $empty | list_55 seq_54

    opt_56 ::= BANG | $empty

    list_57 ::= $empty | list_57 element

    list_58 ::= exceptionSpec | list_58 exceptionSpec

    opt_59 ::= argActionBlock | $empty

    list_60 ::= $empty | list_60 exceptionHandler

    list_61 ::= $empty | list_61 exceptionHandler

    opt_62 ::= elementOptionSpec | $empty

    seq_63 ::= SEMI id_ EQ optionValue

    list_64 ::= $empty | list_64 seq_63

    seq_65 ::= id_ COLON

    opt_66 ::= seq_65 | $empty

    opt_68 ::= argActionBlock | $empty

    opt_69 ::= BANG | $empty

    opt_70 ::= argActionBlock | $empty

    grp_67 ::= rule_ref_or_keyword_as opt_68 opt_69 | IDENTIFIER opt_70

    seq_71 ::= id_ COLON

    opt_72 ::= seq_71 | $empty

    opt_74 ::= argActionBlock | $empty

    opt_75 ::= BANG | $empty

    grp_76 ::= notTerminal | ebnf

    grp_73 ::= rule_ref_or_keyword_as opt_74 opt_75 | range_ | terminal_ | NOT grp_76 | ebnf

    opt_77 ::= QM | $empty

    list_78 ::= element | list_78 element

    seq_79 ::= id_ COLON

    opt_80 ::= seq_79 | $empty

    opt_82 ::= actionBlock | $empty

    grp_81 ::= subruleOptionsSpec opt_82 COLON | actionBlock COLON

    opt_83 ::= grp_81 | $empty

    grp_85 ::= QM | STAR | PLUS

    opt_86 ::= grp_85 | $empty

    opt_87 ::= BANG | $empty

    grp_84 ::= opt_86 opt_87 | SEMPREDOP

    grp_88 ::= ROOT | BANG

    opt_89 ::= grp_88 | $empty

    opt_90 ::= BANG | $empty

    grp_91 ::= IDENTIFIER | STRING_LITERAL

    opt_92 ::= BANG | $empty

    opt_93 ::= argActionBlock | $empty

    opt_94 ::= BANG | $empty

    seq_95 ::= DOT id_

    list_96 ::= $empty | list_96 seq_95

    seq_97 ::= actionScopeName COLONCOLON

    opt_98 ::= seq_97 | $empty

    seq_99 ::= OR alternative

    list_100 ::= $empty | list_100 seq_99

    list_101 ::= $empty | list_101 ACTION_CONTENT

    list_102 ::= $empty | list_102 ARGUMENT_CONTENT

%End
