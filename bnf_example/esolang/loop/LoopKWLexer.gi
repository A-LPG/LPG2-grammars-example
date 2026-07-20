-- Keyword filter for LOOP / DO / END

%options package=lpg.grammars.loop
%options template=KeywordTemplateF.gi
%options fp=LoopKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    LOOP
    DO
    END
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= l o o p /.$setResult($_LOOP);./
              | d o     /.$setResult($_DO);./
              | e n d   /.$setResult($_END);./
%End
