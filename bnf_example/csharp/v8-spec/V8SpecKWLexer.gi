-- Keyword filter for C# v8-spec language subset
%options package=lpg.grammars.csharp.v8_spec
%options template=KeywordTemplateF.gi
%options fp=V8SpecKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    CLASS
    INT
    VOID
    STRING_KW
    BOOL
    IF
    ELSE
    RETURN
    TRUE
    FALSE
    NULLLITERAL
    PUBLIC
    STATIC
    NEW
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= c l a s s     /.$setResult($_CLASS);./
              | i n t         /.$setResult($_INT);./
              | v o i d       /.$setResult($_VOID);./
              | s t r i n g   /.$setResult($_STRING_KW);./
              | b o o l       /.$setResult($_BOOL);./
              | i f           /.$setResult($_IF);./
              | e l s e       /.$setResult($_ELSE);./
              | r e t u r n   /.$setResult($_RETURN);./
              | t r u e       /.$setResult($_TRUE);./
              | f a l s e     /.$setResult($_FALSE);./
              | n u l l       /.$setResult($_NULLLITERAL);./
              | p u b l i c   /.$setResult($_PUBLIC);./
              | s t a t i c   /.$setResult($_STATIC);./
              | n e w         /.$setResult($_NEW);./
%End
