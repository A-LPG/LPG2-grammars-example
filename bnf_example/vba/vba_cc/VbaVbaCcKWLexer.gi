-- Keyword filter for VbaVbaCc (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.vba.vba_cc
%options template=KeywordTemplateF.gi
%options fp=VbaVbaCcKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ABS
    AND
    BOOLEANLITERAL
    CBOOL
    CBYTE
    CCUR
    CDATE
    CDBL
    CINT
    CLASS
    CLNG
    CLNGLNG
    CLNGPTR
    CSNG
    CSTR
    CVAR
    EMPTY_
    EQV
    FIX
    IMP
    INT
    LEN
    LENB
    LIKE
    MAC
    MOD
    NOT
    NOTHING
    NULL_
    OR
    SGN
    THEN
    VERSION
    XOR
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= c l n g l n g /.$setResult($_CLNGLNG);./
    Keyword ::= c l n g p t r /.$setResult($_CLNGPTR);./
    Keyword ::= n o t h i n g /.$setResult($_NOTHING);./
    Keyword ::= v e r s i o n /.$setResult($_VERSION);./
    Keyword ::= c b o o l /.$setResult($_CBOOL);./
    Keyword ::= c b y t e /.$setResult($_CBYTE);./
    Keyword ::= c d a t e /.$setResult($_CDATE);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= e m p t y /.$setResult($_EMPTY_);./
    Keyword ::= f a l s e /.$setResult($_BOOLEANLITERAL);./
    Keyword ::= c c u r /.$setResult($_CCUR);./
    Keyword ::= c d b l /.$setResult($_CDBL);./
    Keyword ::= c i n t /.$setResult($_CINT);./
    Keyword ::= c l n g /.$setResult($_CLNG);./
    Keyword ::= c s n g /.$setResult($_CSNG);./
    Keyword ::= c s t r /.$setResult($_CSTR);./
    Keyword ::= c v a r /.$setResult($_CVAR);./
    Keyword ::= l e n b /.$setResult($_LENB);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t r u e /.$setResult($_BOOLEANLITERAL);./
    Keyword ::= a b s /.$setResult($_ABS);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= e q v /.$setResult($_EQV);./
    Keyword ::= f i x /.$setResult($_FIX);./
    Keyword ::= i m p /.$setResult($_IMP);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= l e n /.$setResult($_LEN);./
    Keyword ::= m a c /.$setResult($_MAC);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= s g n /.$setResult($_SGN);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= o r /.$setResult($_OR);./
%End
