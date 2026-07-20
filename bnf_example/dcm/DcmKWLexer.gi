-- DCM keywords (HEADER handled in main lexer)
%options package=lpg.grammars.dcm
%options template=KeywordTemplateF.gi
%options fp=DcmKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    MODULKOPF
    FUNKTIONEN
    END
    FKT
    VARIANTENKODIERUNG
    KRITERIUM
    FESTWERT
    WERT
    TEXTKW
    EINHEIT_W
    LANGNAME
    DISPLAYNAME
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    _
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= m o d u l k o p f /.$setResult($_MODULKOPF);./
              | f u n k t i o n e n /.$setResult($_FUNKTIONEN);./
              | e n d /.$setResult($_END);./
              | f k t /.$setResult($_FKT);./
              | v a r i a n t e n k o d i e r u n g /.$setResult($_VARIANTENKODIERUNG);./
              | k r i t e r i u m /.$setResult($_KRITERIUM);./
              | f e s t w e r t /.$setResult($_FESTWERT);./
              | w e r t /.$setResult($_WERT);./
              | t e x t /.$setResult($_TEXTKW);./
              | e i n h e i t _ w /.$setResult($_EINHEIT_W);./
              | l a n g n a m e /.$setResult($_LANGNAME);./
              | d i s p l a y n a m e /.$setResult($_DISPLAYNAME);./
%End
