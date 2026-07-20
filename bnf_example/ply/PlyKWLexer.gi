-- Keyword filter for PlyKWLexer
%options package=lpg.grammars.ply
%options template=KeywordTemplateF.gi
%options fp=PlyKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    PLY
    FORMAT
    ELEMENT
    PROPERTY
    LIST
    END_HEADER
    CHAR
    UCHAR
    SHORT
    USHORT
    INT
    UINT
    FLOAT
    DOUBLE
    FLOAT32
    UINT8
    INT32
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
    Keyword ::= p l y /.$setResult($_PLY);./
              | f o r m a t /.$setResult($_FORMAT);./
              | e l e m e n t /.$setResult($_ELEMENT);./
              | p r o p e r t y /.$setResult($_PROPERTY);./
              | l i s t /.$setResult($_LIST);./
              | e n d _ h e a d e r /.$setResult($_END_HEADER);./
              | c h a r /.$setResult($_CHAR);./
              | u c h a r /.$setResult($_UCHAR);./
              | s h o r t /.$setResult($_SHORT);./
              | u s h o r t /.$setResult($_USHORT);./
              | i n t /.$setResult($_INT);./
              | u i n t /.$setResult($_UINT);./
              | f l o a t /.$setResult($_FLOAT);./
              | d o u b l e /.$setResult($_DOUBLE);./
              | f l o a t 3 2 /.$setResult($_FLOAT32);./
              | u i n t 8 /.$setResult($_UINT8);./
              | i n t 3 2 /.$setResult($_INT32);./
%End
