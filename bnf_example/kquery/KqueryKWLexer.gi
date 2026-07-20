-- Keyword filter for Kquery (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.kquery
%options template=KeywordTemplateF.gi
%options fp=KqueryKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ADD
    ASHR
    Array
    BITWISEAND
    BITWISEOR
    BITWISEXOR
    CONCAT
    EQ
    EXTRACT
    FP
    FalseMatch
    INT
    LSHR
    MUL
    NEGETION
    NEQ
    NOT
    Query
    READ
    READLSB
    READMSB
    SDIV
    SELECT
    SEXT
    SGE
    SGT
    SHL
    SLE
    SLT
    SREM
    SUB
    Symbolic
    TrueMatch
    UDIV
    UGE
    UGT
    ULE
    ULT
    UREM
    WIDTH
    ZEXT
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= s y m b o l i c /.$setResult($_Symbolic);./
    Keyword ::= e x t r a c t /.$setResult($_EXTRACT);./
    Keyword ::= r e a d l s b /.$setResult($_READLSB);./
    Keyword ::= r e a d m s b /.$setResult($_READMSB);./
    Keyword ::= c o n c a t /.$setResult($_CONCAT);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= a r r a y /.$setResult($_Array);./
    Keyword ::= f a l s e /.$setResult($_FalseMatch);./
    Keyword ::= q u e r y /.$setResult($_Query);./
    Keyword ::= a s h r /.$setResult($_ASHR);./
    Keyword ::= l s h r /.$setResult($_LSHR);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= s d i v /.$setResult($_SDIV);./
    Keyword ::= s e x t /.$setResult($_SEXT);./
    Keyword ::= s r e m /.$setResult($_SREM);./
    Keyword ::= t r u e /.$setResult($_TrueMatch);./
    Keyword ::= u d i v /.$setResult($_UDIV);./
    Keyword ::= u r e m /.$setResult($_UREM);./
    Keyword ::= z e x t /.$setResult($_ZEXT);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a n d /.$setResult($_BITWISEAND);./
    Keyword ::= m u l /.$setResult($_MUL);./
    Keyword ::= n e g /.$setResult($_NEGETION);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= s g e /.$setResult($_SGE);./
    Keyword ::= s g t /.$setResult($_SGT);./
    Keyword ::= s h l /.$setResult($_SHL);./
    Keyword ::= s l e /.$setResult($_SLE);./
    Keyword ::= s l t /.$setResult($_SLT);./
    Keyword ::= s u b /.$setResult($_SUB);./
    Keyword ::= u g e /.$setResult($_UGE);./
    Keyword ::= u g t /.$setResult($_UGT);./
    Keyword ::= u l e /.$setResult($_ULE);./
    Keyword ::= u l t /.$setResult($_ULT);./
    Keyword ::= x o r /.$setResult($_BITWISEXOR);./
    Keyword ::= e q /.$setResult($_EQ);./
    Keyword ::= f p /.$setResult($_FP);./
    Keyword ::= n e /.$setResult($_NEQ);./
    Keyword ::= o r /.$setResult($_BITWISEOR);./
    Keyword ::= i /.$setResult($_INT);./
    Keyword ::= w /.$setResult($_WIDTH);./
%End
