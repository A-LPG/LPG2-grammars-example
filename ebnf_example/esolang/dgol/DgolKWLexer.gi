-- Keyword filter for DgolKWLexer
%options package=lpg.grammars.esolang.dgol
%options template=KeywordTemplateF.gi
%options fp=DgolKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    USE
    SUBROUTINE
    PROGRAM
    LIBRARY
    END
    LET
    IF
    ELSE
    DO
    CALL
    RETURN
    EXIT
    ZERO
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    _
    0    1    2    3    4    5    6    7    8    9
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= u s e /.$setResult($_USE);./
              | s u b r o u t i n e /.$setResult($_SUBROUTINE);./
              | p r o g r a m /.$setResult($_PROGRAM);./
              | l i b r a r y /.$setResult($_LIBRARY);./
              | e n d /.$setResult($_END);./
              | l e t /.$setResult($_LET);./
              | i f /.$setResult($_IF);./
              | e l s e /.$setResult($_ELSE);./
              | d o /.$setResult($_DO);./
              | c a l l /.$setResult($_CALL);./
              | r e t u r n /.$setResult($_RETURN);./
              | e x i t /.$setResult($_EXIT);./
              | 0 /.$setResult($_ZERO);./
%End
