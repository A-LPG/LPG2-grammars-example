-- Keyword filter for Oberon (aligned to parser terminal names)
%options package=lpg.grammars.oberon
%options template=KeywordTemplateF.gi
%options fp=OberonKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ARRAY
    BEGIN
    BY
    CARET
    CASE
    CONST
    DIGIT
    DIV
    DO
    DOTDOT
    ELSE
    ELSIF
    END
    FALSE
    FOR
    HASH
    HEXDIGIT
    IDENT
    IF
    IMPORT
    IN
    IS
    MOD
    MODULE
    NIL
    OF
    OR
    PIPE
    POINTER
    PROCEDURE
    RECORD
    REPEAT
    RETURN
    STRING
    THEN
    TILDE
    TO
    TRUE
    TYPE
    UNTIL
    VAR
    WHILE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= h e x d i g i t /.$setResult($_HEXDIGIT);./
    Keyword ::= p o i n t e r /.$setResult($_POINTER);./
    Keyword ::= d o t d o t /.$setResult($_DOTDOT);./
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
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= i d e n t /.$setResult($_IDENT);./
    Keyword ::= t i l d e /.$setResult($_TILDE);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= h a s h /.$setResult($_HASH);./
    Keyword ::= p i p e /.$setResult($_PIPE);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= d i v /.$setResult($_DIV);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= n i l /.$setResult($_NIL);./
    Keyword ::= v a r /.$setResult($_VAR);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
