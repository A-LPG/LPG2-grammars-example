-- Keyword filter
%options package=lpg.grammars.gdscript
%options template=KeywordTemplateF.gi
%options fp=GdscriptKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    VAR
    CONST
    FUNC
    EXTENDS
    RETURN
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= v a r /.$setResult($_VAR);./
              | c o n s t /.$setResult($_CONST);./
              | f u n c /.$setResult($_FUNC);./
              | e x t e n d s /.$setResult($_EXTENDS);./
              | r e t u r n /.$setResult($_RETURN);./
%End
