-- Keyword filter
%options package=lpg.grammars.wat
%options template=KeywordTemplateF.gi
%options fp=WatKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    MODULE
    FUNC
    EXPORT
    IMPORT
    PARAM
    RESULT
    TYPE
    MEMORY
    TABLE
    I32
    I64
    F32
    F64
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
              | f u n c /.$setResult($_FUNC);./
              | e x p o r t /.$setResult($_EXPORT);./
              | i m p o r t /.$setResult($_IMPORT);./
              | p a r a m /.$setResult($_PARAM);./
              | r e s u l t /.$setResult($_RESULT);./
              | t y p e /.$setResult($_TYPE);./
              | m e m o r y /.$setResult($_MEMORY);./
              | t a b l e /.$setResult($_TABLE);./
              | i 3 2 /.$setResult($_I32);./
              | i 6 4 /.$setResult($_I64);./
              | f 3 2 /.$setResult($_F32);./
              | f 6 4 /.$setResult($_F64);./
%End
