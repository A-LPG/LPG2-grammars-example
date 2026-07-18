-- Keyword filter for Bcpl (aligned to parser terminal names)
%options package=lpg.grammars.bcpl
%options template=KeywordTemplateF.gi
%options fp=BcplKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABS
    AT
    BANG
    BY
    Binary_number
    CB
    COLONCOLON
    DOTDOT
    Digits
    ELSE
    EQV
    EVERY
    EXIT
    FINISH
    FIX
    FLOAT
    FLT
    GOTO
    Hex_number
    KAND
    KBE
    KBREAK
    KCASE
    KDEFAULT
    KDO
    KENDCASE
    KFALSE
    KFOR
    KGET
    KGLOBAL
    KIF
    KINTO
    KLET
    KLOOP
    KMANIFEST
    KOR
    KREPEAT
    KRESULTIS
    KSTATIC
    KTO
    KTRUE
    KUNLESS
    KUNTIL
    KVALOF
    KWHILE
    LSHIFT
    MATCH
    MOD
    NE
    NEQV
    NEXT
    NOT
    OB
    OF
    Octal_number
    PERCENT
    PIPE
    REM
    REPEATUNTIL
    REPEATWHILE
    RETURN
    RSHIFT
    SECTION
    SLCT
    STRING
    SWITCHON
    TABLE
    TEST
    THEN
    TILDE
    VEC
    XOR
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= b i n a r y n u m b e r /.$setResult($_Binary_number);./
    Keyword ::= o c t a l n u m b e r /.$setResult($_Octal_number);./
    Keyword ::= r e p e a t u n t i l /.$setResult($_REPEATUNTIL);./
    Keyword ::= r e p e a t w h i l e /.$setResult($_REPEATWHILE);./
    Keyword ::= c o l o n c o l o n /.$setResult($_COLONCOLON);./
    Keyword ::= h e x n u m b e r /.$setResult($_Hex_number);./
    Keyword ::= m a n i f e s t /.$setResult($_KMANIFEST);./
    Keyword ::= r e s u l t i s /.$setResult($_KRESULTIS);./
    Keyword ::= s w i t c h o n /.$setResult($_SWITCHON);./
    Keyword ::= d e f a u l t /.$setResult($_KDEFAULT);./
    Keyword ::= e n d c a s e /.$setResult($_KENDCASE);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= s e c t i o n /.$setResult($_SECTION);./
    Keyword ::= d i g i t s /.$setResult($_Digits);./
    Keyword ::= d o t d o t /.$setResult($_DOTDOT);./
    Keyword ::= f i n i s h /.$setResult($_FINISH);./
    Keyword ::= g l o b a l /.$setResult($_KGLOBAL);./
    Keyword ::= l s h i f t /.$setResult($_LSHIFT);./
    Keyword ::= r e p e a t /.$setResult($_KREPEAT);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= r s h i f t /.$setResult($_RSHIFT);./
    Keyword ::= s t a t i c /.$setResult($_KSTATIC);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= u n l e s s /.$setResult($_KUNLESS);./
    Keyword ::= b r e a k /.$setResult($_KBREAK);./
    Keyword ::= e v e r y /.$setResult($_EVERY);./
    Keyword ::= f a l s e /.$setResult($_KFALSE);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= m a t c h /.$setResult($_MATCH);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= t i l d e /.$setResult($_TILDE);./
    Keyword ::= u n t i l /.$setResult($_KUNTIL);./
    Keyword ::= v a l o f /.$setResult($_KVALOF);./
    Keyword ::= w h i l e /.$setResult($_KWHILE);./
    Keyword ::= b a n g /.$setResult($_BANG);./
    Keyword ::= c a s e /.$setResult($_KCASE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= i n t o /.$setResult($_KINTO);./
    Keyword ::= l o o p /.$setResult($_KLOOP);./
    Keyword ::= n e q v /.$setResult($_NEQV);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= p i p e /.$setResult($_PIPE);./
    Keyword ::= s l c t /.$setResult($_SLCT);./
    Keyword ::= t e s t /.$setResult($_TEST);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t r u e /.$setResult($_KTRUE);./
    Keyword ::= a b s /.$setResult($_ABS);./
    Keyword ::= a n d /.$setResult($_KAND);./
    Keyword ::= e q v /.$setResult($_EQV);./
    Keyword ::= f i x /.$setResult($_FIX);./
    Keyword ::= f l t /.$setResult($_FLT);./
    Keyword ::= f o r /.$setResult($_KFOR);./
    Keyword ::= g e t /.$setResult($_KGET);./
    Keyword ::= l e t /.$setResult($_KLET);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= r e m /.$setResult($_REM);./
    Keyword ::= v e c /.$setResult($_VEC);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= b e /.$setResult($_KBE);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= c b /.$setResult($_CB);./
    Keyword ::= d o /.$setResult($_KDO);./
    Keyword ::= i f /.$setResult($_KIF);./
    Keyword ::= n e /.$setResult($_NE);./
    Keyword ::= o b /.$setResult($_OB);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o r /.$setResult($_KOR);./
    Keyword ::= t o /.$setResult($_KTO);./
%End
