-- AUTO-GENERATED from antlr/grammars-v4 wavefront by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=WavefrontParser
%options package=lpg.grammars.wavefront
%options template=dtParserTemplateF.gi
%options import_terminals=WavefrontLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    start_
%End

%Rules
    start_ ::= stmt_list

    stmt_list ::= statement
           | stmt_list statement
           | stmt_list NL
           | NL
           | $empty

    statement ::= vertex
           | vertex_normal
           | vertex_texture
           | points
           | lines
           | faces
           | group
           | object_name
           | material_library
           | use_material



    call ::= FILENAME list_6

    csh ::= FILENAME opt_7 list_8

    vertex ::= V decimal decimal decimal opt_9

    vertex_parameter ::= VP decimal opt_10 opt_11

    vertex_normal ::= VN decimal decimal decimal

    vertex_texture ::= VT decimal opt_12 opt_13

    curve_surface_type ::= CSTYPE opt_14 grp_15

    degree ::= DEG INTEGER opt_16

    basis_matrix ::= BMAT grp_17 list_18

    step ::= STEP INTEGER opt_19

    points ::= P list_20

    lines ::= L list_22

    faces ::= F list_24

    free_form_surface ::= grp_25 list_26 list_30 end

    curve ::= CURV decimal decimal list_31

    curve2d ::= CURV2 INTEGER list_32

    surface ::= SURF decimal decimal decimal decimal list_34

    parameter ::= PARM grp_35 list_36

    end ::= END

    connectivity ::= CON INTEGER decimal decimal INTEGER INTEGER decimal decimal INTEGER

    group ::= G list_44

    smoothing_group ::= S grp_45

    merging_group ::= MG grp_46

    object_name ::= O NAME

    bevel ::= BEVEL grp_47

    color_interpolation ::= C_INTERP grp_48

    dissolve_interpolation ::= D_INTERP grp_49

    level_of_detail ::= LOD INTEGER

    map_library ::= MAPLIB list_50

    use_map ::= USEMAP grp_51

    material_library ::= MTLLIB FILENAME

    use_material ::= USEMTL NAME

    shadow_object ::= SHADOW_OBJ FILENAME

    trace_object ::= TRACE_OBJ FILENAME

    curve_approximation_technique ::= CTECH grp_52

    surface_approximation_technique ::= STECH grp_53

    decimal ::= NUMBER
           | INTEGER
           | DECIMAL

    list_1 ::= $empty | list_1 NL

    list_4 ::= NL | list_4 NL

    grp_3 ::= list_4

    grp_2 ::= statement grp_3

    list_5 ::= grp_2 | list_5 grp_2

    list_6 ::= $empty | list_6 NON_WS

    opt_7 ::= MINUS | $empty

    list_8 ::= $empty | list_8 NON_WS

    opt_9 ::= decimal | $empty

    opt_10 ::= decimal | $empty

    opt_11 ::= decimal | $empty

    opt_12 ::= decimal | $empty

    opt_13 ::= decimal | $empty

    opt_14 ::= RAT | $empty

    grp_15 ::= BMATRIX | BEZIER | BSPLINE | CARDINAL | TAYLOR

    opt_16 ::= INTEGER | $empty

    grp_17 ::= U | V

    list_18 ::= decimal | list_18 decimal

    opt_19 ::= INTEGER | $empty

    list_20 ::= INTEGER | list_20 INTEGER

    grp_21 ::= INTEGER | INTEGER_PAIR

    list_22 ::= grp_21 | list_22 grp_21

    grp_23 ::= INTEGER | INTEGER_PAIR | INTEGER_TRIPLET

    list_24 ::= INTEGER | NUMBER | list_24 INTEGER | list_24 NUMBER

    grp_25 ::= curve | curve2d | surface

    list_26 ::= NL | list_26 NL

    grp_28 ::= parameter

    list_29 ::= NL | list_29 NL

    grp_27 ::= grp_28 list_29

    list_30 ::= $empty | list_30 grp_27

    list_31 ::= INTEGER | list_31 INTEGER

    list_32 ::= INTEGER | list_32 INTEGER

    grp_33 ::= INTEGER | INTEGER_PAIR | INTEGER_TRIPLET

    list_34 ::= grp_33 | list_34 grp_33

    grp_35 ::= U | V

    list_36 ::= decimal | list_36 decimal

    list_43 ::= INTEGER | list_43 INTEGER

    list_44 ::= NAME | list_44 NAME

    grp_45 ::= INTEGER | OFF

    grp_46 ::= INTEGER decimal | OFF

    grp_47 ::= ON | OFF

    grp_48 ::= ON | OFF

    grp_49 ::= ON | OFF

    list_50 ::= FILENAME | list_50 FILENAME

    grp_51 ::= NAME | OFF

    grp_52 ::= CPARM decimal | CSPACE decimal | CURV decimal decimal

    grp_53 ::= CPARMA decimal decimal | CPARMB decimal | CSPACE decimal | CURV decimal decimal

    grp_54 ::= DECIMAL | INTEGER

%End
