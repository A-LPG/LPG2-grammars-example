-- Keyword filter
%options package=lpg.grammars.tinybasic
%options template=KeywordTemplateF.gi
%options fp=TinybasicKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    PRINT
    IF
    THEN
    GOTO
    INPUT
    LET
    GOSUB
    RETURN
    CLEAR
    LIST
    RUN
    END
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= p r i n t /.$setResult($_PRINT);./
              | i f /.$setResult($_IF);./
              | t h e n /.$setResult($_THEN);./
              | g o t o /.$setResult($_GOTO);./
              | i n p u t /.$setResult($_INPUT);./
              | l e t /.$setResult($_LET);./
              | g o s u b /.$setResult($_GOSUB);./
              | r e t u r n /.$setResult($_RETURN);./
              | c l e a r /.$setResult($_CLEAR);./
              | l i s t /.$setResult($_LIST);./
              | r u n /.$setResult($_RUN);./
              | e n d /.$setResult($_END);./
%End
