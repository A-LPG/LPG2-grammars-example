-- Keyword filter
%options package=lpg.grammars.turing
%options template=KeywordTemplateF.gi
%options fp=TuringKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    PUT
    GET
    VAR
    STRING_KW
    INT_KW
    NAT
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= p u t /.$setResult($_PUT);./
              | g e t /.$setResult($_GET);./
              | v a r /.$setResult($_VAR);./
              | s t r i n g /.$setResult($_STRING_KW);./
              | i n t /.$setResult($_INT_KW);./
              | n a t /.$setResult($_NAT);./
%End
