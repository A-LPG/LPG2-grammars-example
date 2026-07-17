-- Keyword filter for Kotlin language subset
%options package=lpg.grammars.kotlin.kotlin
%options template=KeywordTemplateF.gi
%options fp=KotlinKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    FUN
    VAL
    VAR
    IF
    ELSE
    RETURN
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
    Keyword ::= f u n         /.$setResult($_FUN);./
              | v a l         /.$setResult($_VAL);./
              | v a r         /.$setResult($_VAR);./
              | i f           /.$setResult($_IF);./
              | e l s e       /.$setResult($_ELSE);./
              | r e t u r n   /.$setResult($_RETURN);./
              | t r u e       /.$setResult($_TRUE);./
              | f a l s e     /.$setResult($_FALSE);./
              | n u l l       /.$setResult($_NULLLITERAL);./
%End
