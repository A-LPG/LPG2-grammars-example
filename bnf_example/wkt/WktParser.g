-- WKT Parser (LPG)
%Options la=2
%Options fp=WktParser
%options package=lpg.grammars.wkt
%options template=dtParserTemplateF.gi
%options import_terminals=WktLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    file_
%End
%Rules
    file_ ::= $empty | geometries
    geometries ::= geometry | geometries geometry

    geometry ::= pointGeometry | lineStringGeometry | linearRingGeometry | polygonGeometry
               | triangleGeometry | multiPointGeometry | multiLineStringGeometry
               | multiPolygonGeometry | geometryCollection | circularStringGeometry
               | compoundCurveGeometry | curvePolygonGeometry | multiCurveGeometry
               | multiSurfaceGeometry | polyhedralSurfaceGeometry | tinGeometry

    dim ::= Z | M | ZM

    pointGeometry ::= POINT optDim pointBody
    optDim ::= $empty | dim
    pointBody ::= LPAREN point RPAREN | EMPTY

    lineStringGeometry ::= LINESTRING optDim lineStringText
    linearRingGeometry ::= LINEARRING optDim lineStringText
    polygonGeometry ::= POLYGON optDim polygonText
    triangleGeometry ::= TRIANGLE optDim polygonText
    multiPointGeometry ::= MULTIPOINT optDim multiPointBody
    multiPointBody ::= LPAREN pointOrClosedList RPAREN | EMPTY
    pointOrClosedList ::= pointOrClosed | pointOrClosedList COMMA pointOrClosed
    pointOrClosed ::= point | LPAREN point RPAREN | EMPTY

    multiLineStringGeometry ::= MULTILINESTRING optDim multiLineBody
    multiLineBody ::= LPAREN lineStringList RPAREN | EMPTY
    lineStringList ::= lineStringText | lineStringList COMMA lineStringText

    multiPolygonGeometry ::= MULTIPOLYGON optDim multiPolyBody
    multiPolyBody ::= LPAREN polygonList RPAREN | EMPTY
    polygonList ::= polygonText | polygonList COMMA polygonText

    geometryCollection ::= GEOMETRYCOLLECTION optDim geomCollBody
    geomCollBody ::= LPAREN geomList RPAREN | EMPTY
    geomList ::= geometry | geomList COMMA geometry

    circularStringGeometry ::= CIRCULARSTRING optDim lineStringText
    compoundCurveGeometry ::= COMPOUNDCURVE optDim compoundBody
    compoundBody ::= LPAREN compoundMembers RPAREN | EMPTY
    compoundMembers ::= compoundMember | compoundMembers COMMA compoundMember
    compoundMember ::= lineStringText | circularStringGeometry | clothoidGeometry

    clothoidGeometry ::= CLOTHOID LPAREN ordinate COMMA ordinate COMMA ordinate RPAREN

    curvePolygonGeometry ::= CURVEPOLYGON optDim curvePolyBody
    curvePolyBody ::= LPAREN curveMembers RPAREN | EMPTY
    curveMembers ::= curveMember | curveMembers COMMA curveMember
    curveMember ::= lineStringText | circularStringGeometry | compoundCurveGeometry

    multiCurveGeometry ::= MULTICURVE optDim curvePolyBody
    multiSurfaceGeometry ::= MULTISURFACE optDim multiSurfBody
    multiSurfBody ::= LPAREN surfaceMembers RPAREN | EMPTY
    surfaceMembers ::= surfaceMember | surfaceMembers COMMA surfaceMember
    surfaceMember ::= polygonText | curvePolygonGeometry

    polyhedralSurfaceGeometry ::= POLYHEDRALSURFACE optDim multiPolyBody
    tinGeometry ::= TIN optDim multiPolyBody

    polygonText ::= LPAREN lineStringList RPAREN | EMPTY
    lineStringText ::= LPAREN pointList RPAREN | EMPTY
    pointList ::= point | pointList COMMA point
    point ::= ordinate ordinate | ordinate ordinate ordinate | ordinate ordinate ordinate ordinate
    ordinate ::= NUMBER
               | NAN
               | INF
               | MINUS NUMBER
               | MINUS INF
%End
