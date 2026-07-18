-- Keyword filter for curated C subset
%options package=lpg.grammars.c
%options template=KeywordTemplateF.gi
%options fp=CKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    INT
    VOID
    CHAR
    IF
    ELSE
    While
    Do
    For
    RETURN
    EXTERN
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
    Keyword ::= i n t /.$setResult($_INT);./
              | v o i d /.$setResult($_VOID);./
              | c h a r /.$setResult($_CHAR);./
              | i f /.$setResult($_IF);./
              | e l s e /.$setResult($_ELSE);./
              | w h i l e /.$setResult($_While);./
              | d o /.$setResult($_Do);./
              | f o r /.$setResult($_For);./
              | r e t u r n /.$setResult($_RETURN);./
              | e x t e r n /.$setResult($_EXTERN);./
%End
