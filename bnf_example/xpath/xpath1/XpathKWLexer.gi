-- Keyword filter
%options package=lpg.grammars.xpath.xpath1
%options template=KeywordTemplateF.gi
%options fp=XpathKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    AND
    OR
    DIV
    MOD
    KW_COMMENT
    KW_TEXT
    KW_NODE
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    _
    0    1    2    3    4    5    6    7    8    9
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
              | d i v /.$setResult($_DIV);./
              | m o d /.$setResult($_MOD);./
              | c o m m e n t /.$setResult($_KW_COMMENT);./
              | t e x t /.$setResult($_KW_TEXT);./
              | n o d e /.$setResult($_KW_NODE);./
%End
