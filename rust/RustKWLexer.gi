-- Keyword filter for Rust language subset
%options package=lpg.grammars.rust
%options template=KeywordTemplateF.gi
%options fp=RustKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    FN
    LET
    MUT
    IF
    ELSE
    RETURN
    TRUE
    FALSE
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
    Keyword ::= f n /.$setResult($_FN);./
              | l e t /.$setResult($_LET);./
              | m u t /.$setResult($_MUT);./
              | i f /.$setResult($_IF);./
              | e l s e /.$setResult($_ELSE);./
              | r e t u r n /.$setResult($_RETURN);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
%End
