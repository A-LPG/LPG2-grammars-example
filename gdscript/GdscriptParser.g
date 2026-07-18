-- AUTO-GENERATED from antlr/grammars-v4 gdscript by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=GdscriptParser
%options package=lpg.grammars.gdscript
%options template=dtParserTemplateF.gi
%options import_terminals=GdscriptLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= opt_2 opt_3 list_4
           | VAR IDENTIFIER EQ NUMBER NEWLINE
           | VAR IDENTIFIER EQ NUMBER

    inheritance ::= EXTENDS grp_5 list_7

    className ::= CLASS_NAME IDENTIFIER opt_9 NEWLINE

    topLevelDecl ::= classVarDecl
           | constDecl
           | signalDecl
           | enumDecl
           | methodDecl
           | constructorDecl
           | innerClass
           | TOOL

    classVarDecl ::= opt_10 opt_11 VAR IDENTIFIER grp_12 opt_17 NEWLINE

    setget ::= SETGET opt_18 opt_20

    export ::= EXPORT opt_26

    typeHint ::= BUILTINTYPE
           | IDENTIFIER

    constDecl ::= CONST IDENTIFIER opt_28 EQ expression NEWLINE

    signalDecl ::= SIGNAL IDENTIFIER opt_29 NEWLINE

    signalParList ::= LPAREN opt_33 RPAREN

    enumDecl ::= ENUM opt_34 LBRACE seq_42 RBRACE NEWLINE

    methodDecl ::= opt_43 opt_44 FUNC IDENTIFIER LPAREN opt_45 RPAREN opt_47 COLON stmtOrSuite

    parList ::= parameter list_49

    parameter ::= opt_50 IDENTIFIER opt_52 opt_54

    rpc ::= REMOTE
           | MASTER
           | PUPPET
           | REMOTESYNC
           | MASTERSYNC
           | PUPPETSYNC

    constructorDecl ::= FUNC IDENTIFIER LPAREN opt_55 RPAREN seq_57 COLON stmtOrSuite

    argList ::= expression list_59

    innerClass ::= CLASS IDENTIFIER opt_60 COLON NEWLINE indent_opt opt_62 list_63 dedent_opt

    stmtOrSuite ::= stmt
           | NEWLINE indent_opt suite dedent_opt

    suite ::= list_64

    stmt ::= varDeclStmt
           | ifStmt
           | forStmt
           | whileStmt
           | matchStmt
           | flowStmt
           | assignmentStmt
           | exprStmt
           | assertStmt
           | yieldStmt
           | preloadStmt
           | BREAKPOINT stmtEnd
           | PASS stmtEnd

    stmtEnd ::= NEWLINE
           | SEMI

    ifStmt ::= IF expression COLON stmtOrSuite list_66 opt_68

    whileStmt ::= WHILE expression COLON stmtOrSuite

    forStmt ::= FOR IDENTIFIER IN expression COLON stmtOrSuite

    matchStmt ::= MATCH expression NEWLINE indent_opt matchBlock dedent_opt

    matchBlock ::= list_70

    patternList ::= pattern list_72

    pattern ::= literal
           | BUILTINTYPE
           | CONSTANT
           | UNDERSCORE
           | bindingPattern
           | arrayPattern
           | dictPattern

    bindingPattern ::= VAR IDENTIFIER

    arrayPattern ::= LBRACKET opt_77 RBRACKET

    dictPattern ::= LBRACE opt_78 list_80 opt_81 RBRACE

    keyValuePattern ::= STRING opt_83

    flowStmt ::= CONTINUE stmtEnd
           | BREAK stmtEnd
           | RETURN opt_84 stmtEnd

    assignmentStmt ::= expression grp_85 expression stmtEnd

    varDeclStmt ::= VAR IDENTIFIER opt_87 stmtEnd

    assertStmt ::= ASSERT LPAREN expression opt_89 RPAREN stmtEnd

    yieldStmt ::= YIELD LPAREN seq_90 RPAREN

    preloadStmt ::= PRELOAD LPAREN CONSTANT RPAREN

    exprStmt ::= expression stmtEnd

    expression ::= TRUE
           | FALSE
           | NULL_LITERAL
           | SELF
           | literal
           | LBRACKET opt_95 RBRACKET
           | LBRACE opt_100 RBRACE
           | LPAREN expression RPAREN
           | expression LBRACKET expression RBRACKET
           | expression DOT IDENTIFIER
           | expression LPAREN opt_101 RPAREN
           | DOT IDENTIFIER LPAREN opt_102 RPAREN
           | DOLLAR grp_103
           | expression IS grp_106
           | TILDE expression
           | grp_107 expression
           | expression grp_108 expression
           | expression PLUS expression
           | expression MINUS expression
           | expression grp_109 expression
           | expression AMP expression
           | expression CARET expression
           | expression PIPE expression
           | expression grp_110 expression
           | expression IN expression
           | grp_111 expression
           | expression grp_112 expression
           | expression grp_113 expression
           | expression IF expression ELSE expression
           | expression AS typeHint

    literal ::= STRING
           | NUMBER
           | IDENTIFIER
           | BUILTINTYPE
           | CONSTANT

    keyValue ::= expression COLON expression
           | IDENTIFIER EQ expression

    seq_1 ::= inheritance NEWLINE

    opt_2 ::= seq_1 | $empty

    opt_3 ::= className | $empty

    list_4 ::= $empty | list_4 topLevelDecl

    grp_5 ::= IDENTIFIER | STRING

    seq_6 ::= DOT IDENTIFIER

    list_7 ::= $empty | list_7 seq_6

    seq_8 ::= COMMA STRING

    opt_9 ::= seq_8 | $empty

    opt_10 ::= ONREADY | $empty

    opt_11 ::= export | $empty

    seq_13 ::= COLON typeHint

    opt_14 ::= seq_13 | $empty

    seq_15 ::= EQ expression

    opt_16 ::= seq_15 | $empty

    grp_12 ::= opt_14 opt_16 | COLONEQ expression

    opt_17 ::= setget | $empty

    opt_18 ::= IDENTIFIER | $empty

    seq_19 ::= COMMA IDENTIFIER

    opt_20 ::= seq_19 | $empty

    seq_23 ::= COMMA literal

    list_24 ::= $empty | list_24 seq_23

    grp_22 ::= BUILTINTYPE | IDENTIFIER list_24

    opt_25 ::= grp_22 | $empty

    grp_21 ::= LPAREN opt_25 RPAREN

    opt_26 ::= grp_21 | $empty

    seq_27 ::= COLON typeHint

    opt_28 ::= seq_27 | $empty

    opt_29 ::= signalParList | $empty

    seq_30 ::= COMMA IDENTIFIER

    list_31 ::= $empty | list_31 seq_30

    seq_32 ::= IDENTIFIER list_31

    opt_33 ::= seq_32 | $empty

    opt_34 ::= IDENTIFIER | $empty

    seq_35 ::= EQ expression

    opt_36 ::= seq_35 | $empty

    seq_37 ::= EQ expression

    opt_38 ::= seq_37 | $empty

    seq_39 ::= COMMA IDENTIFIER opt_38

    list_40 ::= $empty | list_40 seq_39

    opt_41 ::= COMMA | $empty

    seq_42 ::= IDENTIFIER opt_36 list_40 opt_41

    opt_43 ::= rpc | $empty

    opt_44 ::= STATIC | $empty

    opt_45 ::= parList | $empty

    seq_46 ::= ARROW typeHint

    opt_47 ::= seq_46 | $empty

    seq_48 ::= COMMA parameter

    list_49 ::= $empty | list_49 seq_48

    opt_50 ::= VAR | $empty

    seq_51 ::= COLON typeHint

    opt_52 ::= seq_51 | $empty

    seq_53 ::= EQ expression

    opt_54 ::= seq_53 | $empty

    opt_55 ::= parList | $empty

    opt_56 ::= argList | $empty

    seq_57 ::= DOT LPAREN opt_56 RPAREN

    seq_58 ::= COMMA expression

    list_59 ::= $empty | list_59 seq_58

    opt_60 ::= inheritance | $empty

    seq_61 ::= inheritance NEWLINE

    opt_62 ::= seq_61 | $empty

    list_63 ::= topLevelDecl | list_63 topLevelDecl

    list_64 ::= stmt | list_64 stmt

    seq_65 ::= ELIF expression COLON stmtOrSuite

    list_66 ::= $empty | list_66 seq_65

    seq_67 ::= ELSE COLON stmtOrSuite

    opt_68 ::= seq_67 | $empty

    seq_69 ::= patternList COLON stmtOrSuite

    list_70 ::= seq_69 | list_70 seq_69

    seq_71 ::= COMMA pattern

    list_72 ::= $empty | list_72 seq_71

    seq_73 ::= COMMA pattern

    list_74 ::= $empty | list_74 seq_73

    opt_75 ::= DOTDOT | $empty

    seq_76 ::= pattern list_74 opt_75

    opt_77 ::= seq_76 | $empty

    opt_78 ::= keyValuePattern | $empty

    seq_79 ::= COMMA keyValuePattern

    list_80 ::= $empty | list_80 seq_79

    opt_81 ::= DOTDOT | $empty

    seq_82 ::= COLON pattern

    opt_83 ::= seq_82 | $empty

    opt_84 ::= expression | $empty

    grp_85 ::= EQ | PLUSEQ | MINUSEQ | STAREQ | SLASHEQ | PERCENTEQ | AMPEQ | PIPEEQ | CARETEQ

    seq_86 ::= EQ expression

    opt_87 ::= seq_86 | $empty

    seq_88 ::= COMMA STRING

    opt_89 ::= seq_88 | $empty

    seq_90 ::= expression COMMA expression

    seq_91 ::= COMMA expression

    list_92 ::= $empty | list_92 seq_91

    opt_93 ::= COMMA | $empty

    seq_94 ::= expression list_92 opt_93

    opt_95 ::= seq_94 | $empty

    seq_96 ::= COMMA keyValue

    list_97 ::= $empty | list_97 seq_96

    opt_98 ::= COMMA | $empty

    seq_99 ::= keyValue list_97 opt_98

    opt_100 ::= seq_99 | $empty

    opt_101 ::= argList | $empty

    opt_102 ::= argList | $empty

    seq_104 ::= SLASH IDENTIFIER

    list_105 ::= $empty | list_105 seq_104

    grp_103 ::= STRING | IDENTIFIER list_105

    grp_106 ::= IDENTIFIER | BUILTINTYPE

    grp_107 ::= MINUS | PLUS

    grp_108 ::= STAR | SLASH | PERCENT

    grp_109 ::= LSHIFT | RSHIFT

    grp_110 ::= LT | GT | LTEQ | GTEQ | EQEQ | NOTEQ

    grp_111 ::= BANG | NOT

    grp_112 ::= AND | ANDAND

    grp_113 ::= OR | OROR

    indent_opt ::= $empty

    dedent_opt ::= $empty

%End
