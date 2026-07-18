-- Keyword filter for AdaAda2012 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.ada.ada2012
%options template=KeywordTemplateF.gi
%options fp=AdaAda2012KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ABORT
    ABS
    ABSTRACT
    ACCEPT_
    ACCESS
    ALIASED
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
    EXCEPTION
    EXIT
    FOR
    FUNCTION
    GENERIC
    GOTO
    IF
    IN
    INTERFACE
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
    OVERRIDING
    PACKAGE
    PRAGMA
    PRIVATE
    PROCEDURE
    PROTECTED
    RAISE
    RANGE_
    RECORD
    REM
    RENAMES
    REQUEUE
    RETURN
    REVERSE
    SELECT
    SEPARATE
    SOME
    SUBTYPE
    SYNCHRONIZED
    TAGGED
    TASK
    TERMINATE
    THEN
    TYPE
    UNTIL
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
    Keyword ::= s y n c h r o n i z e d /.$setResult($_SYNCHRONIZED);./
    Keyword ::= o v e r r i d i n g /.$setResult($_OVERRIDING);./
    Keyword ::= e x c e p t i o n /.$setResult($_EXCEPTION);./
    Keyword ::= i n t e r f a c e /.$setResult($_INTERFACE);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= t e r m i n a t e /.$setResult($_TERMINATE);./
    Keyword ::= a b s t r a c t /.$setResult($_ABSTRACT);./
    Keyword ::= c o n s t a n t /.$setResult($_CONSTANT);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= s e p a r a t e /.$setResult($_SEPARATE);./
    Keyword ::= a l i a s e d /.$setResult($_ALIASED);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE);./
    Keyword ::= g e n e r i c /.$setResult($_GENERIC);./
    Keyword ::= l i m i t e d /.$setResult($_LIMITED);./
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= r e n a m e s /.$setResult($_RENAMES);./
    Keyword ::= r e q u e u e /.$setResult($_REQUEUE);./
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
    Keyword ::= t a g g e d /.$setResult($_TAGGED);./
    Keyword ::= a b o r t /.$setResult($_ABORT);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= d e l a y /.$setResult($_DELAY);./
    Keyword ::= d e l t a /.$setResult($_DELTA);./
    Keyword ::= e l s i f /.$setResult($_ELSIF);./
    Keyword ::= e n t r y /.$setResult($_ENTRY);./
    Keyword ::= r a i s e /.$setResult($_RAISE);./
    Keyword ::= r a n g e /.$setResult($_RANGE_);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= b o d y /.$setResult($_BODY_);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= s o m e /.$setResult($_SOME);./
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
