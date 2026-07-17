-- Keyword filter
%options package=lpg.grammars.modelica
%options template=KeywordTemplateF.gi
%options fp=ModelicaKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    MODEL
    END
    CLASS
    PACKAGE
    REAL
    PARAMETER
    EQUATION
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= m o d e l /.$setResult($_MODEL);./
              | e n d /.$setResult($_END);./
              | c l a s s /.$setResult($_CLASS);./
              | p a c k a g e /.$setResult($_PACKAGE);./
              | r e a l /.$setResult($_REAL);./
              | p a r a m e t e r /.$setResult($_PARAMETER);./
              | e q u a t i o n /.$setResult($_EQUATION);./
%End
