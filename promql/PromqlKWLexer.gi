-- Keyword filter
%options package=lpg.grammars.promql
%options template=KeywordTemplateF.gi
%options fp=PromqlKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    AND
    OR
    UNLESS
    BY
    WITHOUT
    ON
    IGNORING
    GROUP_LEFT
    GROUP_RIGHT
    OFFSET
    BOOL
    TRUE
    FALSE
    INF
    NAN
    SUM
    MIN
    MAX
    AVG
    GROUP
    STDDEV
    STDVAR
    COUNT
    COUNT_VALUES
    BOTTOMK
    TOPK
    QUANTILE
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
              | u n l e s s /.$setResult($_UNLESS);./
              | b y /.$setResult($_BY);./
              | w i t h o u t /.$setResult($_WITHOUT);./
              | o n /.$setResult($_ON);./
              | i g n o r i n g /.$setResult($_IGNORING);./
              | g r o u p _ l e f t /.$setResult($_GROUP_LEFT);./
              | g r o u p _ r i g h t /.$setResult($_GROUP_RIGHT);./
              | o f f s e t /.$setResult($_OFFSET);./
              | b o o l /.$setResult($_BOOL);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | i n f /.$setResult($_INF);./
              | n a n /.$setResult($_NAN);./
              | s u m /.$setResult($_SUM);./
              | m i n /.$setResult($_MIN);./
              | m a x /.$setResult($_MAX);./
              | a v g /.$setResult($_AVG);./
              | g r o u p /.$setResult($_GROUP);./
              | s t d d e v /.$setResult($_STDDEV);./
              | s t d v a r /.$setResult($_STDVAR);./
              | c o u n t /.$setResult($_COUNT);./
              | c o u n t _ v a l u e s /.$setResult($_COUNT_VALUES);./
              | b o t t o m k /.$setResult($_BOTTOMK);./
              | t o p k /.$setResult($_TOPK);./
              | q u a n t i l e /.$setResult($_QUANTILE);./
%End
