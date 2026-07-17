-- Keyword filter
%options package=lpg.grammars.spl
%options template=KeywordTemplateF.gi
%options fp=SplKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    SEARCH
    WHERE
    STATS
    BY
    AS
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= s e a r c h /.$setResult($_SEARCH);./
              | w h e r e /.$setResult($_WHERE);./
              | s t a t s /.$setResult($_STATS);./
              | b y /.$setResult($_BY);./
              | a s /.$setResult($_AS);./
%End
