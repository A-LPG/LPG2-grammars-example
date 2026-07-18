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
    BREAK
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
              | w h i l e /.$setResult($_WHILE);./
              | b r e a k /.$setResult($_BREAK);./
              | c l a s s /.$setResult($_CLASS);./
              | f a l s e /.$setResult($_FALSE);./
              | e l s e /.$setResult($_ELSE);./
              | t r u e /.$setResult($_TRUE);./
              | n u l l /.$setResult($_NULLLITERAL);./
              | f o r /.$setResult($_FOR);./
              | i f /.$setResult($_IF);./
%End
