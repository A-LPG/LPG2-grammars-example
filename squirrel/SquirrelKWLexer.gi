-- Keyword filter
%options package=lpg.grammars.squirrel
%options template=KeywordTemplateF.gi
%options fp=SquirrelKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    FUNCTION
    LOCAL
    RETURN
    IF
    ELSE
    WHILE
    FOR
    TRUE
    FALSE
    NULLLITERAL
    CLASS
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
              | l o c a l /.$setResult($_LOCAL);./
              | r e t u r n /.$setResult($_RETURN);./
              | i f /.$setResult($_IF);./
              | e l s e /.$setResult($_ELSE);./
              | w h i l e /.$setResult($_WHILE);./
              | f o r /.$setResult($_FOR);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | n u l l /.$setResult($_NULLLITERAL);./
              | c l a s s /.$setResult($_CLASS);./
%End
