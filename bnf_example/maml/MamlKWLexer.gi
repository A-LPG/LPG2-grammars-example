-- Keywords for MAML literals
%options package=lpg.grammars.maml
%options template=KeywordTemplateF.gi
%options fp=MamlKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
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
    Keyword ::= t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | n u l l /.$setResult($_NULLLITERAL);./
%End
