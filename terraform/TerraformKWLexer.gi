-- Keyword filter
%options package=lpg.grammars.terraform
%options template=KeywordTemplateF.gi
%options fp=TerraformKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    LOCALS
    TRUE
    FALSE
    NULLLITERAL
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= l o c a l s /.$setResult($_LOCALS);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | n u l l /.$setResult($_NULLLITERAL);./
%End
