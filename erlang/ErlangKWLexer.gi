-- Keyword filter
%options package=lpg.grammars.erlang
%options template=KeywordTemplateF.gi
%options fp=ErlangKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    MODULE
    EXPORT
    WHEN
    END
    FUN
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
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
              | e x p o r t /.$setResult($_EXPORT);./
              | w h e n /.$setResult($_WHEN);./
              | e n d /.$setResult($_END);./
              | f u n /.$setResult($_FUN);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
%End
