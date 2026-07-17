-- Stub keyword filter (properties has no reserved words; required by LexerTemplateF)
%options package=lpg.grammars.properties
%options template=KeywordTemplateF.gi
%options fp=PropertiesKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    IDENTIFIER
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    _
%End

%Start
    Keyword
%End

%Rules
    -- Intentionally unused; CHARACTER tokens are made directly in the main lexer.
    Keyword ::= z z z_unused_kw /.$setResult($_IDENTIFIER);./
%End
