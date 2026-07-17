-- MPS Parser (LPG)
%Options la=2
%Options fp=MpsParser
%options package=lpg.grammars.mps
%options template=dtParserTemplateF.gi
%options import_terminals=MpsLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    modell
%End
%Rules
    modell ::= firstrow rows columns rhs opt_ranges opt_bounds endata
    opt_ranges ::= %Empty | ranges
    opt_bounds ::= %Empty | bounds

    firstrow ::= NAMEINDICATORCARD opt_id opt_free
    opt_id ::= %Empty | IDENTIFIER
    opt_free ::= %Empty | KEYWORDFREE

    rows ::= ROWINDICATORCARD rowdatacard_list
    rowdatacard_list ::= rowdatacard | rowdatacard_list rowdatacard
    rowdatacard ::= IDENTIFIER IDENTIFIER

    columns ::= COLUMNINDICATORCARD columndatacards
    columndatacards ::= col_item | columndatacards col_item
    col_item ::= columndatacard | intblock
    columndatacard ::= IDENTIFIER IDENTIFIER NUMERICALVALUE opt_pair
    opt_pair ::= %Empty | IDENTIFIER NUMERICALVALUE

    rhs ::= RHSINDICATORCARD rhsdatacard_list
    rhsdatacard_list ::= rhsdatacard | rhsdatacard_list rhsdatacard
    rhsdatacard ::= rhs_name IDENTIFIER NUMERICALVALUE opt_pair
    rhs_name ::= IDENTIFIER | RHSINDICATORCARD

    ranges ::= RANGESINDICATORCARD rangesdatacard_list
    rangesdatacard_list ::= rangesdatacard | rangesdatacard_list rangesdatacard
    rangesdatacard ::= ranges_name IDENTIFIER NUMERICALVALUE opt_pair
    ranges_name ::= IDENTIFIER | RANGESINDICATORCARD

    bounds ::= BOUNDSINDICATORCARD boundsdatacard_list
    boundsdatacard_list ::= boundsdatacard | boundsdatacard_list boundsdatacard
    boundsdatacard ::= BOUNDKEY bounds_name IDENTIFIER opt_num
    bounds_name ::= IDENTIFIER | BOUNDSINDICATORCARD
    opt_num ::= %Empty | NUMERICALVALUE
    BOUNDKEY ::= BOUND_UP | BOUND_LO | BOUND_FX | BOUND_LI | BOUND_UI
               | BOUND_SC | BOUND_FR | BOUND_BV | BOUND_MI | BOUND_PL

    intblock ::= startmarker columndatacard_list endmarker
    columndatacard_list ::= columndatacard | columndatacard_list columndatacard
    startmarker ::= IDENTIFIER KEYWORDMARKER STARTMARKER
    endmarker ::= IDENTIFIER KEYWORDMARKER ENDMARKER

    endata ::= ENDATAINDICATORCARD
%End
