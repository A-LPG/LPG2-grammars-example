-- AUTO-GENERATED from antlr/grammars-v4 teal by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=TealParser
%options package=lpg.grammars.teal
%options template=dtParserTemplateF.gi
%options import_terminals=TealLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    chunk
%End

%Rules
    chunk ::= block
           | LOCAL IDENTIFIER EQ NUMBER

    block ::= list_1 opt_2

    stat ::= SEMI
           | varlist EQ explist
           | functioncall
           | label
           | BREAK
           | GOTO IDENTIFIER
           | DO block END
           | WHILE exp DO block END
           | REPEAT block UNTIL exp
           | IF exp THEN block list_4 opt_6 END
           | FOR IDENTIFIER EQ exp COMMA exp opt_8 DO block END
           | FOR namelist IN explist DO block END
           | FUNCTION funcname funcbody
           | LOCAL FUNCTION IDENTIFIER funcbody
           | LOCAL attnamelist opt_10 opt_12
           | LOCAL IDENTIFIER EQ newtype
           | GLOBAL FUNCTION IDENTIFIER funcbody
           | GLOBAL attnamelist COLON typelist
           | GLOBAL attnamelist opt_14 EQ explist
           | GLOBAL IDENTIFIER EQ newtype

    attnamelist ::= IDENTIFIER opt_15 list_18

    attrib ::= LT IDENTIFIER GT

    typ ::= LPAREN typ RPAREN
           | basetype list_20

    basetype ::= STRING
           | IDENTIFIER
           | NIL
           | NUMBER
           | LBRACE typ RBRACE
           | LBRACE typ COLON typ RBRACE
           | FUNCTION functiontype
           | IDENTIFIER opt_21

    typelist ::= typ opt_23

    retlist ::= LPAREN opt_24 opt_25 RPAREN
           | typelist opt_26

    typeargs ::= LT IDENTIFIER list_28 GT

    newtype ::= RECORD opt_29 opt_31 list_33 list_35 END
           | ENUM list_36 END
           | FUNCTIONTYPE functiontype

    functiontype ::= opt_37 LPAREN partypelist RPAREN opt_39

    partypelist ::= partype list_41

    partype ::= opt_43 typ

    parnamelist ::= parname list_45

    parname ::= IDENTIFIER opt_47

    retstat ::= RETURN opt_48 opt_49

    label ::= COLONCOLON IDENTIFIER COLONCOLON

    funcname ::= IDENTIFIER list_51 opt_53

    varlist ::= variable list_55

    namelist ::= IDENTIFIER list_57

    explist ::= exp list_59

    exp ::= NIL
           | FALSE
           | TRUE
           | number
           | str
           | ELLIPSIS
           | functiondef
           | prefixexp
           | tableconstructor
           | exp AS typ
           | exp operatorPower exp
           | operatorUnary exp
           | exp operatorMulDivMod exp
           | exp operatorAddSub exp
           | exp operatorStrcat exp
           | exp operatorComparison exp
           | IDENTIFIER IS typ
           | exp operatorAnd_rule exp
           | exp operatorOr_rule exp
           | exp operatorBitwise exp

    prefixexp ::= varOrExp list_60

    functioncall ::= varOrExp list_61

    varOrExp ::= variable
           | LPAREN exp RPAREN

    variable ::= grp_62 list_63

    varSuffix ::= list_64 grp_65

    nameAndArgs ::= opt_67 args

    args ::= LPAREN opt_68 RPAREN
           | tableconstructor
           | str

    functiondef ::= FUNCTION funcbody

    funcbody ::= opt_69 LPAREN opt_70 RPAREN opt_72 block END

    parlist ::= namelist opt_74
           | ELLIPSIS
           | parnamelist opt_78
           | ELLIPSIS opt_80

    tableconstructor ::= LBRACE opt_81 RBRACE

    fieldlist ::= field list_83 opt_84

    field ::= LBRACKET exp RBRACKET EQ exp
           | IDENTIFIER opt_86 EQ exp
           | IDENTIFIER EQ newtype
           | exp

    fieldsep ::= COMMA
           | SEMI

    operatorOr_rule ::= OR

    operatorAnd_rule ::= AND

    operatorComparison ::= LT
           | GT
           | LTEQ
           | GTEQ
           | OP_18455
           | EQEQ

    operatorStrcat ::= DOTDOT

    operatorAddSub ::= PLUS
           | MINUS

    operatorMulDivMod ::= STAR
           | SLASH
           | PERCENT
           | SLASHSLASH

    operatorBitwise ::= AMP
           | PIPE
           | TILDE
           | LSHIFT
           | RSHIFT

    operatorUnary ::= NOT
           | HASH
           | MINUS
           | TILDE

    operatorPower ::= CARET

    number ::= INT
           | HEX
           | NUMBER
           | HEX_FLOAT

    str ::= NORMALSTRING
           | CHARSTRING
           | LONGSTRING

    list_1 ::= $empty | list_1 stat

    opt_2 ::= retstat | $empty

    seq_3 ::= ELSEIF exp THEN block

    list_4 ::= $empty | list_4 seq_3

    seq_5 ::= ELSE block

    opt_6 ::= seq_5 | $empty

    seq_7 ::= COMMA exp

    opt_8 ::= seq_7 | $empty

    seq_9 ::= COLON typelist

    opt_10 ::= seq_9 | $empty

    seq_11 ::= EQ explist

    opt_12 ::= seq_11 | $empty

    seq_13 ::= COLON typelist

    opt_14 ::= seq_13 | $empty

    opt_15 ::= attrib | $empty

    opt_16 ::= attrib | $empty

    seq_17 ::= COMMA IDENTIFIER opt_16

    list_18 ::= $empty | list_18 seq_17

    grp_19 ::= PIPE basetype

    list_20 ::= $empty | list_20 grp_19

    opt_21 ::= typeargs | $empty

    seq_22 ::= COMMA typ

    opt_23 ::= seq_22 | $empty

    opt_24 ::= typelist | $empty

    opt_25 ::= ELLIPSIS | $empty

    opt_26 ::= ELLIPSIS | $empty

    seq_27 ::= COMMA IDENTIFIER

    list_28 ::= $empty | list_28 seq_27

    opt_29 ::= typeargs | $empty

    seq_30 ::= LBRACE typ RBRACE

    opt_31 ::= seq_30 | $empty

    seq_32 ::= IDENTIFIER EQ newtype

    list_33 ::= $empty | list_33 seq_32

    seq_34 ::= IDENTIFIER COLON typ

    list_35 ::= $empty | list_35 seq_34

    list_36 ::= $empty | list_36 str

    opt_37 ::= typeargs | $empty

    seq_38 ::= COLON retlist

    opt_39 ::= seq_38 | $empty

    seq_40 ::= COMMA partype

    list_41 ::= $empty | list_41 seq_40

    seq_42 ::= IDENTIFIER COLON

    opt_43 ::= seq_42 | $empty

    seq_44 ::= COMMA parname

    list_45 ::= $empty | list_45 seq_44

    seq_46 ::= COLON typ

    opt_47 ::= seq_46 | $empty

    opt_48 ::= explist | $empty

    opt_49 ::= SEMI | $empty

    seq_50 ::= DOT IDENTIFIER

    list_51 ::= $empty | list_51 seq_50

    seq_52 ::= COLON IDENTIFIER

    opt_53 ::= seq_52 | $empty

    seq_54 ::= COMMA variable

    list_55 ::= $empty | list_55 seq_54

    seq_56 ::= COMMA IDENTIFIER

    list_57 ::= $empty | list_57 seq_56

    seq_58 ::= COMMA exp

    list_59 ::= $empty | list_59 seq_58

    list_60 ::= $empty | list_60 nameAndArgs

    list_61 ::= nameAndArgs | list_61 nameAndArgs

    grp_62 ::= IDENTIFIER | LPAREN exp RPAREN varSuffix

    list_63 ::= $empty | list_63 varSuffix

    list_64 ::= $empty | list_64 nameAndArgs

    grp_65 ::= LBRACKET exp RBRACKET | DOT IDENTIFIER

    seq_66 ::= COLON IDENTIFIER

    opt_67 ::= seq_66 | $empty

    opt_68 ::= explist | $empty

    opt_69 ::= typeargs | $empty

    opt_70 ::= parlist | $empty

    seq_71 ::= COLON retlist

    opt_72 ::= seq_71 | $empty

    seq_73 ::= COMMA ELLIPSIS

    opt_74 ::= seq_73 | $empty

    seq_75 ::= COLON typ

    opt_76 ::= seq_75 | $empty

    seq_77 ::= COMMA ELLIPSIS opt_76

    opt_78 ::= seq_77 | $empty

    seq_79 ::= COLON typ

    opt_80 ::= seq_79 | $empty

    opt_81 ::= fieldlist | $empty

    seq_82 ::= fieldsep field

    list_83 ::= $empty | list_83 seq_82

    opt_84 ::= fieldsep | $empty

    seq_85 ::= COLON typ

    opt_86 ::= seq_85 | $empty

%End
