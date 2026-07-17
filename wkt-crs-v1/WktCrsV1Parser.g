-- WKT CRS v1 Parser (LPG)
%Options la=2
%Options fp=WktCrsV1Parser
%options package=lpg.grammars.wkt_crs_v1
%options template=dtParserTemplateF.gi
%options import_terminals=WktCrsV1Lexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    propsFile
%End
%Rules
    propsFile ::= row_list
    row_list ::= %Empty | row_list propRow
    propRow ::= COMMENT_LINE | epsgDefLine
    epsgDefLine ::= epsgCode EQ wkt
    epsgCode ::= PKEY | NUMBER

    wkt ::= compdcs | projcs | geogcs | vertcs | geoccs | localcs

    compdcs ::= KW_COMPD_CS LPAR name COMMA proj_or_geog COMMA vertcs COMMA authority RPAR
    proj_or_geog ::= projcs | geogcs

    projcs ::= KW_PROJCS LPAR name COMMA geogcs COMMA projection COMMA param_unit_axis_auth RPAR
    param_unit_axis_auth ::= parameter COMMA param_unit_axis_auth
                           | unit COMMA axis_list authority
                           | unit COMMA authority
    axis_list ::= %Empty | axis COMMA axis_list

    geoccs ::= KW_GEOCCS LPAR name COMMA datum COMMA primem COMMA unit COMMA axis_plus authority RPAR
    axis_plus ::= axis COMMA | axis_plus axis COMMA

    geogcs ::= KW_GEOGCS LPAR name COMMA datum COMMA primem COMMA unit geogcs_tail RPAR
    geogcs_tail ::= %Empty | COMMA axis geogcs_tail | COMMA authority

    vertcs ::= KW_VERT_CS LPAR name COMMA vertdatum COMMA unit COMMA axis COMMA authority RPAR
    localcs ::= KW_LOCAL_CS LPAR name COMMA localdatum COMMA unit COMMA axis_plus authority RPAR

    datum ::= KW_DATUM LPAR name COMMA spheroid datum_tail RPAR
    datum_tail ::= %Empty | COMMA towgs84 datum_tail | COMMA authority

    vertdatum ::= KW_VERT_DATUM LPAR name COMMA NUMBER COMMA authority RPAR
    localdatum ::= KW_LOCAL_DATUM LPAR name COMMA NUMBER localdatum_tail RPAR
    localdatum_tail ::= %Empty | COMMA authority

    spheroid ::= KW_SPHEROID LPAR name COMMA NUMBER COMMA NUMBER spheroid_tail RPAR
    spheroid_tail ::= %Empty | COMMA authority

    towgs84 ::= KW_TOWGS84 LPAR NUMBER COMMA NUMBER COMMA NUMBER towgs_tail RPAR
    towgs_tail ::= %Empty | COMMA NUMBER COMMA NUMBER COMMA NUMBER towgs_ppm
    towgs_ppm ::= %Empty | COMMA NUMBER

    authority ::= KW_AUTHORITY LPAR TEXT COMMA TEXT RPAR
    primem ::= KW_PRIMEM LPAR name COMMA NUMBER primem_tail RPAR
    primem_tail ::= %Empty | COMMA authority
    unit ::= KW_UNIT LPAR name COMMA NUMBER unit_tail RPAR
    unit_tail ::= %Empty | COMMA authority
    axis ::= KW_AXIS LPAR name COMMA axisOrient RPAR
    projection ::= KW_PROJECTION LPAR name projection_tail RPAR
    projection_tail ::= %Empty | COMMA authority
    parameter ::= KW_PARAMETER LPAR name COMMA NUMBER RPAR

    axisOrient ::= KW_EAST | KW_WEST | KW_NORTH | KW_SOUTH | KW_NORTH_EAST | KW_NORTH_WEST | KW_UP | KW_DOWN | KW_GEOCENTRIC_X | KW_GEOCENTRIC_Y | KW_GEOCENTRIC_Z | name
    name ::= TEXT
%End
