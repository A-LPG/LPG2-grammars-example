-- Refal keywords
%options package=lpg.grammars.refal
%options template=KeywordTemplateF.gi
%options fp=RefalKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    ENTRY
    EXTERNAL
    EXTERN
    EXTRN
    SVAR
    TVAR
    EVAR
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    _
    0    1    2    3    4    5    6    7    8    9
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= e n t r y /.$setResult($_ENTRY);./
              | e x t e r n a l /.$setResult($_EXTERNAL);./
              | e x t e r n /.$setResult($_EXTERN);./
              | e x t r n /.$setResult($_EXTRN);./
              | s /.$setResult($_SVAR);./
              | t /.$setResult($_TVAR);./
              | e /.$setResult($_EVAR);./
%End
