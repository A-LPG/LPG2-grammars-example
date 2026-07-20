-- Keyword filter for Powerbuilderdw (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.powerbuilderdw
%options template=KeywordTemplateF.gi
%options fp=PowerbuilderdwKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ALIAS
    AND
    ANY
    ARGUMENTS
    AUTOINSTANTIATE
    BLOB
    BOOLEAN
    BYTE
    CALL
    CASE
    CATCH
    CHAR
    CHARACTER
    CHOOSE
    CLOSE
    COLUMN
    CONTINUE
    CREATE
    DATETIME
    DATE_TYPE
    DEC
    DECIMAL
    DELETE
    DESCRIBE
    DESCRIPTOR
    DESTROY
    DO
    DOUBLE
    DYNAMIC
    ELSE
    ELSEIF
    END
    EVENT
    EXIT
    FALSE
    FINALLY
    FOR
    FORWARD
    FROM
    FUNCTION
    GLOBAL
    GOTO
    HALT
    IF
    INDIRECT
    INSERT
    INT
    INTEGER
    IS
    LIBRARY
    LOCAL
    LONG
    LONGLONG
    LOOP
    NEXT
    NOT
    NULL_
    ON
    OPEN
    OR
    PBSELECT
    POST
    PRIVATE
    PRIVATEREAD
    PRIVATEWRITE
    PROTECTED
    PROTECTEDREAD
    PROTECTEDWRITE
    PROTOTYPES
    PUBLIC
    READONLY
    REAL
    REF
    RELEASE
    RETRIEVE
    RETURN
    RPCFUNC
    SELECT
    SHARED
    SORT
    STEP
    STRING
    SUBROUTINE
    SUPER
    SYSTEM
    TABLE
    THEN
    THROW
    THROWS
    TIME_TYPE
    TO
    TRIGGER
    TRUE
    TRY
    TYPE
    UINT
    ULONG
    UNSIGNEDINTEGER
    UNSIGNEDLONG
    UNTIL
    UPDATE
    USING
    VARIABLES
    VERSION
    WHILE
    WINDOW
    WITHIN
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= a u t o i n s t a n t i a t e /.$setResult($_AUTOINSTANTIATE);./
    Keyword ::= u n s i g n e d i n t e g e r /.$setResult($_UNSIGNEDINTEGER);./
    Keyword ::= p r o t e c t e d w r i t e /.$setResult($_PROTECTEDWRITE);./
    Keyword ::= p r o t e c t e d r e a d /.$setResult($_PROTECTEDREAD);./
    Keyword ::= p r i v a t e w r i t e /.$setResult($_PRIVATEWRITE);./
    Keyword ::= u n s i g n e d l o n g /.$setResult($_UNSIGNEDLONG);./
    Keyword ::= p r i v a t e r e a d /.$setResult($_PRIVATEREAD);./
    Keyword ::= d e s c r i p t o r /.$setResult($_DESCRIPTOR);./
    Keyword ::= p r o t o t y p e s /.$setResult($_PROTOTYPES);./
    Keyword ::= s u b r o u t i n e /.$setResult($_SUBROUTINE);./
    Keyword ::= a r g u m e n t s /.$setResult($_ARGUMENTS);./
    Keyword ::= c h a r a c t e r /.$setResult($_CHARACTER);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= v a r i a b l e s /.$setResult($_VARIABLES);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= d a t e t i m e /.$setResult($_DATETIME);./
    Keyword ::= d e s c r i b e /.$setResult($_DESCRIBE);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= i n d i r e c t /.$setResult($_INDIRECT);./
    Keyword ::= l o n g l o n g /.$setResult($_LONGLONG);./
    Keyword ::= p b s e l e c t /.$setResult($_PBSELECT);./
    Keyword ::= r e a d o n l y /.$setResult($_READONLY);./
    Keyword ::= r e t r i e v e /.$setResult($_RETRIEVE);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= d e c i m a l /.$setResult($_DECIMAL);./
    Keyword ::= d e s t r o y /.$setResult($_DESTROY);./
    Keyword ::= d y n a m i c /.$setResult($_DYNAMIC);./
    Keyword ::= f i n a l l y /.$setResult($_FINALLY);./
    Keyword ::= f o r w a r d /.$setResult($_FORWARD);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= l i b r a r y /.$setResult($_LIBRARY);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= r e l e a s e /.$setResult($_RELEASE);./
    Keyword ::= r p c f u n c /.$setResult($_RPCFUNC);./
    Keyword ::= t r i g g e r /.$setResult($_TRIGGER);./
    Keyword ::= v e r s i o n /.$setResult($_VERSION);./
    Keyword ::= c h o o s e /.$setResult($_CHOOSE);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e l s e i f /.$setResult($_ELSEIF);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= i n s e r t /.$setResult($_INSERT);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s h a r e d /.$setResult($_SHARED);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= s y s t e m /.$setResult($_SYSTEM);./
    Keyword ::= t h r o w s /.$setResult($_THROWS);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE);./
    Keyword ::= w i n d o w /.$setResult($_WINDOW);./
    Keyword ::= w i t h i n /.$setResult($_WITHIN);./
    Keyword ::= a l i a s /.$setResult($_ALIAS);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= e v e n t /.$setResult($_EVENT);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= l o c a l /.$setResult($_LOCAL);./
    Keyword ::= s u p e r /.$setResult($_SUPER);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= t h r o w /.$setResult($_THROW);./
    Keyword ::= u l o n g /.$setResult($_ULONG);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= b l o b /.$setResult($_BLOB);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= d a t e /.$setResult($_DATE_TYPE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= h a l t /.$setResult($_HALT);./
    Keyword ::= l o n g /.$setResult($_LONG);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= p o s t /.$setResult($_POST);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= s o r t /.$setResult($_SORT);./
    Keyword ::= s t e p /.$setResult($_STEP);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t i m e /.$setResult($_TIME_TYPE);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= u i n t /.$setResult($_UINT);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= d e c /.$setResult($_DEC);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= r e f /.$setResult($_REF);./
    Keyword ::= t r y /.$setResult($_TRY);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
