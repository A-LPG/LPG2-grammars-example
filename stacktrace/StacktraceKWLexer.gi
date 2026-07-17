-- Stacktrace keywords
%options package=lpg.grammars.stacktrace
%options template=KeywordTemplateF.gi
%options fp=StacktraceKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    AT
    MORE_
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= a t /.$setResult($_AT);./
              | m o r e /.$setResult($_MORE_);./
%End
