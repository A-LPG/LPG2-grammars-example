-- Keyword filter
%options package=lpg.grammars.robotwars
%options template=KeywordTemplateF.gi
%options fp=RobotwarsKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    GOSUB
    GOTO
    ENDSUB
    TO
    IF
    R_SPEEDX
    R_SPEEDY
    R_RANDOM
    R_DAMAGE
    R_RADAR
    R_INDEX
    R_SHOT
    R_DATA
    R_AIM
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= g o s u b /.$setResult($_GOSUB);./
              | g o t o /.$setResult($_GOTO);./
              | e n d s u b /.$setResult($_ENDSUB);./
              | t o /.$setResult($_TO);./
              | i f /.$setResult($_IF);./
              | s p e e d x /.$setResult($_R_SPEEDX);./
              | s p e e d y /.$setResult($_R_SPEEDY);./
              | r a n d o m /.$setResult($_R_RANDOM);./
              | d a m a g e /.$setResult($_R_DAMAGE);./
              | r a d a r /.$setResult($_R_RADAR);./
              | i n d e x /.$setResult($_R_INDEX);./
              | s h o t /.$setResult($_R_SHOT);./
              | d a t a /.$setResult($_R_DATA);./
              | a i m /.$setResult($_R_AIM);./
%End
