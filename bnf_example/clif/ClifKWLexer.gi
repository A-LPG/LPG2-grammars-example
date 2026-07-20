-- CLIF reserved words (hyphenated cl-* tokens are in main lexer)
%options package=lpg.grammars.clif
%options template=KeywordTemplateF.gi
%options fp=ClifKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    AND OR IFF IF FORALL EXISTS NOT
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
              | i f f /.$setResult($_IFF);./
              | i f /.$setResult($_IF);./
              | f o r a l l /.$setResult($_FORALL);./
              | e x i s t s /.$setResult($_EXISTS);./
              | n o t /.$setResult($_NOT);./
%End
