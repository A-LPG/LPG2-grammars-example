-- Keyword filter
%options package=lpg.grammars.mps
%options template=KeywordTemplateF.gi
%options fp=MpsKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    NAMEINDICATORCARD
    ROWINDICATORCARD
    COLUMNINDICATORCARD
    RHSINDICATORCARD
    RANGESINDICATORCARD
    BOUNDSINDICATORCARD
    ENDATAINDICATORCARD
    KEYWORDFREE
    BOUND_UP
    BOUND_LO
    BOUND_FX
    BOUND_LI
    BOUND_UI
    BOUND_SC
    BOUND_FR
    BOUND_BV
    BOUND_MI
    BOUND_PL
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= n a m e /.$setResult($_NAMEINDICATORCARD);./
              | r o w s /.$setResult($_ROWINDICATORCARD);./
              | c o l u m n s /.$setResult($_COLUMNINDICATORCARD);./
              | r h s /.$setResult($_RHSINDICATORCARD);./
              | r a n g e s /.$setResult($_RANGESINDICATORCARD);./
              | b o u n d s /.$setResult($_BOUNDSINDICATORCARD);./
              | e n d a t a /.$setResult($_ENDATAINDICATORCARD);./
              | f r e e /.$setResult($_KEYWORDFREE);./
              | u p /.$setResult($_BOUND_UP);./
              | l o /.$setResult($_BOUND_LO);./
              | f x /.$setResult($_BOUND_FX);./
              | l i /.$setResult($_BOUND_LI);./
              | u i /.$setResult($_BOUND_UI);./
              | s c /.$setResult($_BOUND_SC);./
              | f r /.$setResult($_BOUND_FR);./
              | b v /.$setResult($_BOUND_BV);./
              | m i /.$setResult($_BOUND_MI);./
              | p l /.$setResult($_BOUND_PL);./
%End
