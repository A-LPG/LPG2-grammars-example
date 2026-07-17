-- Keyword filter
%options package=lpg.grammars.teal
%options template=KeywordTemplateF.gi
%options fp=TealKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    LOCAL
    ENUM
    END
    FUNCTION
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= l o c a l /.$setResult($_LOCAL);./
              | e n u m /.$setResult($_ENUM);./
              | e n d /.$setResult($_END);./
              | f u n c t i o n /.$setResult($_FUNCTION);./
%End
