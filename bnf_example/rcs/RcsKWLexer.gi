-- Keyword filter
%options package=lpg.grammars.rcs
%options template=KeywordTemplateF.gi
%options fp=RcsKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    LITERAL_HEAD
    LITERAL_BRANCH
    LITERAL_ACCESS
    LITERAL_SYMBOLS
    LITERAL_LOCKS
    LITERAL_STRICT
    LITERAL_COMMENT
    LITERAL_EXPAND
    LITERAL_DATE
    LITERAL_AUTHOR
    LITERAL_STATE
    LITERAL_BRANCHES
    LITERAL_NEXT
    LITERAL_DESC
    LITERAL_LOG
    LITERAL_TEXT
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= h e a d /.$setResult($_LITERAL_HEAD);./
              | b r a n c h /.$setResult($_LITERAL_BRANCH);./
              | a c c e s s /.$setResult($_LITERAL_ACCESS);./
              | s y m b o l s /.$setResult($_LITERAL_SYMBOLS);./
              | l o c k s /.$setResult($_LITERAL_LOCKS);./
              | s t r i c t /.$setResult($_LITERAL_STRICT);./
              | c o m m e n t /.$setResult($_LITERAL_COMMENT);./
              | e x p a n d /.$setResult($_LITERAL_EXPAND);./
              | d a t e /.$setResult($_LITERAL_DATE);./
              | a u t h o r /.$setResult($_LITERAL_AUTHOR);./
              | s t a t e /.$setResult($_LITERAL_STATE);./
              | b r a n c h e s /.$setResult($_LITERAL_BRANCHES);./
              | n e x t /.$setResult($_LITERAL_NEXT);./
              | d e s c /.$setResult($_LITERAL_DESC);./
              | l o g /.$setResult($_LITERAL_LOG);./
              | t e x t /.$setResult($_LITERAL_TEXT);./
%End
