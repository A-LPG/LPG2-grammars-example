-- Keyword filter
%options package=lpg.grammars.capnproto
%options template=KeywordTemplateF.gi
%options fp=CapnprotoKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    STRUCT
    ENUM
    INTERFACE
    CONST
    UNION
    IMPORT
    USING
    VOID
    TRUE
    FALSE
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= s t r u c t /.$setResult($_STRUCT);./
              | e n u m /.$setResult($_ENUM);./
              | i n t e r f a c e /.$setResult($_INTERFACE);./
              | c o n s t /.$setResult($_CONST);./
              | u n i o n /.$setResult($_UNION);./
              | i m p o r t /.$setResult($_IMPORT);./
              | u s i n g /.$setResult($_USING);./
              | v o i d /.$setResult($_VOID);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
%End
