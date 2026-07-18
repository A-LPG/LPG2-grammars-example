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
    REAL
    STRING_KW
    BOOLEAN
    IF
    THEN
    ELSE
    END
    LOOP
    EXIT
    WHEN
    TRUE
    FALSE
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
              | s t r i n g /.$setResult($_STRING_KW);./
              | f a l s e /.$setResult($_FALSE);./
              | t r u e /.$setResult($_TRUE);./
              | l o o p /.$setResult($_LOOP);./
              | e l s e /.$setResult($_ELSE);./
              | e x i t /.$setResult($_EXIT);./
              | t h e n /.$setResult($_THEN);./
              | w h e n /.$setResult($_WHEN);./
              | r e a l /.$setResult($_REAL);./
              | p u t /.$setResult($_PUT);./
              | g e t /.$setResult($_GET);./
              | v a r /.$setResult($_VAR);./
              | i n t /.$setResult($_INT);./
              | e n d /.$setResult($_END);./
              | i f /.$setResult($_IF);./
%End
