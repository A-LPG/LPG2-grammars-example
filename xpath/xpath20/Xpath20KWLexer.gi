-- Keyword filter
%options package=lpg.grammars.xpath.xpath20
%options template=KeywordTemplateF.gi
%options fp=Xpath20KWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    AND
    OR
    MOD
    DIV
    COMMENT
    TEXT
    NODE
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
              | m o d /.$setResult($_MOD);./
              | d i v /.$setResult($_DIV);./
              | c o m m e n t /.$setResult($_COMMENT);./
              | t e x t /.$setResult($_TEXT);./
              | n o d e /.$setResult($_NODE);./
%End
