-- Cypher keywords (case-insensitive, FoldedCase map)
%options package=lpg.grammars.cypher
%options template=KeywordTemplateF.gi
%options fp=CypherKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    CALL YIELD FILTER EXTRACT COUNT ANY NONE SINGLE ALL
    ASC ASCENDING BY CREATE DELETE DESC DESCENDING DETACH EXISTS
    LIMIT MATCH MERGE ON OPTIONAL ORDER REMOVE RETURN SET SKIP_W WHERE
    WITH UNION UNWIND AND AS CONTAINS DISTINCT ENDS IN IS NOT OR STARTS XOR
    FALSE TRUE NULL_W CONSTRAINT DO FOR REQUIRE UNIQUE CASE WHEN THEN ELSE END
    MANDATORY SCALAR OF ADD DROP
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= c a l l /.$setResult($_CALL);./
              | y i e l d /.$setResult($_YIELD);./
              | f i l t e r /.$setResult($_FILTER);./
              | e x t r a c t /.$setResult($_EXTRACT);./
              | c o u n t /.$setResult($_COUNT);./
              | a n y /.$setResult($_ANY);./
              | n o n e /.$setResult($_NONE);./
              | s i n g l e /.$setResult($_SINGLE);./
              | a l l /.$setResult($_ALL);./
              | a s c /.$setResult($_ASC);./
              | a s c e n d i n g /.$setResult($_ASCENDING);./
              | b y /.$setResult($_BY);./
              | c r e a t e /.$setResult($_CREATE);./
              | d e l e t e /.$setResult($_DELETE);./
              | d e s c /.$setResult($_DESC);./
              | d e s c e n d i n g /.$setResult($_DESCENDING);./
              | d e t a c h /.$setResult($_DETACH);./
              | e x i s t s /.$setResult($_EXISTS);./
              | l i m i t /.$setResult($_LIMIT);./
              | m a t c h /.$setResult($_MATCH);./
              | m e r g e /.$setResult($_MERGE);./
              | o n /.$setResult($_ON);./
              | o p t i o n a l /.$setResult($_OPTIONAL);./
              | o r d e r /.$setResult($_ORDER);./
              | r e m o v e /.$setResult($_REMOVE);./
              | r e t u r n /.$setResult($_RETURN);./
              | s e t /.$setResult($_SET);./
              | s k i p /.$setResult($_SKIP_W);./
              | w h e r e /.$setResult($_WHERE);./
              | w i t h /.$setResult($_WITH);./
              | u n i o n /.$setResult($_UNION);./
              | u n w i n d /.$setResult($_UNWIND);./
              | a n d /.$setResult($_AND);./
              | a s /.$setResult($_AS);./
              | c o n t a i n s /.$setResult($_CONTAINS);./
              | d i s t i n c t /.$setResult($_DISTINCT);./
              | e n d s /.$setResult($_ENDS);./
              | i n /.$setResult($_IN);./
              | i s /.$setResult($_IS);./
              | n o t /.$setResult($_NOT);./
              | o r /.$setResult($_OR);./
              | s t a r t s /.$setResult($_STARTS);./
              | x o r /.$setResult($_XOR);./
              | f a l s e /.$setResult($_FALSE);./
              | t r u e /.$setResult($_TRUE);./
              | n u l l /.$setResult($_NULL_W);./
              | c o n s t r a i n t /.$setResult($_CONSTRAINT);./
              | d o /.$setResult($_DO);./
              | f o r /.$setResult($_FOR);./
              | r e q u i r e /.$setResult($_REQUIRE);./
              | u n i q u e /.$setResult($_UNIQUE);./
              | c a s e /.$setResult($_CASE);./
              | w h e n /.$setResult($_WHEN);./
              | t h e n /.$setResult($_THEN);./
              | e l s e /.$setResult($_ELSE);./
              | e n d /.$setResult($_END);./
              | m a n d a t o r y /.$setResult($_MANDATORY);./
              | s c a l a r /.$setResult($_SCALAR);./
              | o f /.$setResult($_OF);./
              | a d d /.$setResult($_ADD);./
              | d r o p /.$setResult($_DROP);./
%End
