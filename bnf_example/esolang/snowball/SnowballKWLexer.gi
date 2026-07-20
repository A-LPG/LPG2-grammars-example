%options package=lpg.grammars.esolang.snowball
%options template=KeywordTemplateF.gi
%options fp=SnowballKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    STRINGS
    INTEGERS
    BOOLEANS
    ROUTINES
    EXTERNALS
    GROUPINGS
    DEFINE
    AS
    BACKWARDMODE
    OR
    AND
    NOT
    TEST
    TRY
    DO
    FAIL
    GOTO
    GOPAST
    REPEAT
    LOOP
    ATLEAST
    INSERT
    ATTACH
    DELETE
    HOP
    NEXT
    SETMARK
    TOMARK
    ATMARK
    TOLIMIT
    ATLIMIT
    SETLIMIT
    FOR
    BACKWARDS
    REVERSE
    SUBSTRING
    AMONG
    SET
    UNSET
    NON
    TRUE
    FALSE
    MAXINT
    MININT
    CURSOR
    LIMIT
    SIZE
    SIZEOF
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= s t r i n g s /.$setResult($_STRINGS);./
              | i n t e g e r s /.$setResult($_INTEGERS);./
              | b o o l e a n s /.$setResult($_BOOLEANS);./
              | r o u t i n e s /.$setResult($_ROUTINES);./
              | e x t e r n a l s /.$setResult($_EXTERNALS);./
              | g r o u p i n g s /.$setResult($_GROUPINGS);./
              | d e f i n e /.$setResult($_DEFINE);./
              | a s /.$setResult($_AS);./
              | b a c k w a r d m o d e /.$setResult($_BACKWARDMODE);./
              | o r /.$setResult($_OR);./
              | a n d /.$setResult($_AND);./
              | n o t /.$setResult($_NOT);./
              | t e s t /.$setResult($_TEST);./
              | t r y /.$setResult($_TRY);./
              | d o /.$setResult($_DO);./
              | f a i l /.$setResult($_FAIL);./
              | g o t o /.$setResult($_GOTO);./
              | g o p a s t /.$setResult($_GOPAST);./
              | r e p e a t /.$setResult($_REPEAT);./
              | l o o p /.$setResult($_LOOP);./
              | a t l e a s t /.$setResult($_ATLEAST);./
              | i n s e r t /.$setResult($_INSERT);./
              | a t t a c h /.$setResult($_ATTACH);./
              | d e l e t e /.$setResult($_DELETE);./
              | h o p /.$setResult($_HOP);./
              | n e x t /.$setResult($_NEXT);./
              | s e t m a r k /.$setResult($_SETMARK);./
              | t o m a r k /.$setResult($_TOMARK);./
              | a t m a r k /.$setResult($_ATMARK);./
              | t o l i m i t /.$setResult($_TOLIMIT);./
              | a t l i m i t /.$setResult($_ATLIMIT);./
              | s e t l i m i t /.$setResult($_SETLIMIT);./
              | f o r /.$setResult($_FOR);./
              | b a c k w a r d s /.$setResult($_BACKWARDS);./
              | r e v e r s e /.$setResult($_REVERSE);./
              | s u b s t r i n g /.$setResult($_SUBSTRING);./
              | a m o n g /.$setResult($_AMONG);./
              | s e t /.$setResult($_SET);./
              | u n s e t /.$setResult($_UNSET);./
              | n o n /.$setResult($_NON);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | m a x i n t /.$setResult($_MAXINT);./
              | m i n i n t /.$setResult($_MININT);./
              | c u r s o r /.$setResult($_CURSOR);./
              | l i m i t /.$setResult($_LIMIT);./
              | s i z e /.$setResult($_SIZE);./
              | s i z e o f /.$setResult($_SIZEOF);./
%End
