-- LIMITATION: INDENT/DEDENT are optional ($empty); lexer does not track indentation.
-- NEWLINE is significant; curated examples avoid indent-sensitive suites where needed.
-- AUTO-GENERATED from antlr/grammars-v4 python/python2 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=PythonPython2Parser
%options package=lpg.grammars.python.python2
%options template=dtParserTemplateF.gi
%options import_terminals=PythonPython2Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    file_input
%End

%Rules
    file_input ::= l2x

    eval_input ::= testlist l3x

    decorator ::= AT dotted_name o6x NEWLINE

    decorators ::= l7x

    decorated ::= decorators g8x

    funcdef ::= DEF IDENTIFIER parameters COLON suite

    parameters ::= LPAREN o9x RPAREN

    varargslist ::= g10x

    fpdef ::= IDENTIFIER
           | LPAREN fplist RPAREN

    fplist ::= fpdef l26x o27x

    stmt ::= simple_stmt
           | compound_stmt

    simple_stmt ::= small_stmt l29x o30x NEWLINE

    small_stmt ::= g31x

    expr_stmt ::= testlist g32x

    augassign ::= g37x

    print_stmt ::= IDENTIFIER g38x

    del_stmt ::= DEL exprlist

    pass_stmt ::= PASS

    flow_stmt ::= break_stmt
           | continue_stmt
           | return_stmt
           | raise_stmt
           | yield_stmt

    break_stmt ::= BREAK

    continue_stmt ::= CONTINUE

    return_stmt ::= RETURN o49x

    yield_stmt ::= yield_expr

    raise_stmt ::= RAISE o55x

    import_stmt ::= import_name
           | import_from

    import_name ::= IMPORT dotted_as_names

    import_from ::= g56x

    import_as_name ::= IDENTIFIER o62x

    dotted_as_name ::= dotted_name o64x

    import_as_names ::= import_as_name l66x o67x

    dotted_as_names ::= dotted_as_name l69x

    dotted_name ::= IDENTIFIER l71x

    global_stmt ::= GLOBAL IDENTIFIER l73x

    exec_stmt ::= EXEC expr o77x

    assert_stmt ::= ASSERT test o79x

    compound_stmt ::= if_stmt
           | while_stmt
           | for_stmt
           | try_stmt
           | with_stmt
           | funcdef
           | classdef
           | decorated

    if_stmt ::= IF test COLON suite l81x o83x

    while_stmt ::= WHILE test COLON suite o85x

    for_stmt ::= FOR exprlist IN testlist COLON suite o87x

    try_stmt ::= g88x

    with_stmt ::= WITH with_item l97x COLON suite

    with_item ::= test o99x

    except_clause ::= EXCEPT o104x

    suite ::= simple_stmt
           | NEWLINE indent_opt l105x dedent_opt

    testlist_safe ::= old_test o110x

    old_test ::= or_test
           | old_lambdef

    old_lambdef ::= LAMBDA o111x COLON old_test

    test ::= or_test o113x
           | lambdef

    or_test ::= and_test l115x

    and_test ::= not_test l117x

    not_test ::= NOT not_test
           | comparison

    comparison ::= expr l119x

    comp_op ::= LT
           | GT
           | EQEQ
           | GTEQ
           | LTEQ
           | LTGT
           | NOTEQ
           | IN
           | NOT IN
           | IS
           | IS NOT

    expr ::= xor_expr l121x

    xor_expr ::= and_expr l123x

    and_expr ::= shift_expr l125x

    shift_expr ::= arith_expr l128x

    arith_expr ::= term l131x

    term ::= factor l134x

    factor ::= g135x factor
           | power

    power ::= atom l136x o138x

    atom ::= g139x

    listmaker ::= test g145x

    testlist_comp ::= test g149x

    lambdef ::= LAMBDA o153x COLON test

    trailer ::= LPAREN o154x RPAREN
           | LBRACKET subscriptlist RBRACKET
           | DOT IDENTIFIER

    subscriptlist ::= subscript l156x o157x

    subscript ::= DOT DOT DOT
           | test
           | o158x COLON o159x o160x

    sliceop ::= COLON o161x

    exprlist ::= expr l163x o164x

    testlist ::= test l166x o167x

    dictorsetmaker ::= g168x

    classdef ::= CLASS IDENTIFIER o181x COLON suite

    arglist ::= l183x g184x

    argument ::= test o190x
           | test EQ test

    list_iter ::= list_for
           | list_if

    list_for ::= FOR exprlist IN testlist_safe o191x

    list_if ::= IF old_test o192x

    comp_iter ::= comp_for
           | comp_if

    comp_for ::= FOR exprlist IN or_test o193x

    comp_if ::= IF old_test o194x

    testlist1 ::= test l196x

    encoding_decl ::= IDENTIFIER

    yield_expr ::= YIELD o197x o198x

    g1x ::= NEWLINE | stmt

    l2x ::= $empty | l2x g1x

    l3x ::= $empty | l3x NEWLINE

    o4x ::= arglist | $empty

    s5x ::= LPAREN o4x RPAREN

    o6x ::= s5x | $empty

    l7x ::= decorator | l7x decorator

    g8x ::= classdef | funcdef

    o9x ::= varargslist | $empty

    s11x ::= EQ test

    o12x ::= s11x | $empty

    s13x ::= fpdef o12x COMMA

    l14x ::= $empty | l14x s13x

    s16x ::= COMMA STARSTAR IDENTIFIER

    o17x ::= s16x | $empty

    g15x ::= STAR IDENTIFIER o17x | STARSTAR IDENTIFIER

    s18x ::= EQ test

    o19x ::= s18x | $empty

    s20x ::= EQ test

    o21x ::= s20x | $empty

    s22x ::= COMMA fpdef o21x

    l23x ::= $empty | l23x s22x

    o24x ::= COMMA | $empty

    g10x ::= l14x g15x | fpdef o19x l23x o24x

    s25x ::= COMMA fpdef

    l26x ::= $empty | l26x s25x

    o27x ::= COMMA | $empty

    s28x ::= SEMI small_stmt

    l29x ::= $empty | l29x s28x

    o30x ::= SEMI | $empty

    g31x ::= expr_stmt | print_stmt | del_stmt | pass_stmt | flow_stmt | import_stmt | global_stmt | exec_stmt | assert_stmt

    g33x ::= yield_expr | testlist

    g35x ::= yield_expr | testlist

    g34x ::= EQ g35x

    l36x ::= $empty | l36x g34x

    g32x ::= augassign g33x | l36x

    g37x ::= PLUSEQ | MINUSEQ | STAREQ | SLASHEQ | PERCENTEQ | AMPEQ | PIPEEQ | CARETEQ | LSHIFTEQ | RSHIFTEQ | STARSTAREQ | SLASHSLASHEQ

    s39x ::= COMMA test

    l40x ::= $empty | l40x s39x

    o41x ::= COMMA | $empty

    s42x ::= test l40x o41x

    o43x ::= s42x | $empty

    s44x ::= COMMA test

    l45x ::= s44x | l45x s44x

    o46x ::= COMMA | $empty

    s47x ::= l45x o46x

    o48x ::= s47x | $empty

    g38x ::= o43x | RSHIFT test o48x

    o49x ::= testlist | $empty

    s50x ::= COMMA test

    o51x ::= s50x | $empty

    s52x ::= COMMA test o51x

    o53x ::= s52x | $empty

    s54x ::= test o53x

    o55x ::= s54x | $empty

    l58x ::= $empty | l58x DOT

    l59x ::= DOT | l59x DOT

    g57x ::= l58x dotted_name | l59x

    g60x ::= STAR | LPAREN import_as_names RPAREN | import_as_names

    g56x ::= FROM g57x IMPORT g60x

    s61x ::= AS IDENTIFIER

    o62x ::= s61x | $empty

    s63x ::= AS IDENTIFIER

    o64x ::= s63x | $empty

    s65x ::= COMMA import_as_name

    l66x ::= $empty | l66x s65x

    o67x ::= COMMA | $empty

    s68x ::= COMMA dotted_as_name

    l69x ::= $empty | l69x s68x

    s70x ::= DOT IDENTIFIER

    l71x ::= $empty | l71x s70x

    s72x ::= COMMA IDENTIFIER

    l73x ::= $empty | l73x s72x

    s74x ::= COMMA test

    o75x ::= s74x | $empty

    s76x ::= IN test o75x

    o77x ::= s76x | $empty

    s78x ::= COMMA test

    o79x ::= s78x | $empty

    s80x ::= ELIF test COLON suite

    l81x ::= $empty | l81x s80x

    s82x ::= ELSE COLON suite

    o83x ::= s82x | $empty

    s84x ::= ELSE COLON suite

    o85x ::= s84x | $empty

    s86x ::= ELSE COLON suite

    o87x ::= s86x | $empty

    s90x ::= except_clause COLON suite

    l91x ::= s90x | l91x s90x

    s92x ::= ELSE COLON suite

    o93x ::= s92x | $empty

    s94x ::= FINALLY COLON suite

    o95x ::= s94x | $empty

    g89x ::= l91x o93x o95x | FINALLY COLON suite

    g88x ::= TRY COLON suite g89x

    s96x ::= COMMA with_item

    l97x ::= $empty | l97x s96x

    s98x ::= AS expr

    o99x ::= s98x | $empty

    g102x ::= AS | COMMA

    g101x ::= g102x test

    o103x ::= g101x | $empty

    g100x ::= test o103x

    o104x ::= g100x | $empty

    l105x ::= stmt | l105x stmt

    s106x ::= COMMA old_test

    l107x ::= s106x | l107x s106x

    o108x ::= COMMA | $empty

    s109x ::= l107x o108x

    o110x ::= s109x | $empty

    o111x ::= varargslist | $empty

    s112x ::= IF or_test ELSE test

    o113x ::= s112x | $empty

    s114x ::= OR and_test

    l115x ::= $empty | l115x s114x

    s116x ::= AND not_test

    l117x ::= $empty | l117x s116x

    s118x ::= comp_op expr

    l119x ::= $empty | l119x s118x

    g120x ::= PIPE xor_expr

    l121x ::= $empty | l121x g120x

    s122x ::= CARET and_expr

    l123x ::= $empty | l123x s122x

    s124x ::= AMP shift_expr

    l125x ::= $empty | l125x s124x

    g127x ::= LSHIFT | RSHIFT

    g126x ::= g127x arith_expr

    l128x ::= $empty | l128x g126x

    g130x ::= PLUS | MINUS

    g129x ::= g130x term

    l131x ::= $empty | l131x g129x

    g133x ::= STAR | SLASH | PERCENT | SLASHSLASH

    g132x ::= g133x factor

    l134x ::= $empty | l134x g132x

    g135x ::= PLUS | MINUS | TILDE

    l136x ::= $empty | l136x trailer

    s137x ::= STARSTAR factor

    o138x ::= s137x | $empty

    g140x ::= yield_expr | testlist_comp

    o141x ::= g140x | $empty

    o142x ::= listmaker | $empty

    o143x ::= dictorsetmaker | $empty

    l144x ::= STRING | l144x STRING

    g139x ::= LPAREN o141x RPAREN | LBRACKET o142x RBRACKET | LBRACE o143x RBRACE | BACKTICK testlist1 BACKTICK | DOT DOT DOT | IDENTIFIER | NUMBER | l144x

    s146x ::= COMMA test

    l147x ::= $empty | l147x s146x

    o148x ::= COMMA | $empty

    g145x ::= list_for | l147x o148x

    s150x ::= COMMA test

    l151x ::= $empty | l151x s150x

    o152x ::= COMMA | $empty

    g149x ::= comp_for | l151x o152x

    o153x ::= varargslist | $empty

    o154x ::= arglist | $empty

    s155x ::= COMMA subscript

    l156x ::= $empty | l156x s155x

    o157x ::= COMMA | $empty

    o158x ::= test | $empty

    o159x ::= test | $empty

    o160x ::= sliceop | $empty

    o161x ::= test | $empty

    s162x ::= COMMA expr

    l163x ::= $empty | l163x s162x

    o164x ::= COMMA | $empty

    s165x ::= COMMA test

    l166x ::= $empty | l166x s165x

    o167x ::= COMMA | $empty

    s171x ::= COMMA test COLON test

    l172x ::= $empty | l172x s171x

    o173x ::= COMMA | $empty

    g170x ::= comp_for | l172x o173x

    g169x ::= test COLON test g170x

    s176x ::= COMMA test

    l177x ::= $empty | l177x s176x

    o178x ::= COMMA | $empty

    g175x ::= comp_for | l177x o178x

    g174x ::= test g175x

    g168x ::= g169x | g174x

    o179x ::= testlist | $empty

    s180x ::= LPAREN o179x RPAREN

    o181x ::= s180x | $empty

    s182x ::= argument COMMA

    l183x ::= $empty | l183x s182x

    o185x ::= COMMA | $empty

    s186x ::= COMMA argument

    l187x ::= $empty | l187x s186x

    s188x ::= COMMA STARSTAR test

    o189x ::= s188x | $empty

    g184x ::= argument o185x | STAR test l187x o189x | STARSTAR test

    o190x ::= comp_for | $empty

    o191x ::= list_iter | $empty

    o192x ::= list_iter | $empty

    o193x ::= comp_iter | $empty

    o194x ::= comp_iter | $empty

    s195x ::= COMMA test

    l196x ::= $empty | l196x s195x

    o197x ::= FROM | $empty

    o198x ::= testlist | $empty

    indent_opt ::= $empty

    dedent_opt ::= $empty

%End
