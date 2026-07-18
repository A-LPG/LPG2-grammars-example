-- Keyword filter for VbaVba71 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.vba.vba7_1
%options template=KeywordTemplateF.gi
%options fp=VbaVba71KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ABS
    ACCESS
    ADDRESSOF
    ALIAS
    AND
    ANY
    APPACTIVATE
    APPEND
    ARRAY
    AS
    ASSERT
    ATTRIBUTE
    BASE
    BEGIN
    BEGINPROPERTY
    BINARY
    BOOLEAN
    BYREF
    BYTE
    BYVAL
    CALL
    CASE
    CBOOL
    CBYTE
    CCUR
    CDATE
    CDBL
    CDEC
    CDECL
    CHDIR
    CHDRIVE
    CINT
    CIRCLE
    CLASS
    CLNG
    CLNGLNG
    CLNGPTR
    CLOSE
    COLLECTION
    COMPARE
    CONST
    CSNG
    CSTR
    CURRENCY
    CVAR
    CVERR
    DATABASE
    DATE
    DEBUG
    DECIMAL
    DECLARE
    DEFBOOL
    DEFBYTE
    DEFCUR
    DEFDATE
    DEFDBL
    DEFDEC
    DEFINT
    DEFLNG
    DEFLNGLNG
    DEFLNGPTR
    DEFOBJ
    DEFSNG
    DEFSTR
    DEFVAR
    DELETESETTING
    DIM
    DO
    DOEVENTS
    DOUBLE
    EACH
    ELSE
    ELSEIF
    EMPTY_X
    END
    ENDIF
    ENDPROPERTY
    ENUM
    EQV
    ERASE
    ERROR
    EVENT
    EXIT
    EXPLICIT
    FALSE
    FILECOPY
    FIX
    FOR
    FRIEND
    FUNCTION
    GET
    GLOBAL
    GO
    GOSUB
    GOTO
    IF
    IMP
    IMPLEMENTS
    IN
    INPUT
    INPUTB
    INT
    INTEGER
    IS
    KILL
    LBOUND
    LEN
    LENB
    LET
    LIB
    LIKE
    LINE
    LINEINPUT
    LOAD
    LOCK
    LONG
    LONGLONG
    LONGPTR
    LOOP
    LSET
    ME
    MID
    MIDB
    MKDIR
    MOD
    MODULE
    NAME
    NEW
    NEXT
    NOT
    NOTHING
    NULL_
    OBJECT
    ON
    OPEN
    OPTION
    OPTIONAL
    OR
    OUTPUT
    PARAMARRAY
    PRESERVE
    PRINT
    PRIVATE
    PROPERTY
    PSET
    PTRSAFE
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
    SCALE
    SEEK
    SELECT
    SENDKEYS
    SET
    SETATTR
    SGN
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
    UBOUND
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
    Keyword ::= d e f l n g l n g /.$setResult($_DEFLNGLNG);./
    Keyword ::= d e f l n g p t r /.$setResult($_DEFLNGPTR);./
    Keyword ::= l i n e i n p u t /.$setResult($_LINEINPUT);./
    Keyword ::= r a n d o m i z e /.$setResult($_RANDOMIZE);./
    Keyword ::= c u r r e n c y /.$setResult($_CURRENCY);./
    Keyword ::= d a t a b a s e /.$setResult($_DATABASE);./
    Keyword ::= d o e v e n t s /.$setResult($_DOEVENTS);./
    Keyword ::= e x p l i c i t /.$setResult($_EXPLICIT);./
    Keyword ::= f i l e c o p y /.$setResult($_FILECOPY);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= l o n g l o n g /.$setResult($_LONGLONG);./
    Keyword ::= o p t i o n a l /.$setResult($_OPTIONAL);./
    Keyword ::= p r e s e r v e /.$setResult($_PRESERVE);./
    Keyword ::= p r o p e r t y /.$setResult($_PROPERTY);./
    Keyword ::= s e n d k e y s /.$setResult($_SENDKEYS);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= c h d r i v e /.$setResult($_CHDRIVE);./
    Keyword ::= c l n g l n g /.$setResult($_CLNGLNG);./
    Keyword ::= c l n g p t r /.$setResult($_CLNGPTR);./
    Keyword ::= c o m p a r e /.$setResult($_COMPARE);./
    Keyword ::= d e c i m a l /.$setResult($_DECIMAL);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE);./
    Keyword ::= d e f b o o l /.$setResult($_DEFBOOL);./
    Keyword ::= d e f b y t e /.$setResult($_DEFBYTE);./
    Keyword ::= d e f d a t e /.$setResult($_DEFDATE);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= l o n g p t r /.$setResult($_LONGPTR);./
    Keyword ::= n o t h i n g /.$setResult($_NOTHING);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= p t r s a f e /.$setResult($_PTRSAFE);./
    Keyword ::= s e t a t t r /.$setResult($_SETATTR);./
    Keyword ::= v a r i a n t /.$setResult($_VARIANT);./
    Keyword ::= v e r s i o n /.$setResult($_VERSION);./
    Keyword ::= a c c e s s /.$setResult($_ACCESS);./
    Keyword ::= a p p e n d /.$setResult($_APPEND);./
    Keyword ::= a s s e r t /.$setResult($_ASSERT);./
    Keyword ::= b i n a r y /.$setResult($_BINARY);./
    Keyword ::= c i r c l e /.$setResult($_CIRCLE);./
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
    Keyword ::= i n p u t b /.$setResult($_INPUTB);./
    Keyword ::= l b o u n d /.$setResult($_LBOUND);./
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT);./
    Keyword ::= o p t i o n /.$setResult($_OPTION);./
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
    Keyword ::= u b o u n d /.$setResult($_UBOUND);./
    Keyword ::= u n l o a d /.$setResult($_UNLOAD);./
    Keyword ::= u n l o c k /.$setResult($_UNLOCK);./
    Keyword ::= a l i a s /.$setResult($_ALIAS);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= b y r e f /.$setResult($_BYREF);./
    Keyword ::= b y v a l /.$setResult($_BYVAL);./
    Keyword ::= c b o o l /.$setResult($_CBOOL);./
    Keyword ::= c b y t e /.$setResult($_CBYTE);./
    Keyword ::= c d a t e /.$setResult($_CDATE);./
    Keyword ::= c d e c l /.$setResult($_CDECL);./
    Keyword ::= c h d i r /.$setResult($_CHDIR);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= c o n s t /.$setResult($_CONST);./
    Keyword ::= c v e r r /.$setResult($_CVERR);./
    Keyword ::= d e b u g /.$setResult($_DEBUG);./
    Keyword ::= e m p t y /.$setResult($_EMPTY_X);./
    Keyword ::= e n d i f /.$setResult($_ENDIF);./
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
    Keyword ::= s c a l e /.$setResult($_SCALE);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= w i d t h /.$setResult($_WIDTH);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= b a s e /.$setResult($_BASE);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c c u r /.$setResult($_CCUR);./
    Keyword ::= c d b l /.$setResult($_CDBL);./
    Keyword ::= c d e c /.$setResult($_CDEC);./
    Keyword ::= c i n t /.$setResult($_CINT);./
    Keyword ::= c l n g /.$setResult($_CLNG);./
    Keyword ::= c s n g /.$setResult($_CSNG);./
    Keyword ::= c s t r /.$setResult($_CSTR);./
    Keyword ::= c v a r /.$setResult($_CVAR);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= e a c h /.$setResult($_EACH);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= k i l l /.$setResult($_KILL);./
    Keyword ::= l e n b /.$setResult($_LENB);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= l i n e /.$setResult($_LINE);./
    Keyword ::= l o a d /.$setResult($_LOAD);./
    Keyword ::= l o c k /.$setResult($_LOCK);./
    Keyword ::= l o n g /.$setResult($_LONG);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= l s e t /.$setResult($_LSET);./
    Keyword ::= m i d b /.$setResult($_MIDB);./
    Keyword ::= n a m e /.$setResult($_NAME);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= p s e t /.$setResult($_PSET);./
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
    Keyword ::= a b s /.$setResult($_ABS);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= d i m /.$setResult($_DIM);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e q v /.$setResult($_EQV);./
    Keyword ::= f i x /.$setResult($_FIX);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= g e t /.$setResult($_GET);./
    Keyword ::= i m p /.$setResult($_IMP);./
    Keyword ::= i n t /.$setResult($_INT);./
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
    Keyword ::= s g n /.$setResult($_SGN);./
    Keyword ::= s p c /.$setResult($_SPC);./
    Keyword ::= s u b /.$setResult($_SUB);./
    Keyword ::= t a b /.$setResult($_TAB);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= g o /.$setResult($_GO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= m e /.$setResult($_ME);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
