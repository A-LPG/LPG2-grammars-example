%options package=lpg.grammars.lisa
%options template=KeywordTemplateF.gi
%options fp=LisaKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    DECLARE
    PROGRAM
    GENERATE
    RANDOM
    ENUMERATE
    BREAK
    CONTINUE
    IF
    WHILE
    TRUE
    FALSE
    NEXT
    HASNEXT
    INT
    DFA
    NFA
    REGEX
    BOOL
    STRING_T
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= d e c l a r e /.$setResult($_DECLARE);./
              | p r o g r a m /.$setResult($_PROGRAM);./
              | g e n e r a t e /.$setResult($_GENERATE);./
              | r a n d o m /.$setResult($_RANDOM);./
              | e n u m e r a t e /.$setResult($_ENUMERATE);./
              | b r e a k /.$setResult($_BREAK);./
              | c o n t i n u e /.$setResult($_CONTINUE);./
              | i f /.$setResult($_IF);./
              | w h i l e /.$setResult($_WHILE);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | n e x t /.$setResult($_NEXT);./
              | h a s n e x t /.$setResult($_HASNEXT);./
              | i n t /.$setResult($_INT);./
              | d f a /.$setResult($_DFA);./
              | n f a /.$setResult($_NFA);./
              | r e g e x /.$setResult($_REGEX);./
              | b o o l /.$setResult($_BOOL);./
              | s t r i n g /.$setResult($_STRING_T);./
%End
