-- AUTO-GENERATED from antlr/grammars-v4 codeql by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=CodeqlParser
%options package=lpg.grammars.codeql
%options template=dtParserTemplateF.gi
%options import_terminals=CodeqlLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    ql
%End

%Rules
    literalId ::= LOWERID
           | ATLOWERID
           | UPPERID
           | NONE
           | ANY
           | keywordAllowed

    keywordAllowed ::= UNIQUE
           | IMPLEMENTS
           | SIGNATURE
           | DEFAULT
           | ABSTRACT
           | CACHED
           | EXTERNAL
           | EXTENSIBLE
           | FINAL
           | TRANSIENT
           | LIBRARY
           | PRIVATE
           | DEPRECATED
           | OVERRIDE
           | ADDITIONAL
           | QUERY
           | PRAGMA
           | INLINE
           | INLINE_LATE
           | NOINLINE
           | NOMAGIC
           | NOOPT
           | ASSUME_SMALL_DELTA
           | LANGUAGE
           | MONOTONICAGGREGATES
           | BINDINGSET
           | ONLY_BIND_OUT
           | ONLY_BIND_INTO

    keywordPredCallAllowed ::= keywordAllowed
           | ANY
           | NONE

    varname ::= LOWERID
           | keywordAllowed

    ql ::= opt_1 moduleBody

    module_decl ::= list_2 MODULE modulename opt_3 opt_4 LBRACE moduleBody RBRACE

    parameters ::= LT signatureExpr parameterName list_6 GT

    implements_clause ::= IMPLEMENTS moduleSignatureExpr list_8

    moduleBody ::= list_10

    importDeclaration ::= annotations IMPORT importModuleExpr opt_12

    simpleId ::= LOWERID
           | UPPERID

    qualId ::= simpleId
           | qualId DOT simpleId

    importModuleExpr ::= qualId
           | importModuleExpr COLONCOLON modulename opt_13

    arguments ::= LT argument list_15 GT

    argument ::= moduleExpr
           | type
           | predicateRef SLASH INT_LITERAL

    signature ::= predicateSignature
           | typeSignature
           | moduleSignature

    predicateSignature ::= opt_16 list_17 SIGNATURE head SEMI

    typeSignature ::= opt_18 annotations SIGNATURE CLASS classname opt_22 grp_23

    moduleSignature ::= opt_25 list_26 SIGNATURE MODULE moduleSignatureName opt_27 LBRACE moduleSignatureBody RBRACE

    moduleSignatureBody ::= list_29

    signaturePredicate ::= opt_30 annotations head SEMI

    defaultPredicate ::= opt_31 annotations DEFAULT head LBRACE formula RBRACE

    signatureType ::= opt_32 annotations CLASS classname opt_36 grp_37

    select ::= opt_40 opt_42 SELECT as_exprs opt_44

    as_exprs ::= as_expr list_46

    as_expr ::= expr opt_48

    orderbys ::= orderby list_50

    orderby ::= LOWERID opt_52

    dtName ::= UPPERID

    dtBranches ::= dtBranche list_54

    dtBranche ::= dtBranchName LPAREN var_decls RPAREN opt_56

    dtBranchName ::= UPPERID

    datatype ::= opt_57 annotations NEWTYPE dtName EQ dtBranches

    unionBranches ::= type list_59

    typeunion ::= opt_60 annotations CLASS UPPERID EQ unionBranches SEMI

    predicate ::= opt_61 annotations head optbody

    annotations ::= list_62

    annotation ::= simpleAnnotation
           | argsAnnotation

    simpleAnnotation ::= ABSTRACT
           | CACHED
           | EXTERNAL
           | EXTENSIBLE
           | FINAL
           | TRANSIENT
           | LIBRARY
           | PRIVATE
           | DEPRECATED
           | OVERRIDE
           | ADDITIONAL
           | QUERY

    pragmaArg ::= INLINE
           | INLINE_LATE
           | NOINLINE
           | NOMAGIC
           | NOOPT
           | ASSUME_SMALL_DELTA

    argsAnnotation ::= PRAGMA LBRACKET pragmaArg list_64 RBRACKET
           | LANGUAGE LBRACKET MONOTONICAGGREGATES RBRACKET
           | BINDINGSET LBRACKET opt_68 RBRACKET

    head ::= grp_69 predicateName LPAREN var_decls RPAREN

    optbody ::= SEMI
           | LBRACE formula RBRACE
           | EQ literalId LPAREN opt_73 RPAREN LPAREN opt_74 RPAREN

    class_ ::= opt_75 annotations CLASS classname opt_79 opt_83 LBRACE list_84 RBRACE

    member ::= character
           | predicate
           | field

    character ::= opt_85 annotations classname LPAREN RPAREN LBRACE formula RBRACE

    field ::= opt_86 annotations var_decl SEMI

    moduleExpr ::= modulename opt_87
           | moduleExpr COLONCOLON modulename opt_88

    moduleSignatureExpr ::= opt_90 moduleSignatureName opt_91

    signatureExpr ::= opt_93 simpleId opt_95

    type ::= opt_97 classname
           | dbbasetype
           | BOOLEAN
           | DATE
           | FLOAT
           | INT
           | STRING

    exprs ::= expr list_99

    alias ::= opt_100 annotations PREDICATE predicateName EQ predicateRef SLASH INT_LITERAL SEMI
           | opt_101 annotations CLASS classname EQ type SEMI
           | opt_102 annotations MODULE modulename EQ moduleExpr SEMI

    var_decls ::= opt_106

    var_decl ::= type varname

    formula ::= conjunction_formula list_108

    formula_base ::= fparen
           | ifthen
           | negated
           | quantified
           | comparison
           | instanceof_expr
           | inrange
           | call

    conjunction_formula ::= implies_formula list_110

    implies_formula ::= formula_base list_112

    fparen ::= LPAREN formula RPAREN

    ifthen ::= IF formula THEN formula ELSE formula

    negated ::= NOT formula

    quantified ::= EXISTS LPAREN expr RPAREN
           | EXISTS LPAREN var_decls opt_114 opt_116 RPAREN
           | FORALL LPAREN var_decls opt_118 PIPE formula RPAREN
           | FOREX LPAREN var_decls opt_120 PIPE formula RPAREN

    comparison ::= expr compop expr

    compop ::= EQ
           | NOTEQ
           | LT
           | GT
           | LTEQ
           | GTEQ

    instanceof_expr ::= expr INSTANCEOF type

    inrange ::= expr IN grp_121

    call ::= predicateRef opt_122 LPAREN opt_123 RPAREN
           | primary DOT predicateName opt_124 LPAREN opt_125 RPAREN

    closure ::= STAR
           | PLUS

    expr ::= multExpr list_128

    multExpr ::= unaryExpr list_131

    unaryExpr ::= nonOpExpr
           | unop

    nonOpExpr ::= DONTCARE
           | cast
           | primary

    primary ::= primaryBase list_132

    primaryPostfixOp ::= DOT LPAREN type RPAREN
           | DOT predicateName opt_133 LPAREN opt_134 RPAREN

    callwithresults_nomember ::= predicateRef opt_135 LPAREN opt_136 RPAREN

    primaryBase ::= eparen
           | literal
           | variable
           | super_expr
           | aggregation
           | expression_pragma
           | callwithresults_nomember
           | any
           | none
           | range
           | setliteral

    none ::= NONE LPAREN RPAREN

    eparen ::= LPAREN expr RPAREN

    literal ::= FALSE
           | TRUE
           | INT_LITERAL
           | FLOAT_LITERAL
           | STRING_LITERAL

    unop ::= PLUS expr
           | MINUS expr

    variable ::= varname
           | THIS
           | RESULT

    super_expr ::= SUPER
           | type DOT SUPER

    cast ::= LPAREN type RPAREN expr

    aggregation ::= aggid opt_138 LPAREN var_decls opt_145 RPAREN
           | aggid opt_147 LPAREN as_exprs opt_149 RPAREN
           | UNIQUE LPAREN var_decls PIPE opt_150 opt_152 RPAREN

    expression_pragma ::= PRAGMA LBRACKET expression_pragma_type RBRACKET LPAREN expr RPAREN

    expression_pragma_type ::= ONLY_BIND_OUT
           | ONLY_BIND_INTO

    aggid ::= AVG
           | CONCAT
           | COUNT
           | MAX
           | MIN
           | RANK
           | STRICTCONCAT
           | STRICTCOUNT
           | STRICTSUM
           | SUM

    aggorderbys ::= aggorderby list_154

    aggorderby ::= expr opt_156

    any ::= ANY LPAREN var_decls opt_161 RPAREN

    range ::= LBRACKET expr DOTDOT expr RBRACKET

    setliteral ::= LBRACKET expr list_163 opt_164 RBRACKET

    modulename ::= simpleId

    moduleSignatureName ::= UPPERID

    classname ::= UPPERID

    dbbasetype ::= ATLOWERID

    predicateRef ::= opt_166 predicateCallName

    predicateName ::= LOWERID
           | keywordAllowed

    predicateCallName ::= LOWERID
           | ATLOWERID
           | UPPERID
           | keywordPredCallAllowed

    parameterName ::= simpleId

    opt_1 ::= QL_DOC | $empty

    list_2 ::= $empty | list_2 annotation

    opt_3 ::= parameters | $empty

    opt_4 ::= implements_clause | $empty

    seq_5 ::= COMMA signatureExpr parameterName

    list_6 ::= $empty | list_6 seq_5

    seq_7 ::= COMMA moduleSignatureExpr

    list_8 ::= $empty | list_8 seq_7

    grp_9 ::= importDeclaration | predicate | signature | datatype | typeunion | class_ | module_decl | alias | select

    list_10 ::= $empty | list_10 grp_9

    seq_11 ::= AS modulename

    opt_12 ::= seq_11 | $empty

    opt_13 ::= arguments | $empty

    seq_14 ::= COMMA argument

    list_15 ::= $empty | list_15 seq_14

    opt_16 ::= QL_DOC | $empty

    list_17 ::= $empty | list_17 annotation

    opt_18 ::= QL_DOC | $empty

    seq_19 ::= COMMA type

    list_20 ::= $empty | list_20 seq_19

    seq_21 ::= EXTENDS type list_20

    opt_22 ::= seq_21 | $empty

    list_24 ::= $empty | list_24 signaturePredicate

    grp_23 ::= SEMI | LBRACE list_24 RBRACE

    opt_25 ::= QL_DOC | $empty

    list_26 ::= $empty | list_26 annotation

    opt_27 ::= parameters | $empty

    grp_28 ::= signaturePredicate | defaultPredicate | signatureType

    list_29 ::= $empty | list_29 grp_28

    opt_30 ::= QL_DOC | $empty

    opt_31 ::= QL_DOC | $empty

    opt_32 ::= QL_DOC | $empty

    seq_33 ::= COMMA type

    list_34 ::= $empty | list_34 seq_33

    seq_35 ::= EXTENDS type list_34

    opt_36 ::= seq_35 | $empty

    list_38 ::= $empty | list_38 signaturePredicate

    grp_37 ::= SEMI | LBRACE list_38 RBRACE

    seq_39 ::= FROM var_decls

    opt_40 ::= seq_39 | $empty

    seq_41 ::= WHERE formula

    opt_42 ::= seq_41 | $empty

    seq_43 ::= ORDER BY orderbys

    opt_44 ::= seq_43 | $empty

    seq_45 ::= COMMA as_expr

    list_46 ::= $empty | list_46 seq_45

    seq_47 ::= AS LOWERID

    opt_48 ::= seq_47 | $empty

    seq_49 ::= COMMA orderby

    list_50 ::= $empty | list_50 seq_49

    grp_51 ::= ASC | DESC

    opt_52 ::= grp_51 | $empty

    seq_53 ::= OR dtBranche

    list_54 ::= $empty | list_54 seq_53

    seq_55 ::= LBRACE formula RBRACE

    opt_56 ::= seq_55 | $empty

    opt_57 ::= QL_DOC | $empty

    seq_58 ::= OR type

    list_59 ::= $empty | list_59 seq_58

    opt_60 ::= QL_DOC | $empty

    opt_61 ::= QL_DOC | $empty

    list_62 ::= $empty | list_62 annotation

    seq_63 ::= COMMA pragmaArg

    list_64 ::= $empty | list_64 seq_63

    seq_65 ::= COMMA variable

    list_66 ::= $empty | list_66 seq_65

    seq_67 ::= variable list_66

    opt_68 ::= seq_67 | $empty

    grp_69 ::= PREDICATE | type

    seq_70 ::= COMMA predicateRef SLASH INT_LITERAL

    list_71 ::= $empty | list_71 seq_70

    seq_72 ::= predicateRef SLASH INT_LITERAL list_71

    opt_73 ::= seq_72 | $empty

    opt_74 ::= exprs | $empty

    opt_75 ::= QL_DOC | $empty

    seq_76 ::= COMMA type

    list_77 ::= $empty | list_77 seq_76

    seq_78 ::= EXTENDS type list_77

    opt_79 ::= seq_78 | $empty

    seq_80 ::= COMMA type

    list_81 ::= $empty | list_81 seq_80

    seq_82 ::= INSTANCEOF type list_81

    opt_83 ::= seq_82 | $empty

    list_84 ::= $empty | list_84 member

    opt_85 ::= QL_DOC | $empty

    opt_86 ::= QL_DOC | $empty

    opt_87 ::= arguments | $empty

    opt_88 ::= arguments | $empty

    seq_89 ::= moduleExpr COLONCOLON

    opt_90 ::= seq_89 | $empty

    opt_91 ::= arguments | $empty

    seq_92 ::= moduleExpr COLONCOLON

    opt_93 ::= seq_92 | $empty

    grp_94 ::= SLASH INT_LITERAL | arguments

    opt_95 ::= grp_94 | $empty

    seq_96 ::= moduleExpr COLONCOLON

    opt_97 ::= seq_96 | $empty

    seq_98 ::= COMMA expr

    list_99 ::= $empty | list_99 seq_98

    opt_100 ::= QL_DOC | $empty

    opt_101 ::= QL_DOC | $empty

    opt_102 ::= QL_DOC | $empty

    seq_103 ::= COMMA var_decl

    list_104 ::= $empty | list_104 seq_103

    seq_105 ::= var_decl list_104

    opt_106 ::= seq_105 | $empty

    seq_107 ::= OR formula

    list_108 ::= $empty | list_108 seq_107

    seq_109 ::= AND formula

    list_110 ::= $empty | list_110 seq_109

    seq_111 ::= IMPLIES formula

    list_112 ::= $empty | list_112 seq_111

    grp_113 ::= PIPE formula

    opt_114 ::= grp_113 | $empty

    grp_115 ::= PIPE formula

    opt_116 ::= grp_115 | $empty

    grp_117 ::= PIPE formula

    opt_118 ::= grp_117 | $empty

    grp_119 ::= PIPE formula

    opt_120 ::= grp_119 | $empty

    grp_121 ::= range | setliteral

    opt_122 ::= closure | $empty

    opt_123 ::= exprs | $empty

    opt_124 ::= closure | $empty

    opt_125 ::= exprs | $empty

    grp_127 ::= PLUS | MINUS

    grp_126 ::= grp_127 multExpr

    list_128 ::= $empty | list_128 grp_126

    grp_130 ::= STAR | SLASH | PERCENT

    grp_129 ::= grp_130 unaryExpr

    list_131 ::= $empty | list_131 grp_129

    list_132 ::= $empty | list_132 primaryPostfixOp

    opt_133 ::= closure | $empty

    opt_134 ::= exprs | $empty

    opt_135 ::= closure | $empty

    opt_136 ::= exprs | $empty

    seq_137 ::= LBRACKET expr RBRACKET

    opt_138 ::= seq_137 | $empty

    opt_140 ::= formula | $empty

    seq_142 ::= ORDER BY aggorderbys

    opt_143 ::= seq_142 | $empty

    grp_141 ::= PIPE as_exprs opt_143

    opt_144 ::= grp_141 | $empty

    grp_139 ::= PIPE opt_140 opt_144

    opt_145 ::= grp_139 | $empty

    seq_146 ::= LBRACKET expr RBRACKET

    opt_147 ::= seq_146 | $empty

    seq_148 ::= ORDER BY aggorderbys

    opt_149 ::= seq_148 | $empty

    opt_150 ::= formula | $empty

    grp_151 ::= PIPE as_exprs

    opt_152 ::= grp_151 | $empty

    seq_153 ::= COMMA aggorderby

    list_154 ::= $empty | list_154 seq_153

    grp_155 ::= ASC | DESC

    opt_156 ::= grp_155 | $empty

    opt_158 ::= formula | $empty

    grp_159 ::= PIPE expr

    opt_160 ::= grp_159 | $empty

    grp_157 ::= PIPE opt_158 opt_160

    opt_161 ::= grp_157 | $empty

    seq_162 ::= COMMA expr

    list_163 ::= $empty | list_163 seq_162

    opt_164 ::= COMMA | $empty

    seq_165 ::= moduleExpr COLONCOLON

    opt_166 ::= seq_165 | $empty

%End
