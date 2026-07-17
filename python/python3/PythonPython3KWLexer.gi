-- Keyword filter for Python3 flat subset (no INDENT/DEDENT)
%options package=lpg.grammars.python.python3
%options template=KeywordTemplateF.gi
%options fp=PythonPython3KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    DEF
    IF
    ELSE
    RETURN
    PASS
    TRUE
    FALSE
    NONE
    AND
    OR
    NOT
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
              | i f /.$setResult($_IF);./
              | e l s e /.$setResult($_ELSE);./
              | r e t u r n /.$setResult($_RETURN);./
              | p a s s /.$setResult($_PASS);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | n o n e /.$setResult($_NONE);./
              | a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
              | n o t /.$setResult($_NOT);./
%End
