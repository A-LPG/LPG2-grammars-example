-- Keyword filter
%options package=lpg.grammars.sparql
%options template=KeywordTemplateF.gi
%options fp=SparqlKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    BASE
    PREFIX
    SELECT
    DISTINCT
    REDUCED
    CONSTRUCT
    DESCRIBE
    ASK
    FROM
    NAMED
    WHERE
    GROUP
    BY
    HAVING
    ORDER
    ASC
    DESC
    LIMIT
    OFFSET
    VALUES
    OPTIONAL
    GRAPH
    UNION
    KW_MINUS
    FILTER
    BIND
    SERVICE
    SILENT
    A
    TRUE
    FALSE
    IN
    NOT
    AS
    EXISTS
    SEPARATOR
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
    Keyword ::= b a s e /.$setResult($_BASE);./
              | p r e f i x /.$setResult($_PREFIX);./
              | s e l e c t /.$setResult($_SELECT);./
              | d i s t i n c t /.$setResult($_DISTINCT);./
              | r e d u c e d /.$setResult($_REDUCED);./
              | c o n s t r u c t /.$setResult($_CONSTRUCT);./
              | d e s c r i b e /.$setResult($_DESCRIBE);./
              | a s k /.$setResult($_ASK);./
              | f r o m /.$setResult($_FROM);./
              | n a m e d /.$setResult($_NAMED);./
              | w h e r e /.$setResult($_WHERE);./
              | g r o u p /.$setResult($_GROUP);./
              | b y /.$setResult($_BY);./
              | h a v i n g /.$setResult($_HAVING);./
              | o r d e r /.$setResult($_ORDER);./
              | a s c /.$setResult($_ASC);./
              | d e s c /.$setResult($_DESC);./
              | l i m i t /.$setResult($_LIMIT);./
              | o f f s e t /.$setResult($_OFFSET);./
              | v a l u e s /.$setResult($_VALUES);./
              | o p t i o n a l /.$setResult($_OPTIONAL);./
              | g r a p h /.$setResult($_GRAPH);./
              | u n i o n /.$setResult($_UNION);./
              | m i n u s /.$setResult($_KW_MINUS);./
              | f i l t e r /.$setResult($_FILTER);./
              | b i n d /.$setResult($_BIND);./
              | s e r v i c e /.$setResult($_SERVICE);./
              | s i l e n t /.$setResult($_SILENT);./
              | a /.$setResult($_A);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | i n /.$setResult($_IN);./
              | n o t /.$setResult($_NOT);./
              | a s /.$setResult($_AS);./
              | e x i s t s /.$setResult($_EXISTS);./
              | s e p a r a t o r /.$setResult($_SEPARATOR);./
%End
