-- Keyword filter for ALPACA.
%options package=lpg.grammars.alpaca
%options template=KeywordTemplateF.gi
%options fp=AlpacaKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    STATE
    CLASS
    NEIGHBOURHOOD
    IS
    TO
    WHEN
    ME
    AND
    OR
    XOR
    NOT
    TRUE
    FALSE
    GUESS
    IN
    BEGIN
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= s t a t e /.$setResult($_STATE);./
              | c l a s s /.$setResult($_CLASS);./
              | n e i g h b o u r h o o d /.$setResult($_NEIGHBOURHOOD);./
              | i s /.$setResult($_IS);./
              | t o /.$setResult($_TO);./
              | w h e n /.$setResult($_WHEN);./
              | m e /.$setResult($_ME);./
              | a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
              | x o r /.$setResult($_XOR);./
              | n o t /.$setResult($_NOT);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | g u e s s /.$setResult($_GUESS);./
              | i n /.$setResult($_IN);./
              | b e g i n /.$setResult($_BEGIN);./
%End
