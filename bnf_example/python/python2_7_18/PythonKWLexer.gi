-- Keyword filter for simplified Python 2.7.18 subset
%options package=lpg.grammars.python.python2_7_18
%options template=KeywordTemplateF.gi
%options fp=PythonKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    DEF
    RETURN
    IMPORT
    PRINT
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
    Keyword ::= d e f /.$setResult($_DEF);./
              | r e t u r n /.$setResult($_RETURN);./
              | i m p o r t /.$setResult($_IMPORT);./
              | p r i n t /.$setResult($_PRINT);./
%End
