-- AUTO-GENERATED from antlr/grammars-v4 antlr/antlr3 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=AntlrAntlr3Parser
%options package=lpg.grammars.antlr.antlr3
%options template=dtParserTemplateF.gi
%options import_terminals=AntlrAntlr3Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    grammarDef
%End

%Rules
    grammarDef ::= opt_1 grp_2 GRAMMAR id_ SEMI opt_3 opt_4 list_5 list_6 list_7

    tokensSpec ::= TOKENS LBRACE list_8 RBRACE

    tokenSpec ::= IDENTIFIER grp_9 SEMI

    attrScope ::= SCOPE id_ actionBlock

    action ::= AT opt_12 id_ actionBlock

    actionScopeName ::= id_
           | LEXER
           | PARSER

    optionsSpec ::= OPTIONS LBRACE list_13 RBRACE

    option ::= id_ EQ optionValue SEMI

    optionValue ::= id_
           | STRING_LITERAL
           | CHAR_LITERAL
           | NUMBER
           | STAR

    rule_ ::= opt_14 opt_16 id_ opt_17 opt_18 opt_20 opt_21 opt_22 opt_23 list_24 COLON altList SEMI opt_25

    ruleAction ::= AT id_ actionBlock

    throwsSpec ::= THROWS id_ list_27

    ruleScopeSpec ::= SCOPE actionBlock
           | SCOPE id_ list_29 SEMI
           | SCOPE actionBlock SCOPE id_ list_31 SEMI

    block ::= LPAREN opt_34 alternative rewrite list_36 RPAREN

    altList ::= alternative rewrite list_38

    alternative ::= list_39

    exceptionGroup ::= list_40 opt_41
           | finallyClause

    exceptionHandler ::= CATCH argActionBlock actionBlock

    finallyClause ::= FINALLY actionBlock

    element ::= elementNoOptionSpec

    elementNoOptionSpec ::= id_ grp_42 atom grp_43
           | id_ grp_44 block grp_45
           | atom grp_46
           | ebnf
           | actionBlock
           | actionBlock QM grp_47
           | treeSpec grp_48

    actionBlock ::= BEGIN_ACTION list_49 END_ACTION

    argActionBlock ::= BEGIN_ARGUMENT list_50 END_ARGUMENT

    atom ::= range_ grp_51
           | terminal_
           | notSet grp_52
           | IDENTIFIER opt_53 opt_55

    notSet ::= NOT grp_56

    treeSpec ::= TREE_BEGIN element list_57 RPAREN

    ebnf ::= block grp_58

    range_ ::= CHAR_LITERAL RANGE CHAR_LITERAL

    terminal_ ::= grp_59 opt_62

    notTerminal ::= CHAR_LITERAL
           | IDENTIFIER
           | STRING_LITERAL

    ebnfSuffix ::= QM
           | STAR
           | PLUS

    rewrite ::= list_64 REWRITE rewrite_alternative

    rewrite_alternative ::= rewrite_template
           | rewrite_tree_alternative

    rewrite_tree_block ::= LPAREN rewrite_tree_alternative RPAREN

    rewrite_tree_alternative ::= list_65

    rewrite_tree_element ::= rewrite_tree_atom
           | rewrite_tree_atom ebnfSuffix
           | rewrite_tree grp_66
           | rewrite_tree_ebnf

    rewrite_tree_atom ::= CHAR_LITERAL
           | IDENTIFIER opt_67
           | IDENTIFIER
           | STRING_LITERAL
           | DOLLAR id_
           | actionBlock

    rewrite_tree_ebnf ::= rewrite_tree_block ebnfSuffix

    rewrite_tree ::= TREE_BEGIN rewrite_tree_atom list_68 RPAREN

    rewrite_template ::= id_ LPAREN rewrite_template_args RPAREN grp_69
           | rewrite_indirect_template_head
           | actionBlock
           | rewrite_template_ref

    rewrite_template_ref ::= id_ LPAREN rewrite_template_args RPAREN

    rewrite_indirect_template_head ::= LPAREN actionBlock RPAREN LPAREN rewrite_template_args RPAREN

    rewrite_template_args ::= rewrite_template_arg list_71

    rewrite_template_arg ::= id_ EQ actionBlock

    id_ ::= IDENTIFIER

    opt_1 ::= DOC_COMMENT | $empty

    grp_2 ::= $empty | LEXER | PARSER | TREE

    opt_3 ::= optionsSpec | $empty

    opt_4 ::= tokensSpec | $empty

    list_5 ::= $empty | list_5 attrScope

    list_6 ::= $empty | list_6 action

    list_7 ::= $empty | rule_ | list_7 rule_

    list_8 ::= tokenSpec | list_8 tokenSpec

    grp_10 ::= STRING_LITERAL | CHAR_LITERAL

    grp_9 ::= EQ grp_10

    seq_11 ::= actionScopeName COLONCOLON

    opt_12 ::= seq_11 | $empty

    list_13 ::= $empty | list_13 option

    opt_14 ::= DOC_COMMENT | $empty

    grp_15 ::= PROTECTED | PUBLIC | PRIVATE | FRAGMENT

    opt_16 ::= grp_15 | $empty

    opt_17 ::= BANG | $empty

    opt_18 ::= argActionBlock | $empty

    seq_19 ::= RETURNS argActionBlock

    opt_20 ::= seq_19 | $empty

    opt_21 ::= throwsSpec | $empty

    opt_22 ::= optionsSpec | $empty

    opt_23 ::= ruleScopeSpec | $empty

    list_24 ::= $empty | list_24 ruleAction

    opt_25 ::= exceptionGroup | $empty

    seq_26 ::= COMMA id_

    list_27 ::= $empty | list_27 seq_26

    seq_28 ::= COMMA id_

    list_29 ::= $empty | list_29 seq_28

    seq_30 ::= COMMA id_

    list_31 ::= $empty | list_31 seq_30

    opt_32 ::= optionsSpec | $empty

    seq_33 ::= opt_32 COLON

    opt_34 ::= seq_33 | $empty

    seq_35 ::= OR alternative rewrite

    list_36 ::= $empty | list_36 seq_35

    seq_37 ::= OR alternative rewrite

    list_38 ::= $empty | list_38 seq_37

    list_39 ::= element | list_39 element

    list_40 ::= exceptionHandler | list_40 exceptionHandler

    opt_41 ::= finallyClause | $empty

    grp_42 ::= EQ | PEQ

    grp_43 ::= ebnfSuffix

    grp_44 ::= EQ | PEQ

    grp_45 ::= ebnfSuffix

    grp_46 ::= ebnfSuffix

    grp_47 ::= SEMPREDOP

    grp_48 ::= ebnfSuffix

    list_49 ::= $empty | list_49 ACTION_CONTENT

    list_50 ::= $empty | list_50 ARGUMENT_CONTENT

    grp_51 ::= ROOT | BANG

    grp_52 ::= ROOT | BANG

    opt_53 ::= argActionBlock | $empty

    grp_54 ::= ROOT | BANG

    opt_55 ::= grp_54 | $empty

    grp_56 ::= notTerminal | block

    list_57 ::= element | list_57 element

    grp_58 ::= QM | STAR | PLUS | SEMPREDOP

    grp_60 ::= argActionBlock

    grp_59 ::= CHAR_LITERAL | IDENTIFIER grp_60 | STRING_LITERAL | DOT

    grp_61 ::= ROOT | BANG

    opt_62 ::= grp_61 | $empty

    seq_63 ::= REWRITE actionBlock QM rewrite_alternative

    list_64 ::= $empty | list_64 seq_63

    list_65 ::= rewrite_tree_element | list_65 rewrite_tree_element

    grp_66 ::= ebnfSuffix

    opt_67 ::= argActionBlock | $empty

    list_68 ::= $empty | list_68 rewrite_tree_element

    grp_69 ::= DOUBLE_QUOTE_STRING_LITERAL | DOUBLE_ANGLE_STRING_LITERAL

    seq_70 ::= COMMA rewrite_template_arg

    list_71 ::= $empty | list_71 seq_70

%End
