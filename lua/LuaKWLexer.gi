-- Keyword filter for Lua
-- Source: antlr/grammars-v4 lua (MIT)

%options package=lpg.grammars.lua
%options template=KeywordTemplateF.gi
%options fp=LuaKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    BREAK
    GOTO
    DO
    END
    WHILE
    REPEAT
    UNTIL
    IF
    THEN
    ELSEIF
    ELSE
    FOR
    IN
    FUNCTION
    LOCAL
    RETURN
    NIL
    FALSE
    TRUE
    NOT
    AND
    OR
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= b r e a k /.$setResult($_BREAK);./
              | g o t o /.$setResult($_GOTO);./
              | d o /.$setResult($_DO);./
              | e n d /.$setResult($_END);./
              | w h i l e /.$setResult($_WHILE);./
              | r e p e a t /.$setResult($_REPEAT);./
              | u n t i l /.$setResult($_UNTIL);./
              | i f /.$setResult($_IF);./
              | t h e n /.$setResult($_THEN);./
              | e l s e i f /.$setResult($_ELSEIF);./
              | e l s e /.$setResult($_ELSE);./
              | f o r /.$setResult($_FOR);./
              | i n /.$setResult($_IN);./
              | f u n c t i o n /.$setResult($_FUNCTION);./
              | l o c a l /.$setResult($_LOCAL);./
              | r e t u r n /.$setResult($_RETURN);./
              | n i l /.$setResult($_NIL);./
              | f a l s e /.$setResult($_FALSE);./
              | t r u e /.$setResult($_TRUE);./
              | n o t /.$setResult($_NOT);./
              | a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
%End
