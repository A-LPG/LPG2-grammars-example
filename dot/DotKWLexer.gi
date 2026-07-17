-- DOT keywords (case-insensitive)
%options package=lpg.grammars.dot
%options template=KeywordTemplateF.gi
%options fp=DotKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    STRICT
    GRAPH
    DIGRAPH
    NODE
    EDGE
    SUBGRAPH
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= s t r i c t /.$setResult($_STRICT);./
              | g r a p h /.$setResult($_GRAPH);./
              | d i g r a p h /.$setResult($_DIGRAPH);./
              | n o d e /.$setResult($_NODE);./
              | e d g e /.$setResult($_EDGE);./
              | s u b g r a p h /.$setResult($_SUBGRAPH);./
%End
