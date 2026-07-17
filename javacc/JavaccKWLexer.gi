-- Keyword filter
%options package=lpg.grammars.javacc
%options template=KeywordTemplateF.gi
%options fp=JavaccKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    PARSER_BEGIN
    PARSER_END
    TOKEN
    SKIP
    CLASS
    VOID
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= p a r s e r _ b e g i n /.$setResult($_PARSER_BEGIN);./
              | p a r s e r _ e n d /.$setResult($_PARSER_END);./
              | t o k e n /.$setResult($_TOKEN);./
              | s k i p /.$setResult($_SKIP);./
              | c l a s s /.$setResult($_CLASS);./
              | v o i d /.$setResult($_VOID);./
%End
