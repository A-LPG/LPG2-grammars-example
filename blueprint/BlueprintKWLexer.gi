-- Keywords for blueprint
%options package=lpg.grammars.blueprint
%options template=KeywordTemplateF.gi
%options fp=BlueprintKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    TRUE
    FALSE
    SELECT
    ANY
    DEFAULT
    UNSET
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
              | s e l e c t /.$setResult($_SELECT);./
              | a n y /.$setResult($_ANY);./
              | d e f a u l t /.$setResult($_DEFAULT);./
              | u n s e t /.$setResult($_UNSET);./
%End
