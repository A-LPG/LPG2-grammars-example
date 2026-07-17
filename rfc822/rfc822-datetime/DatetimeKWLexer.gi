-- Keyword filter for DatetimeKWLexer
%options package=lpg.grammars.rfc822.rfc822_datetime
%options template=KeywordTemplateF.gi
%options fp=DatetimeKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    MON
    TUE
    WED
    THU
    FRI
    SAT
    SUN
    JAN
    FEB
    MAR
    APR
    MAY
    JUN
    JUL
    AUG
    SEP
    OCT
    NOV
    DEC
    UT
    GMT
    EST
    EDT
    CST
    CDT
    MST
    MDT
    PST
    PDT
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
    Keyword ::= m o n /.$setResult($_MON);./
              | t u e /.$setResult($_TUE);./
              | w e d /.$setResult($_WED);./
              | t h u /.$setResult($_THU);./
              | f r i /.$setResult($_FRI);./
              | s a t /.$setResult($_SAT);./
              | s u n /.$setResult($_SUN);./
              | j a n /.$setResult($_JAN);./
              | f e b /.$setResult($_FEB);./
              | m a r /.$setResult($_MAR);./
              | a p r /.$setResult($_APR);./
              | m a y /.$setResult($_MAY);./
              | j u n /.$setResult($_JUN);./
              | j u l /.$setResult($_JUL);./
              | a u g /.$setResult($_AUG);./
              | s e p /.$setResult($_SEP);./
              | o c t /.$setResult($_OCT);./
              | n o v /.$setResult($_NOV);./
              | d e c /.$setResult($_DEC);./
              | u t /.$setResult($_UT);./
              | g m t /.$setResult($_GMT);./
              | e s t /.$setResult($_EST);./
              | e d t /.$setResult($_EDT);./
              | c s t /.$setResult($_CST);./
              | c d t /.$setResult($_CDT);./
              | m s t /.$setResult($_MST);./
              | m d t /.$setResult($_MDT);./
              | p s t /.$setResult($_PST);./
              | p d t /.$setResult($_PDT);./
%End
