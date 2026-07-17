-- Keyword filter for Go language subset
%options package=lpg.grammars.golang
%options template=KeywordTemplateF.gi
%options fp=GolangKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    PACKAGE
    FUNC
    VAR
    IF
    ELSE
    RETURN
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
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
              | f u n c       /.$setResult($_FUNC);./
              | v a r         /.$setResult($_VAR);./
              | i f           /.$setResult($_IF);./
              | e l s e       /.$setResult($_ELSE);./
              | r e t u r n   /.$setResult($_RETURN);./
              | t r u e       /.$setResult($_TRUE);./
              | f a l s e     /.$setResult($_FALSE);./
              | n i l         /.$setResult($_NIL);./
%End
