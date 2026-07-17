-- Keyword filter
%options package=lpg.grammars.oncrpc
%options template=KeywordTemplateF.gi
%options fp=OncrpcKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    UNSIGNED
    INT
    HYPER
    FLOAT
    DOUBLE
    QUADRUPLE
    BOOL
    ENUM
    STRUCT
    UNION
    SWITCH
    CASE
    DEFAULT
    CONST
    TYPEDEF
    OPAQUE
    STRING_KW
    VOID
    PROGRAM
    VERSION
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= u n s i g n e d /.$setResult($_UNSIGNED);./
              | i n t /.$setResult($_INT);./
              | h y p e r /.$setResult($_HYPER);./
              | f l o a t /.$setResult($_FLOAT);./
              | d o u b l e /.$setResult($_DOUBLE);./
              | q u a d r u p l e /.$setResult($_QUADRUPLE);./
              | b o o l /.$setResult($_BOOL);./
              | e n u m /.$setResult($_ENUM);./
              | s t r u c t /.$setResult($_STRUCT);./
              | u n i o n /.$setResult($_UNION);./
              | s w i t c h /.$setResult($_SWITCH);./
              | c a s e /.$setResult($_CASE);./
              | d e f a u l t /.$setResult($_DEFAULT);./
              | c o n s t /.$setResult($_CONST);./
              | t y p e d e f /.$setResult($_TYPEDEF);./
              | o p a q u e /.$setResult($_OPAQUE);./
              | s t r i n g /.$setResult($_STRING_KW);./
              | v o i d /.$setResult($_VOID);./
              | p r o g r a m /.$setResult($_PROGRAM);./
              | v e r s i o n /.$setResult($_VERSION);./
%End
