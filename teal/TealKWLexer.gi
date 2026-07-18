-- Keyword filter for Teal
%options package=lpg.grammars.teal
%options template=KeywordTemplateF.gi
%options fp=TealKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    LOCAL
    ENUM
    END
    FUNCTION
    IF
    THEN
    ELSE
    ELSEIF
    WHILE
    DO
    FOR
    IN
    REPEAT
    UNTIL
    RETURN
    BREAK
    TRUE
    FALSE
    NIL
    NOT
    AND
    OR
    GLOBAL
    RECORD
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
              | e l s e i f /.$setResult($_ELSEIF);./
              | r e p e a t /.$setResult($_REPEAT);./
              | g l o b a l /.$setResult($_GLOBAL);./
              | r e t u r n /.$setResult($_RETURN);./
              | r e c o r d /.$setResult($_RECORD);./
              | w h i l e /.$setResult($_WHILE);./
              | l o c a l /.$setResult($_LOCAL);./
              | u n t i l /.$setResult($_UNTIL);./
              | b r e a k /.$setResult($_BREAK);./
              | f a l s e /.$setResult($_FALSE);./
              | e l s e /.$setResult($_ELSE);./
              | t h e n /.$setResult($_THEN);./
              | t r u e /.$setResult($_TRUE);./
              | e n u m /.$setResult($_ENUM);./
              | e n d /.$setResult($_END);./
              | f o r /.$setResult($_FOR);./
              | n i l /.$setResult($_NIL);./
              | n o t /.$setResult($_NOT);./
              | a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
              | d o /.$setResult($_DO);./
              | i f /.$setResult($_IF);./
              | i n /.$setResult($_IN);./
%End
