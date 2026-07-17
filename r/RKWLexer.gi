-- R keyword filter (case-sensitive)
%options package=lpg.grammars.r
%options template=KeywordTemplateF.gi
%options fp=RKWLexer
%Include
    KWLexerMapF.gi
%End
%Export
    KW_FUNCTION
    KW_REPEAT
    KW_WHILE
    KW_BREAK
    KW_FALSE
    KW_TRUE
    KW_ELSE
    KW_NEXT
    KW_NULL
    KW_FOR
    KW_NAN
    KW_INF
    KW_NA
    KW_IF
    KW_IN
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    A    B    C    D    E    F    G    H    I    J    K    L    M
    N    O    P    Q    R    S    T    U    V    W    X    Y    Z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= f u n c t i o n /.$setResult($_KW_FUNCTION);./
              | r e p e a t /.$setResult($_KW_REPEAT);./
              | w h i l e /.$setResult($_KW_WHILE);./
              | b r e a k /.$setResult($_KW_BREAK);./
              | F A L S E /.$setResult($_KW_FALSE);./
              | T R U E /.$setResult($_KW_TRUE);./
              | e l s e /.$setResult($_KW_ELSE);./
              | n e x t /.$setResult($_KW_NEXT);./
              | N U L L /.$setResult($_KW_NULL);./
              | f o r /.$setResult($_KW_FOR);./
              | N a N /.$setResult($_KW_NAN);./
              | I n f /.$setResult($_KW_INF);./
              | i n f /.$setResult($_KW_INF);./
              | N A /.$setResult($_KW_NA);./
              | i f /.$setResult($_KW_IF);./
              | i n /.$setResult($_KW_IN);./
%End
