-- Keyword filter
%options package=lpg.grammars.kquery
%options template=KeywordTemplateF.gi
%options fp=KqueryKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    QUERY
    ARRAY
    TRUE
    FALSE
    NULL
    AND
    OR
    NOT
    IN
    AS
    BY
    FROM
    WHERE
    SELECT
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
    Keyword ::= q u e r y /.$setResult($_QUERY);./
              | a r r a y /.$setResult($_ARRAY);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | n u l l /.$setResult($_NULL);./
              | a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
              | n o t /.$setResult($_NOT);./
              | i n /.$setResult($_IN);./
              | a s /.$setResult($_AS);./
              | b y /.$setResult($_BY);./
              | f r o m /.$setResult($_FROM);./
              | w h e r e /.$setResult($_WHERE);./
              | s e l e c t /.$setResult($_SELECT);./
%End
