%options package=lpg.grammars.esolang.cool
%options template=KeywordTemplateF.gi
%options fp=CoolKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    CLASS
    ELSE
    FI
    IF
    IN
    INHERITS
    ISVOID
    LET
    LOOP
    POOL
    THEN
    WHILE
    CASE
    ESAC
    NEW
    OF
    NOT
    TRUE
    FALSE
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= c l a s s /.$setResult($_CLASS);./
              | e l s e /.$setResult($_ELSE);./
              | f i /.$setResult($_FI);./
              | i f /.$setResult($_IF);./
              | i n /.$setResult($_IN);./
              | i n h e r i t s /.$setResult($_INHERITS);./
              | i s v o i d /.$setResult($_ISVOID);./
              | l e t /.$setResult($_LET);./
              | l o o p /.$setResult($_LOOP);./
              | p o o l /.$setResult($_POOL);./
              | t h e n /.$setResult($_THEN);./
              | w h i l e /.$setResult($_WHILE);./
              | c a s e /.$setResult($_CASE);./
              | e s a c /.$setResult($_ESAC);./
              | n e w /.$setResult($_NEW);./
              | o f /.$setResult($_OF);./
              | n o t /.$setResult($_NOT);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
%End
