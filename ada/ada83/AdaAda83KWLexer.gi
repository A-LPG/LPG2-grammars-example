-- Keyword filter for AdaAda83 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.ada.ada83
%options template=KeywordTemplateF.gi
%options fp=AdaAda83KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ABORT
    ABS
    ACCEPT_
    ACCESS
    ALL
    AND
    ARRAY
    AT
    BEGIN
    BODY_
    CASE
    CONSTANT
    DECLARE
    DELAY
    DELTA
    DIGITS
    DO
    ELSE
    ELSIF
    END
    ENTRY
    EXCEPTION_
    EXIT
    FOR
    FUNCTION
    GENERIC
    GOTO
    IF
    IN
    IS
    LIMITED
    LOOP
    MOD
    NEW
    NOT
    NULL_
    OF
    OR
    OTHERS
    OUT
    PACKAGE
    PRAGMA
    PRIVATE
    PROCEDURE
    RAISE
    RANGE_
    RECORD
    REM
    RENAMES
    RETURN
    REVERSE
    SELECT
    SEPARATE
    SUBTYPE
    TASK
    TERMINATE
    THEN
    TYPE
    USE
    WHEN
    WHILE
    WITH
    XOR
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= e x c e p t i o n /.$setResult($_EXCEPTION_);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= t e r m i n a t e /.$setResult($_TERMINATE);./
    Keyword ::= c o n s t a n t /.$setResult($_CONSTANT);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= s e p a r a t e /.$setResult($_SEPARATE);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE);./
    Keyword ::= g e n e r i c /.$setResult($_GENERIC);./
    Keyword ::= l i m i t e d /.$setResult($_LIMITED);./
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= r e n a m e s /.$setResult($_RENAMES);./
    Keyword ::= r e v e r s e /.$setResult($_REVERSE);./
    Keyword ::= s u b t y p e /.$setResult($_SUBTYPE);./
    Keyword ::= a c c e p t /.$setResult($_ACCEPT_);./
    Keyword ::= a c c e s s /.$setResult($_ACCESS);./
    Keyword ::= d i g i t s /.$setResult($_DIGITS);./
    Keyword ::= o t h e r s /.$setResult($_OTHERS);./
    Keyword ::= p r a g m a /.$setResult($_PRAGMA);./
    Keyword ::= r e c o r d /.$setResult($_RECORD);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= a b o r t /.$setResult($_ABORT);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= d e l a y /.$setResult($_DELAY);./
    Keyword ::= d e l t a /.$setResult($_DELTA);./
    Keyword ::= e l s i f /.$setResult($_ELSIF);./
    Keyword ::= e n t r y /.$setResult($_ENTRY);./
    Keyword ::= r a i s e /.$setResult($_RAISE);./
    Keyword ::= r a n g e /.$setResult($_RANGE_);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= b o d y /.$setResult($_BODY_);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= t a s k /.$setResult($_TASK);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= a b s /.$setResult($_ABS);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= r e m /.$setResult($_REM);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o r /.$setResult($_OR);./
%End
