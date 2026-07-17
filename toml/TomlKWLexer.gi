-- Keyword filter
%options package=lpg.grammars.toml
%options template=KeywordTemplateF.gi
%options fp=TomlKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
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
    Keyword ::= t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
%End
