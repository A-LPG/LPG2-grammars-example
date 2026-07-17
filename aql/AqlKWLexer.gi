-- Keyword filter
%options package=lpg.grammars.aql
%options template=KeywordTemplateF.gi
%options fp=AqlKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    FOR
    IN
    RETURN
    FILTER
    SORT
    LIMIT
    LET
    COLLECT
    INTO
    KEEP
    WITH
    COUNT
    OPTIONS
    SEARCH
    UPSERT
    INSERT
    UPDATE
    REPLACE
    REMOVE
    DISTINCT
    ASC
    DESC
    AND
    OR
    NOT
    NULL
    TRUE
    FALSE
    LIKE
    OUTBOUND
    INBOUND
    ANY
    GRAPH
    SHORTEST
    PATH
    K_SHORTEST
    PATHS
    PRUNE
    TO
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
    Keyword ::= f o r /.$setResult($_FOR);./
              | i n /.$setResult($_IN);./
              | r e t u r n /.$setResult($_RETURN);./
              | f i l t e r /.$setResult($_FILTER);./
              | s o r t /.$setResult($_SORT);./
              | l i m i t /.$setResult($_LIMIT);./
              | l e t /.$setResult($_LET);./
              | c o l l e c t /.$setResult($_COLLECT);./
              | i n t o /.$setResult($_INTO);./
              | k e e p /.$setResult($_KEEP);./
              | w i t h /.$setResult($_WITH);./
              | c o u n t /.$setResult($_COUNT);./
              | o p t i o n s /.$setResult($_OPTIONS);./
              | s e a r c h /.$setResult($_SEARCH);./
              | u p s e r t /.$setResult($_UPSERT);./
              | i n s e r t /.$setResult($_INSERT);./
              | u p d a t e /.$setResult($_UPDATE);./
              | r e p l a c e /.$setResult($_REPLACE);./
              | r e m o v e /.$setResult($_REMOVE);./
              | d i s t i n c t /.$setResult($_DISTINCT);./
              | a s c /.$setResult($_ASC);./
              | d e s c /.$setResult($_DESC);./
              | a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
              | n o t /.$setResult($_NOT);./
              | n u l l /.$setResult($_NULL);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | l i k e /.$setResult($_LIKE);./
              | o u t b o u n d /.$setResult($_OUTBOUND);./
              | i n b o u n d /.$setResult($_INBOUND);./
              | a n y /.$setResult($_ANY);./
              | g r a p h /.$setResult($_GRAPH);./
              | s h o r t e s t /.$setResult($_SHORTEST);./
              | p a t h /.$setResult($_PATH);./
              | k _ s h o r t e s t /.$setResult($_K_SHORTEST);./
              | p a t h s /.$setResult($_PATHS);./
              | p r u n e /.$setResult($_PRUNE);./
              | t o /.$setResult($_TO);./
%End
