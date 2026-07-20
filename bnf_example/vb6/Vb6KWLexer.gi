-- Keyword filter for Vb6 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.vb6
%options template=KeywordTemplateF.gi
%options fp=Vb6KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ACCESS
    ADDRESSOF
    ALIAS
    AND
    APPACTIVATE
    APPEND
    AS
    ATTRIBUTE
    BEEP
    BEGIN
    BEGINPROPERTY
    BINARY
    BOOLEAN
    BYREF
    BYTE
    BYVAL
    CALL
    CASE
    CHDIR
    CHDRIVE
    CLASS
    CLOSE
    COLLECTION
    CONST
    DATE
    DECLARE
    DEFBOOL
    DEFBYTE
    DEFCUR
    DEFDATE
    DEFDBL
    DEFDEC
    DEFINT
    DEFLNG
    DEFOBJ
    DEFSNG
    DEFSTR
    DEFVAR
    DELETESETTING
    DIM
    DO
    DOUBLE
    EACH
    ELSE
    ELSEIF
    END
    ENDPROPERTY
    ENUM
    EQV
    ERASE
    ERROR
    EVENT
    FALSE
    FILECOPY
    FOR
    FRIEND
    FUNCTION
    GET
    GLOBAL
    GOSUB
    GOTO
    IF
    IMP
    IMPLEMENTS
    IN
    INPUT
    INTEGER
    IS
    KILL
    LEN
    LET
    LIB
    LIKE
    LOAD
    LOCK
    LONG
    LOOP
    LSET
    ME
    MID
    MKDIR
    MOD
    NAME
    NEW
    NEXT
    NOT
    NOTHING
    NULL_
    OBJECT
    ON
    OPEN
    OPTIONAL
    OR
    OUTPUT
    PARAMARRAY
    PRESERVE
    PRINT
    PRIVATE
    PUBLIC
    PUT
    RAISEEVENT
    RANDOM
    RANDOMIZE
    READ
    REDIM
    REM
    RESET
    RESUME
    RETURN
    RMDIR
    RSET
    SAVEPICTURE
    SAVESETTING
    SEEK
    SELECT
    SENDKEYS
    SET
    SETATTR
    SHARED
    SINGLE
    SPC
    STATIC
    STEP
    STOP
    STRING
    SUB
    TAB
    TEXT
    THEN
    TIME
    TO
    TRUE
    TYPE
    TYPEOF
    UNLOAD
    UNLOCK
    UNTIL
    VARIANT
    VERSION
    WEND
    WHILE
    WIDTH
    WITH
    WITHEVENTS
    WRITE
    XOR
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= b e g i n p r o p e r t y /.$setResult($_BEGINPROPERTY);./
    Keyword ::= d e l e t e s e t t i n g /.$setResult($_DELETESETTING);./
    Keyword ::= a p p a c t i v a t e /.$setResult($_APPACTIVATE);./
    Keyword ::= e n d p r o p e r t y /.$setResult($_ENDPROPERTY);./
    Keyword ::= s a v e p i c t u r e /.$setResult($_SAVEPICTURE);./
    Keyword ::= s a v e s e t t i n g /.$setResult($_SAVESETTING);./
    Keyword ::= c o l l e c t i o n /.$setResult($_COLLECTION);./
    Keyword ::= i m p l e m e n t s /.$setResult($_IMPLEMENTS);./
    Keyword ::= p a r a m a r r a y /.$setResult($_PARAMARRAY);./
    Keyword ::= r a i s e e v e n t /.$setResult($_RAISEEVENT);./
    Keyword ::= w i t h e v e n t s /.$setResult($_WITHEVENTS);./
    Keyword ::= a d d r e s s o f /.$setResult($_ADDRESSOF);./
    Keyword ::= a t t r i b u t e /.$setResult($_ATTRIBUTE);./
    Keyword ::= r a n d o m i z e /.$setResult($_RANDOMIZE);./
    Keyword ::= f i l e c o p y /.$setResult($_FILECOPY);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= o p t i o n a l /.$setResult($_OPTIONAL);./
    Keyword ::= p r e s e r v e /.$setResult($_PRESERVE);./
    Keyword ::= s e n d k e y s /.$setResult($_SENDKEYS);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= c h d r i v e /.$setResult($_CHDRIVE);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE);./
    Keyword ::= d e f b o o l /.$setResult($_DEFBOOL);./
    Keyword ::= d e f b y t e /.$setResult($_DEFBYTE);./
    Keyword ::= d e f d a t e /.$setResult($_DEFDATE);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= n o t h i n g /.$setResult($_NOTHING);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= s e t a t t r /.$setResult($_SETATTR);./
    Keyword ::= v a r i a n t /.$setResult($_VARIANT);./
    Keyword ::= v e r s i o n /.$setResult($_VERSION);./
    Keyword ::= a c c e s s /.$setResult($_ACCESS);./
    Keyword ::= a p p e n d /.$setResult($_APPEND);./
    Keyword ::= b i n a r y /.$setResult($_BINARY);./
    Keyword ::= d e f c u r /.$setResult($_DEFCUR);./
    Keyword ::= d e f d b l /.$setResult($_DEFDBL);./
    Keyword ::= d e f d e c /.$setResult($_DEFDEC);./
    Keyword ::= d e f i n t /.$setResult($_DEFINT);./
    Keyword ::= d e f l n g /.$setResult($_DEFLNG);./
    Keyword ::= d e f o b j /.$setResult($_DEFOBJ);./
    Keyword ::= d e f s n g /.$setResult($_DEFSNG);./
    Keyword ::= d e f s t r /.$setResult($_DEFSTR);./
    Keyword ::= d e f v a r /.$setResult($_DEFVAR);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e l s e i f /.$setResult($_ELSEIF);./
    Keyword ::= f r i e n d /.$setResult($_FRIEND);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT);./
    Keyword ::= o u t p u t /.$setResult($_OUTPUT);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= r a n d o m /.$setResult($_RANDOM);./
    Keyword ::= r e s u m e /.$setResult($_RESUME);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s h a r e d /.$setResult($_SHARED);./
    Keyword ::= s i n g l e /.$setResult($_SINGLE);./
    Keyword ::= s t a t i c /.$setResult($_STATIC);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= t y p e o f /.$setResult($_TYPEOF);./
    Keyword ::= u n l o a d /.$setResult($_UNLOAD);./
    Keyword ::= u n l o c k /.$setResult($_UNLOCK);./
    Keyword ::= a l i a s /.$setResult($_ALIAS);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= b y r e f /.$setResult($_BYREF);./
    Keyword ::= b y v a l /.$setResult($_BYVAL);./
    Keyword ::= c h d i r /.$setResult($_CHDIR);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= c o n s t /.$setResult($_CONST);./
    Keyword ::= e r a s e /.$setResult($_ERASE);./
    Keyword ::= e r r o r /.$setResult($_ERROR);./
    Keyword ::= e v e n t /.$setResult($_EVENT);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= g o s u b /.$setResult($_GOSUB);./
    Keyword ::= i n p u t /.$setResult($_INPUT);./
    Keyword ::= m k d i r /.$setResult($_MKDIR);./
    Keyword ::= p r i n t /.$setResult($_PRINT);./
    Keyword ::= r e d i m /.$setResult($_REDIM);./
    Keyword ::= r e s e t /.$setResult($_RESET);./
    Keyword ::= r m d i r /.$setResult($_RMDIR);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= w i d t h /.$setResult($_WIDTH);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= b e e p /.$setResult($_BEEP);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= e a c h /.$setResult($_EACH);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= k i l l /.$setResult($_KILL);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= l o a d /.$setResult($_LOAD);./
    Keyword ::= l o c k /.$setResult($_LOCK);./
    Keyword ::= l o n g /.$setResult($_LONG);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= l s e t /.$setResult($_LSET);./
    Keyword ::= n a m e /.$setResult($_NAME);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= r s e t /.$setResult($_RSET);./
    Keyword ::= s e e k /.$setResult($_SEEK);./
    Keyword ::= s t e p /.$setResult($_STEP);./
    Keyword ::= s t o p /.$setResult($_STOP);./
    Keyword ::= t e x t /.$setResult($_TEXT);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= w e n d /.$setResult($_WEND);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= d i m /.$setResult($_DIM);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e q v /.$setResult($_EQV);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= g e t /.$setResult($_GET);./
    Keyword ::= i m p /.$setResult($_IMP);./
    Keyword ::= l e n /.$setResult($_LEN);./
    Keyword ::= l e t /.$setResult($_LET);./
    Keyword ::= l i b /.$setResult($_LIB);./
    Keyword ::= m i d /.$setResult($_MID);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= p u t /.$setResult($_PUT);./
    Keyword ::= r e m /.$setResult($_REM);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s p c /.$setResult($_SPC);./
    Keyword ::= s u b /.$setResult($_SUB);./
    Keyword ::= t a b /.$setResult($_TAB);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= m e /.$setResult($_ME);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
