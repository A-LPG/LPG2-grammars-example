-- Turing keyword filter
%options package=lpg.grammars.turing
%options template=KeywordTemplateF.gi
%options fp=TuringKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    PUT
    GET
    VAR
    INT
    INT_KW
    REAL
    STRING
    TYPE
    ARRAY
    OF
    RECORD
    PROCEDURE
    FUNCTION
    RESULT
    IF
    THEN
    ELSIF
    ELSE
    END
    LOOP
    EXIT
    WHEN
    CASE
    LABEL
    SKIP
    OPEN
    CLOSE
    CONST
    ASSERT
    BY
    FOR
    DECREASING
    TRUE
    FALSE
    DIV
    MOD
    AND
    OR
    NOT
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= d e c r e a s i n g /.$setResult($_DECREASING);./
              | p r o c e d u r e /.$setResult($_PROCEDURE);./
              | f u n c t i o n /.$setResult($_FUNCTION);./
              | a s s e r t /.$setResult($_ASSERT);./
              | r e c o r d /.$setResult($_RECORD);./
              | r e s u l t /.$setResult($_RESULT);./
              | s t r i n g /.$setResult($_STRING);./
              | f a l s e /.$setResult($_FALSE);./
              | t r u e /.$setResult($_TRUE);./
              | l o o p /.$setResult($_LOOP);./
              | e l s e /.$setResult($_ELSE);./
              | e l s i f /.$setResult($_ELSIF);./
              | e x i t /.$setResult($_EXIT);./
              | t h e n /.$setResult($_THEN);./
              | w h e n /.$setResult($_WHEN);./
              | a r r a y /.$setResult($_ARRAY);./
              | c l o s e /.$setResult($_CLOSE);./
              | c o n s t /.$setResult($_CONST);./
              | l a b e l /.$setResult($_LABEL);./
              | r e a l /.$setResult($_REAL);./
              | s k i p /.$setResult($_SKIP);./
              | t y p e /.$setResult($_TYPE);./
              | c a s e /.$setResult($_CASE);./
              | o p e n /.$setResult($_OPEN);./
              | p u t /.$setResult($_PUT);./
              | g e t /.$setResult($_GET);./
              | v a r /.$setResult($_VAR);./
              | i n t /.$setResult($_INT_KW);./
              | e n d /.$setResult($_END);./
              | i f /.$setResult($_IF);./
              | o f /.$setResult($_OF);./
              | b y /.$setResult($_BY);./
              | f o r /.$setResult($_FOR);./
              | d i v /.$setResult($_DIV);./
              | m o d /.$setResult($_MOD);./
              | a n d /.$setResult($_AND);./
              | n o t /.$setResult($_NOT);./
              | o r /.$setResult($_OR);./
%End
