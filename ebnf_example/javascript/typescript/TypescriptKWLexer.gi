-- Keyword filter for TypeScript subset (Java-safe token names)
%options package=lpg.grammars.javascript.typescript
%options template=KeywordTemplateF.gi
%options fp=TypescriptKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    VAR
    LET
    CONST
    FUNCTION
    IF
    ELSE
    RETURN
    TRUE
    FALSE
    NULLLITERAL
    TYPE
    INTERFACE
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= v a r         /.$setResult($_VAR);./
              | l e t         /.$setResult($_LET);./
              | c o n s t     /.$setResult($_CONST);./
              | f u n c t i o n /.$setResult($_FUNCTION);./
              | i f           /.$setResult($_IF);./
              | e l s e       /.$setResult($_ELSE);./
              | r e t u r n   /.$setResult($_RETURN);./
              | t r u e       /.$setResult($_TRUE);./
              | f a l s e     /.$setResult($_FALSE);./
              | n u l l       /.$setResult($_NULLLITERAL);./
              | t y p e       /.$setResult($_TYPE);./
              | i n t e r f a c e /.$setResult($_INTERFACE);./
%End
