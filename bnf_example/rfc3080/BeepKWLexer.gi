-- BEEP keywords
%options package=lpg.grammars.rfc3080
%options template=KeywordTemplateF.gi
%options fp=BeepKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    MSG
    RPY
    ERR
    ANS
    NUL
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= m s g /.$setResult($_MSG);./
              | r p y /.$setResult($_RPY);./
              | e r r /.$setResult($_ERR);./
              | a n s /.$setResult($_ANS);./
              | n u l /.$setResult($_NUL);./
%End
