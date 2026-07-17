-- Keyword filter
%options package=lpg.grammars.wren
%options template=KeywordTemplateF.gi
%options fp=WrenKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    CLASS
    VAR
    IF
    ELSE
    WHILE
    FOR
    IN
    RETURN
    TRUE
    FALSE
    NULLLITERAL
    IMPORT
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= c l a s s /.$setResult($_CLASS);./
              | v a r /.$setResult($_VAR);./
              | i f /.$setResult($_IF);./
              | e l s e /.$setResult($_ELSE);./
              | w h i l e /.$setResult($_WHILE);./
              | f o r /.$setResult($_FOR);./
              | i n /.$setResult($_IN);./
              | r e t u r n /.$setResult($_RETURN);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | n u l l /.$setResult($_NULLLITERAL);./
              | i m p o r t /.$setResult($_IMPORT);./
%End
