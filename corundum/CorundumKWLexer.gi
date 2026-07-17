-- Keyword filter
%options package=lpg.grammars.corundum
%options template=KeywordTemplateF.gi
%options fp=CorundumKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    DEF
    END
    IF
    ELSE
    WHILE
    DO
    TRUE
    FALSE
    NIL
    CLASS
    RETURN
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= d e f /.$setResult($_DEF);./
              | e n d /.$setResult($_END);./
              | i f /.$setResult($_IF);./
              | e l s e /.$setResult($_ELSE);./
              | w h i l e /.$setResult($_WHILE);./
              | d o /.$setResult($_DO);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | n i l /.$setResult($_NIL);./
              | c l a s s /.$setResult($_CLASS);./
              | r e t u r n /.$setResult($_RETURN);./
%End
