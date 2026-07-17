-- Keyword filter
%options package=lpg.grammars.caql
%options template=KeywordTemplateF.gi
%options fp=CaqlKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    AND
    OR
    NOT
    TRUE
    FALSE
    NULL
    FROM
    WHERE
    GROUP
    BY
    AS
    SELECT
    IN
    BETWEEN
    LIKE
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
    0 1 2 3 4 5 6 7 8 9
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
              | n o t /.$setResult($_NOT);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | n u l l /.$setResult($_NULL);./
              | f r o m /.$setResult($_FROM);./
              | w h e r e /.$setResult($_WHERE);./
              | g r o u p /.$setResult($_GROUP);./
              | b y /.$setResult($_BY);./
              | a s /.$setResult($_AS);./
              | s e l e c t /.$setResult($_SELECT);./
              | i n /.$setResult($_IN);./
              | b e t w e e n /.$setResult($_BETWEEN);./
              | l i k e /.$setResult($_LIKE);./
%End
