-- Keyword filter for semver pre-release tags (case-insensitive)
%options package=lpg.grammars.semver
%options template=KeywordTemplateF.gi
%options fp=SemverKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ALPHA
    BETA
    RC
    SNAPSHOT
    PREVIEW
    DEV
    MILESTONE
    DAILY
    NIGHTLY
    BUILD
    TEST
    EXPERIMENTAL
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= a l p h a /.$setResult($_ALPHA);./
              | b e t a /.$setResult($_BETA);./
              | r c /.$setResult($_RC);./
              | s n a p s h o t /.$setResult($_SNAPSHOT);./
              | p r e /.$setResult($_PREVIEW);./
              | p r e v i e w /.$setResult($_PREVIEW);./
              | d e v /.$setResult($_DEV);./
              | d e v e l /.$setResult($_DEV);./
              | d e v e l o p m e n t /.$setResult($_DEV);./
              | m t /.$setResult($_MILESTONE);./
              | m i l e s t o n e /.$setResult($_MILESTONE);./
              | d a i l y /.$setResult($_DAILY);./
              | n i g h t l y /.$setResult($_NIGHTLY);./
              | b l d /.$setResult($_BUILD);./
              | b u i l d /.$setResult($_BUILD);./
              | t e s t /.$setResult($_TEST);./
              | e x p e r i m e n t a l /.$setResult($_EXPERIMENTAL);./
%End
