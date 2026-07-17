-- Keyword filter
%options package=lpg.grammars.esolang.sickbay
%options template=KeywordTemplateF.gi
%options fp=SickbayKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    LET
    GOTO
    GOSUB
    RETURN
    END
    PRINT
    PROLONG
    CUTSHORT
    DIM
    RING
    INPUT
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= l e t /.$setResult($_LET);./
              | g o t o /.$setResult($_GOTO);./
              | g o s u b /.$setResult($_GOSUB);./
              | r e t u r n /.$setResult($_RETURN);./
              | e n d /.$setResult($_END);./
              | p r i n t /.$setResult($_PRINT);./
              | p r o l o n g /.$setResult($_PROLONG);./
              | c u t s h o r t /.$setResult($_CUTSHORT);./
              | d i m /.$setResult($_DIM);./
              | r i n g /.$setResult($_RING);./
              | i n p u t /.$setResult($_INPUT);./
%End
