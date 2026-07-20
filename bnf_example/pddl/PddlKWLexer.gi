-- Keyword filter
%options package=lpg.grammars.pddl
%options template=KeywordTemplateF.gi
%options fp=PddlKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    DEFINE
    DOMAIN
    PROBLEM
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= d e f i n e /.$setResult($_DEFINE);./
              | d o m a i n /.$setResult($_DOMAIN);./
              | p r o b l e m /.$setResult($_PROBLEM);./
%End
