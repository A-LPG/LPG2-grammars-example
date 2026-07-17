-- Keyword filter
%options package=lpg.grammars.elixir
%options template=KeywordTemplateF.gi
%options fp=ElixirKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    DEFMODULE
    DO
    END
    DEF
    TRUE
    FALSE
    NIL
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= d e f m o d u l e /.$setResult($_DEFMODULE);./
              | d o /.$setResult($_DO);./
              | e n d /.$setResult($_END);./
              | d e f /.$setResult($_DEF);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | n i l /.$setResult($_NIL);./
%End
