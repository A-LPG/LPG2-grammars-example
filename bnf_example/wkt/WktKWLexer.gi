-- Keyword filter
%options package=lpg.grammars.wkt
%options template=KeywordTemplateF.gi
%options fp=WktKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    POINT
    LINESTRING
    LINEARRING
    POLYGON
    TRIANGLE
    MULTIPOINT
    MULTILINESTRING
    MULTIPOLYGON
    GEOMETRYCOLLECTION
    CIRCULARSTRING
    COMPOUNDCURVE
    CLOTHOID
    CURVEPOLYGON
    MULTICURVE
    MULTISURFACE
    POLYHEDRALSURFACE
    TIN
    EMPTY
    NAN
    INF
    ZM
    Z
    M
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
    Keyword ::= p o i n t /.$setResult($_POINT);./
              | l i n e s t r i n g /.$setResult($_LINESTRING);./
              | l i n e a r r i n g /.$setResult($_LINEARRING);./
              | p o l y g o n /.$setResult($_POLYGON);./
              | t r i a n g l e /.$setResult($_TRIANGLE);./
              | m u l t i p o i n t /.$setResult($_MULTIPOINT);./
              | m u l t i l i n e s t r i n g /.$setResult($_MULTILINESTRING);./
              | m u l t i p o l y g o n /.$setResult($_MULTIPOLYGON);./
              | g e o m e t r y c o l l e c t i o n /.$setResult($_GEOMETRYCOLLECTION);./
              | c i r c u l a r s t r i n g /.$setResult($_CIRCULARSTRING);./
              | c o m p o u n d c u r v e /.$setResult($_COMPOUNDCURVE);./
              | c l o t h o i d /.$setResult($_CLOTHOID);./
              | c u r v e p o l y g o n /.$setResult($_CURVEPOLYGON);./
              | m u l t i c u r v e /.$setResult($_MULTICURVE);./
              | m u l t i s u r f a c e /.$setResult($_MULTISURFACE);./
              | p o l y h e d r a l s u r f a c e /.$setResult($_POLYHEDRALSURFACE);./
              | t i n /.$setResult($_TIN);./
              | e m p t y /.$setResult($_EMPTY);./
              | n a n /.$setResult($_NAN);./
              | i n f /.$setResult($_INF);./
              | z m /.$setResult($_ZM);./
              | z /.$setResult($_Z);./
              | m /.$setResult($_M);./
%End
