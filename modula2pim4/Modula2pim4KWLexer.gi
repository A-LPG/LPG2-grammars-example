-- Keyword filter for Modula2pim4 (aligned to parser terminal names)
%options package=lpg.grammars.modula2pim4
%options template=KeywordTemplateF.gi
%options fp=Modula2pim4KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    AND
    ARRAY
    BEGIN
    BY
    CARET
    CASE
    CONST
    DEFINITION
    DIGIT
    DIV
    DO
    DOTDOT
    ELSE
    ELSIF
    END
    EXIT
    EXPORT
    FOR
    FROM
    HASH
    IF
    IMPLEMENTATION
    IMPORT
    IN
    INTEGER
    LOOP
    LTGT
    MOD
    MODULE
    NOT
    OF
    OR
    PIPE
    POINTER
    PROCEDURE
    QUALIFIED
    REAL
    RECORD
    REPEAT
    RETURN
    SET
    STRING
    THEN
    TILDE
    TO
    TYPE
    UNTIL
    VAR
    WHILE
    WITH
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= i m p l e m e n t a t i o n /.$setResult($_IMPLEMENTATION);./
    Keyword ::= d e f i n i t i o n /.$setResult($_DEFINITION);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= q u a l i f i e d /.$setResult($_QUALIFIED);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= p o i n t e r /.$setResult($_POINTER);./
    Keyword ::= d o t d o t /.$setResult($_DOTDOT);./
    Keyword ::= e x p o r t /.$setResult($_EXPORT);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
    Keyword ::= r e c o r d /.$setResult($_RECORD);./
    Keyword ::= r e p e a t /.$setResult($_REPEAT);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= c a r e t /.$setResult($_CARET);./
    Keyword ::= c o n s t /.$setResult($_CONST);./
    Keyword ::= d i g i t /.$setResult($_DIGIT);./
    Keyword ::= e l s i f /.$setResult($_ELSIF);./
    Keyword ::= t i l d e /.$setResult($_TILDE);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= h a s h /.$setResult($_HASH);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= l t g t /.$setResult($_LTGT);./
    Keyword ::= p i p e /.$setResult($_PIPE);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= d i v /.$setResult($_DIV);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= v a r /.$setResult($_VAR);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
