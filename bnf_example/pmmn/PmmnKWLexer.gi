-- Keyword filter for PMMN
-- Source: antlr/grammars-v4 pmmn/PMMN.g4 (BSD)

%options package=lpg.grammars.pmmn
%options template=KeywordTemplateF.gi
%options fp=PmmnKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    INC
    DEC
    IF
    ELSE
    WHILE
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= i n c     /.$setResult($_INC);./
              | d e c     /.$setResult($_DEC);./
              | i f       /.$setResult($_IF);./
              | e l s e   /.$setResult($_ELSE);./
              | w h i l e /.$setResult($_WHILE);./
%End
