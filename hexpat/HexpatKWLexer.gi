-- Keyword filter
%options package=lpg.grammars.hexpat
%options template=KeywordTemplateF.gi
%options fp=HexpatKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    STRUCT
    IMPORT
    USING
    U8
    U16
    U32
    U64
    PRAGMA
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
              | i m p o r t /.$setResult($_IMPORT);./
              | u s i n g /.$setResult($_USING);./
              | u 8 /.$setResult($_U8);./
              | u 1 6 /.$setResult($_U16);./
              | u 3 2 /.$setResult($_U32);./
              | u 6 4 /.$setResult($_U64);./
              | p r a g m a /.$setResult($_PRAGMA);./
%End
