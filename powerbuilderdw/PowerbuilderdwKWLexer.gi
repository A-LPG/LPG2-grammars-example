-- Keyword filter
%options package=lpg.grammars.powerbuilderdw
%options template=KeywordTemplateF.gi
%options fp=PowerbuilderdwKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    DATAWINDOW
    RELEASE
    TABLE
    COLUMN
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= d a t a w i n d o w /.$setResult($_DATAWINDOW);./
              | r e l e a s e /.$setResult($_RELEASE);./
              | t a b l e /.$setResult($_TABLE);./
              | c o l u m n /.$setResult($_COLUMN);./
%End
