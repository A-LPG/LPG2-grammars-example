-- Keyword filter for Pascal (aligned to parser terminal names)
%options package=lpg.grammars.pascal
%options template=KeywordTemplateF.gi
%options fp=PascalKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    AND
    ARRAY
    AT
    BEGIN
    BOOLEAN
    CASE
    CHAR
    CHR
    CONST
    DO
    DOTDOT
    DOWNTO
    ELSE
    END
    FALSE
    FILE
    FOR
    FUNCTION
    GE
    GOTO
    IF
    IMPLEMENTATION
    IN
    INTEGER
    INTERFACE
    LABEL
    LBRACK
    LE
    NIL
    NOT
    OF
    OR
    PACKED
    PERCENT
    POINTER
    PROCEDURE
    PROGRAM
    RBRACK
    REAL
    RECORD
    REPEAT
    SET
    STRING
    THEN
    TO
    TRUE
    TYPE
    UNIT
    UNTIL
    USES
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
    Keyword ::= i n t e r f a c e /.$setResult($_INTERFACE);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= p o i n t e r /.$setResult($_POINTER);./
    Keyword ::= p r o g r a m /.$setResult($_PROGRAM);./
    Keyword ::= d o t d o t /.$setResult($_DOTDOT);./
    Keyword ::= d o w n t o /.$setResult($_DOWNTO);./
    Keyword ::= l b r a c k /.$setResult($_LBRACK);./
    Keyword ::= p a c k e d /.$setResult($_PACKED);./
    Keyword ::= r b r a c k /.$setResult($_RBRACK);./
    Keyword ::= r e c o r d /.$setResult($_RECORD);./
    Keyword ::= r e p e a t /.$setResult($_REPEAT);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= c o n s t /.$setResult($_CONST);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= l a b e l /.$setResult($_LABEL);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= f i l e /.$setResult($_FILE);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= u n i t /.$setResult($_UNIT);./
    Keyword ::= u s e s /.$setResult($_USES);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= c h r /.$setResult($_CHR);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= n i l /.$setResult($_NIL);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= v a r /.$setResult($_VAR);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= g e /.$setResult($_GE);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= l e /.$setResult($_LE);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
