-- Keyword filter for B language.
%options package=lpg.grammars.b
%options template=KeywordTemplateF.gi
%options fp=BKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    AUTO
    EXTRN
    CASE
    IF
    ELSE
    WHILE
    SWITCH
    GOTO
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
    Keyword ::= a u t o /.$setResult($_AUTO);./
              | e x t r n /.$setResult($_EXTRN);./
              | c a s e /.$setResult($_CASE);./
              | i f /.$setResult($_IF);./
              | e l s e /.$setResult($_ELSE);./
              | w h i l e /.$setResult($_WHILE);./
              | s w i t c h /.$setResult($_SWITCH);./
              | g o t o /.$setResult($_GOTO);./
              | r e t u r n /.$setResult($_RETURN);./
%End
