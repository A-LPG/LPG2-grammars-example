-- Keyword filter for Argus (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.argus
%options template=KeywordTemplateF.gi
%options fp=ArgusKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABORT
    ACTION
    ANY
    ARRAY
    BACKGROUND
    BEGIN
    BIND
    BOOL
    BREAK
    CAND
    CHAR
    CLUSTER
    COENTER
    CONTINUE
    COR
    CREATOR
    CREATORTYPE
    CVT
    DO
    DOWN
    ELSE
    ELSEIF
    END
    ENTER
    EQUATES
    EXCEPT
    EXIT
    FALSE
    FOR
    FOREACH
    FORK
    GUARDIAN
    HANDLER
    HANDLERTYPE
    HANDLES
    HAS
    IF
    IMAGE
    IN
    INT
    IS
    ITER
    ITERTYPE
    LEAVE
    MUTEX
    NIL
    NODE
    NULL_LITERAL
    ONEOF
    OTHERS
    OWN
    PAUSE
    PROC
    PROCESS
    PROCTYPE
    REAL
    RECORD
    RECOVER
    REP
    RESIGNAL
    RETURN
    RETURNS
    SEIZE
    SELF
    SEQUENCE
    SIGNAL
    SIGNALS
    STABLE
    STRING
    STRUCT
    TAGCASE
    TAGTEST
    TAGWAIT
    TERMINATE
    THEN
    TOPACTION
    TRANSMIT
    TRUE
    TYPE
    UP
    VARIANT
    WHEN
    WHERE
    WHILE
    WITH
    YIELD
    YIELDS
    TAG
    WTAG
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= c r e a t o r t y p e /.$setResult($_CREATORTYPE);./
    Keyword ::= h a n d l e r t y p e /.$setResult($_HANDLERTYPE);./
    Keyword ::= b a c k g r o u n d /.$setResult($_BACKGROUND);./
    Keyword ::= t e r m i n a t e /.$setResult($_TERMINATE);./
    Keyword ::= t o p a c t i o n /.$setResult($_TOPACTION);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= g u a r d i a n /.$setResult($_GUARDIAN);./
    Keyword ::= i t e r t y p e /.$setResult($_ITERTYPE);./
    Keyword ::= p r o c t y p e /.$setResult($_PROCTYPE);./
    Keyword ::= r e s i g n a l /.$setResult($_RESIGNAL);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE);./
    Keyword ::= t r a n s m i t /.$setResult($_TRANSMIT);./
    Keyword ::= c l u s t e r /.$setResult($_CLUSTER);./
    Keyword ::= c o e n t e r /.$setResult($_COENTER);./
    Keyword ::= c r e a t o r /.$setResult($_CREATOR);./
    Keyword ::= e q u a t e s /.$setResult($_EQUATES);./
    Keyword ::= f o r e a c h /.$setResult($_FOREACH);./
    Keyword ::= h a n d l e r /.$setResult($_HANDLER);./
    Keyword ::= h a n d l e s /.$setResult($_HANDLES);./
    Keyword ::= p r o c e s s /.$setResult($_PROCESS);./
    Keyword ::= r e c o v e r /.$setResult($_RECOVER);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS);./
    Keyword ::= s i g n a l s /.$setResult($_SIGNALS);./
    Keyword ::= t a g c a s e /.$setResult($_TAGCASE);./
    Keyword ::= t a g t e s t /.$setResult($_TAGTEST);./
    Keyword ::= t a g w a i t /.$setResult($_TAGWAIT);./
    Keyword ::= v a r i a n t /.$setResult($_VARIANT);./
    Keyword ::= a c t i o n /.$setResult($_ACTION);./
    Keyword ::= e l s e i f /.$setResult($_ELSEIF);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= o t h e r s /.$setResult($_OTHERS);./
    Keyword ::= r e c o r d /.$setResult($_RECORD);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s i g n a l /.$setResult($_SIGNAL);./
    Keyword ::= s t a b l e /.$setResult($_STABLE);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= s t r u c t /.$setResult($_STRUCT);./
    Keyword ::= y i e l d s /.$setResult($_YIELDS);./
    Keyword ::= a b o r t /.$setResult($_ABORT);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= e n t e r /.$setResult($_ENTER);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= i m a g e /.$setResult($_IMAGE);./
    Keyword ::= l e a v e /.$setResult($_LEAVE);./
    Keyword ::= m u t e x /.$setResult($_MUTEX);./
    Keyword ::= o n e o f /.$setResult($_ONEOF);./
    Keyword ::= p a u s e /.$setResult($_PAUSE);./
    Keyword ::= s e i z e /.$setResult($_SEIZE);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= y i e l d /.$setResult($_YIELD);./
    Keyword ::= b i n d /.$setResult($_BIND);./
    Keyword ::= b o o l /.$setResult($_BOOL);./
    Keyword ::= c a n d /.$setResult($_CAND);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= d o w n /.$setResult($_DOWN);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= f o r k /.$setResult($_FORK);./
    Keyword ::= i t e r /.$setResult($_ITER);./
    Keyword ::= n o d e /.$setResult($_NODE);./
    Keyword ::= n u l l /.$setResult($_NULL_LITERAL);./
    Keyword ::= p r o c /.$setResult($_PROC);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= s e l f /.$setResult($_SELF);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= w t a g /.$setResult($_WTAG);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= c o r /.$setResult($_COR);./
    Keyword ::= c v t /.$setResult($_CVT);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= h a s /.$setResult($_HAS);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= n i l /.$setResult($_NIL);./
    Keyword ::= o w n /.$setResult($_OWN);./
    Keyword ::= r e p /.$setResult($_REP);./
    Keyword ::= t a g /.$setResult($_TAG);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= u p /.$setResult($_UP);./
%End
