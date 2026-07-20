-- JSON5 keyword filter (lowercase literals)
%options package=lpg.grammars.json5
%options template=KeywordTemplateF.gi
%options fp=Json5KWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    TRUE
    FALSE
    NULLLITERAL
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | n u l l /.$setResult($_NULLLITERAL);./
%End
