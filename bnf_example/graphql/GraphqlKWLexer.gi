-- Keyword filter
%options package=lpg.grammars.graphql
%options template=KeywordTemplateF.gi
%options fp=GraphqlKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    QUERY
    MUTATION
    SUBSCRIPTION
    FRAGMENT
    ON
    TRUE
    FALSE
    NULLLITERAL
    SCHEMA
    EXTEND
    SCALAR
    TYPE
    INTERFACE
    UNION
    ENUM
    INPUT
    DIRECTIVE
    IMPLEMENTS
    REPEATABLE
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= q u e r y /.$setResult($_QUERY);./
              | m u t a t i o n /.$setResult($_MUTATION);./
              | s u b s c r i p t i o n /.$setResult($_SUBSCRIPTION);./
              | f r a g m e n t /.$setResult($_FRAGMENT);./
              | o n /.$setResult($_ON);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | n u l l /.$setResult($_NULLLITERAL);./
              | s c h e m a /.$setResult($_SCHEMA);./
              | e x t e n d /.$setResult($_EXTEND);./
              | s c a l a r /.$setResult($_SCALAR);./
              | t y p e /.$setResult($_TYPE);./
              | i n t e r f a c e /.$setResult($_INTERFACE);./
              | u n i o n /.$setResult($_UNION);./
              | e n u m /.$setResult($_ENUM);./
              | i n p u t /.$setResult($_INPUT);./
              | d i r e c t i v e /.$setResult($_DIRECTIVE);./
              | i m p l e m e n t s /.$setResult($_IMPLEMENTS);./
              | r e p e a t a b l e /.$setResult($_REPEATABLE);./
%End
