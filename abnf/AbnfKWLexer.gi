-- Dummy keyword filter for ABNF (no real keywords).
-- LexerBasicMapF / LexerTemplateF require a KWLexer; IDENTIFIER default is unused
-- when the main lexer uses makeToken($_IDENTIFIER) instead of checkForKeyWord().
-- Dummy keyword X matches "xxx" which does not appear in ABNF rule names.

%options package=lpg.grammars.abnf
%options template=KeywordTemplateF.gi
%options fp=AbnfKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    X
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= x x x /.$setResult($_X);./
%End
