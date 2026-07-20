-- AUTO-GENERATED from antlr/grammars-v4 haskell by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack,ebnf
%Options fp=HaskellParser
%options package=lpg.grammars.haskell
%options template=btParserTemplateF.gi
%options import_terminals=HaskellLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End


%Define
    $ast_class /.Object./
    $ast_type /.Object./
%End

%Start
    module
%End

%Rules
    module ::= opt_1 list_2 opt_3 list_4 grp_5 opt_6 opt_7 opt_trailing_nl

    module_content ::= MODULE modid opt_8 where_module

    where_module ::= WHERE module_body

    module_body ::= open_ body close list_9

    pragmas ::= list_10

    pragma ::= language_pragma
           | options_ghc
           | simple_options

    language_pragma ::= OP_50795 LANGUAGE extension_ list_12 OP_2477 opt_13

    options_ghc ::= OP_50795 OPTIONS_GHC list_16 OP_2477 opt_17

    simple_options ::= OP_50795 OPTIONS list_20 OP_2477 opt_21

    extension_ ::= CONID

    body ::= seq_22
           | impdecls
           | topdecls

    impdecls ::= list_24

    exports ::= LPAREN opt_28 opt_29 RPAREN

    exprt ::= qvar
           | grp_30
           | grp_39
           | seq_48

    impdecl ::= IMPORT opt_49 modid opt_51 opt_52 list_53

    impspec ::= grp_54

    fixity ::= INFIX
           | INFIXL
           | INFIXR

    ops ::= op list_57

    topdecls ::= list_60

    topdecl ::= cl_decl
           | ty_decl
           | standalone_kind_sig
           | inst_decl
           | standalone_deriving
           | role_annot
           | seq_62
           | seq_63
           | seq_65
           | seq_67
           | seq_69
           | annotation
           | decl_no_th
           | infixexp

    cl_decl ::= CLASS tycl_hdr opt_70 opt_71

    ty_decl ::= TYPE type_ EQ ktypedoc
           | TYPE FAMILY type_ opt_72 opt_73 opt_74
           | DATA opt_75 tycl_hdr constrs opt_76
           | NEWTYPE opt_77 tycl_hdr constrs opt_78
           | DATA opt_79 tycl_hdr opt_80 opt_81 opt_82
           | NEWTYPE opt_83 tycl_hdr opt_84 opt_85 opt_86
           | DATA FAMILY type_ opt_87

    standalone_kind_sig ::= TYPE sks_vars COLONCOLON ktypedoc

    sks_vars ::= oqtycon list_89

    inst_decl ::= seq_92
           | seq_93
           | seq_96
           | seq_99
           | seq_104
           | seq_109

    overlap_pragma ::= OP_50795 OVERLAPPABLE OP_2477
           | OP_50795 OVERLAPPING OP_2477
           | OP_50795 OVERLAPS OP_2477
           | OP_50795 INCOHERENT OP_2477

    deriv_strategy_no_via ::= STOCK
           | ANYCLASS
           | NEWTYPE

    deriv_strategy_via ::= VIA ktype

    deriv_standalone_strategy ::= STOCK
           | ANYCLASS
           | NEWTYPE
           | deriv_strategy_via

    opt_injective_info ::= PIPE injectivity_cond

    injectivity_cond ::= tyvarid ARROW inj_varids

    inj_varids ::= list_110

    where_type_family ::= WHERE ty_fam_inst_eqn_list

    ty_fam_inst_eqn_list ::= seq_112
           | seq_113
           | seq_114

    ty_fam_inst_eqns ::= ty_fam_inst_eqn list_117 list_118

    ty_fam_inst_eqn ::= FORALL opt_119 DOT type_ EQ ktype
           | type_ EQ ktype

    at_decl_cls ::= seq_122
           | seq_125
           | seq_127

    at_decl_inst ::= seq_129
           | seq_133
           | seq_137
           | seq_143
           | seq_149

    opt_kind_sig ::= COLONCOLON kind

    opt_datafam_kind_sig ::= COLONCOLON kind

    opt_tyfam_kind_sig ::= seq_150
           | seq_151

    opt_at_kind_inj_sig ::= seq_152
           | grp_153

    tycl_hdr ::= seq_154
           | type_

    tycl_hdr_inst ::= seq_156
           | seq_158
           | seq_159
           | type_

    capi_ctype ::= seq_160
           | seq_161

    standalone_deriving ::= DERIVING opt_162 INSTANCE opt_163 inst_type

    role_annot ::= TYPE ROLE oqtycon opt_164

    roles ::= list_165

    role ::= varid
           | UNDERSCORE

    pattern_synonym_decl ::= seq_166
           | seq_168

    pattern_synonym_lhs ::= seq_170
           | seq_171
           | seq_172

    vars_ ::= list_173

    cvars ::= var_ list_175

    where_decls ::= WHERE open_ opt_176 close

    pattern_synonym_sig ::= PATTERN con_list COLONCOLON sigtypedoc

    decl_cls ::= at_decl_cls
           | decl
           | DEFAULT infixexp COLONCOLON sigtypedoc

    decls_cls ::= decl_cls list_179 list_180

    decllist_cls ::= open_ opt_181 close

    where_cls ::= WHERE decllist_cls

    decl_inst ::= at_decl_inst
           | decl

    decls_inst ::= decl_inst list_184 list_185

    decllist_inst ::= open_ opt_186 close

    where_inst ::= WHERE decllist_inst

    decls ::= decl list_189 list_190

    decllist ::= open_ opt_191 close

    binds ::= decllist
           | seq_193

    wherebinds ::= WHERE binds

    rules ::= pragma_rule list_195 opt_196

    pragma_rule ::= pstring opt_197 opt_198 infixexp EQ exp

    rule_activation_marker ::= TILDE
           | varsym

    rule_activation ::= seq_199
           | seq_200
           | seq_201

    rule_foralls ::= seq_206

    rule_vars ::= list_207

    rule_var ::= varid
           | seq_208

    warnings ::= pragma_warning list_210 opt_211

    pragma_warning ::= namelist strings

    deprecations ::= pragma_deprecation list_213 opt_214

    pragma_deprecation ::= namelist strings

    strings ::= pstring
           | seq_216

    stringlist ::= pstring list_218

    annotation ::= seq_219
           | seq_220
           | seq_221

    fdecl ::= seq_223
           | seq_224

    callconv ::= CCALL
           | STDCALL
           | CPLUSPLUS
           | JAVASCRIPT

    safety ::= UNSAFE
           | SAFE
           | INTERRUPTIBLE

    fspec ::= opt_225 var_ COLONCOLON sigtypedoc

    opt_sig ::= COLONCOLON sigtype

    opt_tyconsig ::= COLONCOLON gtycon

    sigtype ::= ctype

    sigtypedoc ::= ctypedoc

    sig_vars ::= var_ list_227

    sigtypes1 ::= sigtype list_229

    unpackedness ::= seq_230
           | seq_231

    forall_vis_flag ::= DOT
           | ARROW

    ktype ::= ctype
           | seq_232

    ktypedoc ::= ctypedoc
           | ctypedoc COLONCOLON kind

    ctype ::= FORALL opt_233 forall_vis_flag ctype
           | btype FATARROW ctype
           | var_ COLONCOLON type_
           | type_

    ctypedoc ::= FORALL opt_234 forall_vis_flag ctypedoc
           | tycl_context FATARROW ctypedoc
           | var_ COLONCOLON type_
           | typedoc

    tycl_context ::= btype

    constr_context ::= constr_btype

    type_ ::= btype
           | btype ARROW ctype

    typedoc ::= btype
           | btype ARROW ctypedoc

    constr_btype ::= constr_tyapps

    constr_tyapps ::= list_235

    constr_tyapp ::= tyapp

    btype ::= tyapps

    tyapps ::= list_236

    tyapp ::= atype
           | seq_237
           | qtyconop
           | tyvarop
           | seq_238
           | seq_239
           | unpackedness

    atype ::= ntgtycon
           | tyvar
           | STAR
           | seq_240
           | seq_241
           | seq_243
           | seq_244
           | seq_245
           | seq_246
           | seq_247
           | seq_248
           | seq_249
           | seq_250
           | quasiquote
           | splice_untyped
           | seq_251
           | seq_252
           | seq_254
           | seq_255
           | seq_256
           | integer
           | pstring
           | UNDERSCORE

    inst_type ::= sigtype

    deriv_types ::= ktypedoc list_258

    comma_types ::= ktype list_260

    bar_types2 ::= ktype PIPE ktype list_262

    tv_bndrs ::= list_263

    tv_bndr ::= tv_bndr_no_braces
           | seq_264
           | seq_265

    tv_bndr_no_braces ::= tyvar
           | seq_266

    fds ::= PIPE fds1

    fds1 ::= fd list_268

    fd ::= opt_269 ARROW opt_270

    varids0 ::= list_271

    kind ::= ctype

    gadt_constrlist ::= WHERE open_ opt_272 list_273 close

    gadt_constrs ::= gadt_constr_with_doc list_275

    gadt_constr_with_doc ::= gadt_constr

    gadt_constr ::= con_list COLONCOLON sigtypedoc

    constrs ::= EQ constrs1

    constrs1 ::= constr list_277

    constr ::= opt_278 opt_280 constr_stuff

    forall ::= FORALL opt_281 DOT

    constr_stuff ::= constr_tyapps

    fielddecls ::= fielddecl list_283

    fielddecl ::= sig_vars COLONCOLON ctype

    derivings ::= list_284

    deriving ::= seq_285
           | seq_286
           | seq_287

    deriv_clause_types ::= qtycon
           | LPAREN RPAREN
           | LPAREN deriv_types RPAREN

    decl_no_th ::= sigdecl
           | seq_289
           | pattern_synonym_decl
           | list_290

    decl ::= decl_no_th
           | splice_exp
           | list_291

    rhs ::= seq_293
           | seq_295

    gdrhs ::= list_296

    gdrh ::= PIPE guards EQ exp

    sigdecl ::= seq_297
           | seq_298
           | seq_300
           | pattern_synonym_sig
           | seq_302
           | seq_304
           | seq_306
           | seq_308
           | seq_310
           | seq_311
           | seq_313
           | list_314

    activation ::= seq_315
           | seq_316

    th_quasiquote ::= LBRACKET varid PIPE

    th_qquasiquote ::= LBRACKET qvarid PIPE

    quasiquote ::= th_quasiquote
           | th_qquasiquote

    exp ::= seq_317
           | seq_318
           | seq_319
           | seq_320
           | seq_321
           | infixexp

    infixexp ::= exp10 list_323

    exp10p ::= exp10

    exp10 ::= opt_324 fexp

    fexp ::= list_325 opt_327

    aexp ::= seq_328
           | seq_329
           | seq_330
           | seq_331
           | seq_332
           | seq_333
           | seq_336
           | seq_337
           | seq_338
           | seq_339
           | seq_340
           | aexp1

    aexp1 ::= aexp2 list_343

    aexp2 ::= qvar
           | qcon
           | varid
           | literal
           | pstring
           | integer
           | pfloat
           | seq_344
           | seq_345
           | seq_346
           | seq_347
           | seq_348
           | UNDERSCORE
           | splice_untyped
           | splice_typed
           | seq_349
           | seq_350
           | seq_351
           | seq_352
           | OP_22208
           | OP_29653 exp OP_82687
           | OP_61331 exp OP_663
           | _T_ ktype OP_82687
           | _P_ infixexp OP_82687
           | _D_ cvtopbody OP_82687
           | quasiquote
           | seq_354

    splice_exp ::= splice_typed
           | splice_untyped

    splice_untyped ::= DOLLAR aexp

    splice_typed ::= OP_51402 aexp

    cmdargs ::= list_355

    acmd ::= aexp

    cvtopbody ::= open_ opt_356 close

    cvtopdecls0 ::= topdecls list_357

    texp ::= exp
           | seq_358
           | seq_359
           | seq_360

    tup_exprs ::= seq_361
           | seq_362
           | seq_364
           | seq_366

    commas_tup_tail ::= commas opt_367

    tup_tail ::= texp commas_tup_tail
           | texp

    list_ ::= texp
           | lexps
           | texp DOTDOT
           | texp COMMA exp DOTDOT
           | texp DOTDOT exp
           | texp COMMA exp DOTDOT exp
           | texp PIPE flattenedpquals

    lexps ::= texp COMMA texp list_369

    flattenedpquals ::= pquals

    pquals ::= squals list_371

    squals ::= transformqual list_373
           | transformqual list_375
           | qual list_377
           | qual list_379

    transformqual ::= THEN exp
           | THEN exp BY exp
           | THEN GROUP USING exp
           | THEN GROUP BY exp USING exp

    guards ::= guard_ list_381

    guard_ ::= pat RECEIVE infixexp
           | LET decllist
           | infixexp

    alts ::= seq_385
           | seq_386

    alt ::= pat alt_rhs

    alt_rhs ::= ralt opt_387

    ralt ::= seq_388
           | gdpats

    gdpats ::= list_389

    ifgdpats ::= LBRACE gdpats RBRACE
           | gdpats

    gdpat ::= PIPE guards ARROW exp

    pat ::= exp

    bindpat ::= exp

    apat ::= aexp

    apats ::= list_390

    fpat ::= qvar EQ pat

    stmtlist ::= open_ opt_391 close

    stmts ::= stmt list_394 list_395

    stmt ::= qual
           | seq_396
           | list_397

    qual ::= bindpat RECEIVE exp
           | exp
           | LET binds

    fbinds ::= seq_400
           | DOTDOT

    fbind ::= seq_401
           | qvar

    dbinds ::= dbind seq_403 list_404

    dbind ::= varid EQ exp

    name_boolformula_opt ::= name_boolformula_and list_406

    name_boolformula_and ::= name_boolformula_and_list

    name_boolformula_and_list ::= name_boolformula_atom list_408

    name_boolformula_atom ::= seq_409
           | name_var

    namelist ::= name_var list_411

    name_var ::= var_
           | con

    qcon_nowiredlist ::= gen_qcon
           | sysdcon_nolist

    qcon ::= gen_qcon
           | sysdcon

    gen_qcon ::= qconid
           | seq_412

    con ::= conid
           | seq_413
           | sysdcon

    con_list ::= con list_415

    sysdcon_nolist ::= seq_416
           | seq_417
           | seq_418
           | seq_419

    sysdcon ::= sysdcon_nolist
           | seq_420

    conop ::= consym
           | seq_421

    qconop ::= gconsym
           | seq_422

    gconsym ::= COLON
           | qconsym

    gtycon ::= ntgtycon
           | seq_423
           | seq_424

    ntgtycon ::= oqtycon
           | seq_425
           | seq_426
           | seq_427
           | seq_428

    oqtycon ::= qtycon
           | seq_429

    qtyconop ::= qtyconsym
           | seq_430

    qtycon ::= opt_432 tycon

    tycon ::= conid

    qtyconsym ::= qconsym
           | qvarsym
           | tyconsym

    tyconsym ::= consym
           | varsym
           | COLON
           | MINUS
           | DOT

    op ::= varop
           | conop

    varop ::= varsym
           | seq_433

    qop ::= qvarop
           | qconop

    qopm ::= qvaropm
           | qconop
           | hole_op

    hole_op ::= BACKTICK UNDERSCORE BACKTICK

    qvarop ::= qvarsym
           | seq_434

    qvaropm ::= qvarsym_no_minus
           | seq_435

    tyvar ::= varid

    tyvarop ::= BACKTICK tyvarid BACKTICK

    tyvarid ::= varid
           | special_id
           | UNSAFE
           | SAFE
           | INTERRUPTIBLE

    tycls ::= conid

    qtycls ::= opt_437 tycls

    var_ ::= varid
           | seq_438

    qvar ::= qvarid
           | seq_439

    qvarid ::= opt_441 varid

    varid ::= grp_442 list_443

    qvarsym ::= opt_445 varsym

    qvarsym_no_minus ::= varsym_no_minus
           | qvarsym

    varsym ::= varsym_no_minus
           | MINUS

    varsym_no_minus ::= list_446

    special_id ::= AS
           | QUALIFIED
           | HIDING
           | EXPORT
           | STDCALL
           | CCALL
           | CAPI
           | JAVASCRIPT
           | STOCK
           | ANYCLASS
           | VIA

    qconid ::= opt_448 conid

    conid ::= CONID list_449

    qconsym ::= opt_451 consym

    consym ::= COLON list_452

    literal ::= integer
           | pfloat
           | pchar
           | pstring

    open_ ::= VOCURLY
           | OCURLY
           | LBRACE

    close ::= VCCURLY
           | CCURLY
           | RBRACE

    semi ::= SEMI

    modid ::= list_454 conid

    commas ::= list_455

    bars ::= list_456

    special ::= LPAREN
           | RPAREN
           | COMMA
           | SEMI
           | LBRACKET
           | RBRACKET
           | BACKTICK
           | LBRACE
           | RBRACE

    symbol ::= ascSymbol

    ascSymbol ::= BANG
           | HASH
           | DOLLAR
           | PERCENT
           | AMP
           | STAR
           | PLUS
           | DOT
           | SLASH
           | LT
           | EQ
           | GT
           | QUESTION
           | AT
           | BACKSLASH
           | CARET
           | PIPE
           | TILDE
           | COLON

    integer ::= DECIMAL
           | OCTAL
           | HEXADECIMAL

    pfloat ::= FLOAT

    pchar ::= CHAR

    pstring ::= STRING

    opt_1 ::= OCURLY | $empty

    list_2 ::= $empty | list_2 semi

    opt_3 ::= pragmas | $empty

    list_4 ::= $empty | list_4 semi

    grp_5 ::= module_content | body

    opt_6 ::= CCURLY | $empty

    opt_7 ::= semi | $empty

    opt_8 ::= exports | $empty

    list_9 ::= $empty | list_9 semi

    list_10 ::= pragma | list_10 pragma

    seq_11 ::= COMMA extension_

    list_12 ::= $empty | list_12 seq_11

    opt_13 ::= semi | $empty

    grp_15 ::= varid | conid

    grp_14 ::= MINUS grp_15

    list_16 ::= $empty | list_16 grp_14

    opt_17 ::= semi | $empty

    grp_19 ::= varid | conid

    grp_18 ::= MINUS grp_19

    list_20 ::= $empty | list_20 grp_18

    opt_21 ::= semi | $empty

    seq_22 ::= impdecls topdecls

    grp_23 ::= impdecl | NEWLINE | semi

    list_24 ::= $empty
           | grp_23
           | list_24 grp_23

    seq_25 ::= COMMA exprt

    list_26 ::= $empty | list_26 seq_25

    seq_27 ::= exprt list_26

    opt_28 ::= seq_27 | $empty

    opt_29 ::= COMMA | $empty

    seq_32 ::= LPAREN DOTDOT RPAREN

    seq_33 ::= COMMA cname

    list_34 ::= $empty | list_34 seq_33

    seq_35 ::= cname list_34

    opt_36 ::= seq_35 | $empty

    seq_37 ::= LPAREN opt_36 RPAREN

    grp_31 ::= seq_32 | seq_37

    opt_38 ::= grp_31 | $empty

    grp_30 ::= qtycon opt_38

    seq_41 ::= LPAREN DOTDOT RPAREN

    seq_42 ::= COMMA qvar

    list_43 ::= $empty | list_43 seq_42

    seq_44 ::= qvar list_43

    opt_45 ::= seq_44 | $empty

    seq_46 ::= LPAREN opt_45 RPAREN

    grp_40 ::= seq_41 | seq_46

    opt_47 ::= grp_40 | $empty

    grp_39 ::= qtycls opt_47

    seq_48 ::= MODULE modid

    opt_49 ::= QUALIFIED | $empty

    seq_50 ::= AS modid

    opt_51 ::= seq_50 | $empty

    opt_52 ::= impspec | $empty

    list_53 ::= semi | list_53 semi

    grp_55 ::= h h cname var_ | c

    grp_54 ::= LPAREN grp_55

    seq_56 ::= COMMA op

    list_57 ::= $empty | list_57 seq_56

    list_59 ::= semi | list_59 semi

    grp_58 ::= topdecl list_59 | NEWLINE | semi

    list_60 ::= $empty
           | grp_58
           | list_60 grp_58

    opt_61 ::= comma_types | $empty

    seq_62 ::= DEFAULT LPAREN opt_61 RPAREN

    seq_63 ::= FOREIGN fdecl

    opt_64 ::= deprecations | $empty

    seq_65 ::= OP_50795 DEPRECATED opt_64 OP_2477

    opt_66 ::= warnings | $empty

    seq_67 ::= OP_50795 WARNING opt_66 OP_2477

    opt_68 ::= rules | $empty

    seq_69 ::= OP_50795 RULES opt_68 OP_2477

    opt_70 ::= fds | $empty

    opt_71 ::= where_cls | $empty

    opt_72 ::= opt_tyfam_kind_sig | $empty

    opt_73 ::= opt_injective_info | $empty

    opt_74 ::= where_type_family | $empty

    opt_75 ::= capi_ctype | $empty

    opt_76 ::= derivings | $empty

    opt_77 ::= capi_ctype | $empty

    opt_78 ::= derivings | $empty

    opt_79 ::= capi_ctype | $empty

    opt_80 ::= opt_kind_sig | $empty

    opt_81 ::= gadt_constrlist | $empty

    opt_82 ::= derivings | $empty

    opt_83 ::= capi_ctype | $empty

    opt_84 ::= opt_kind_sig | $empty

    opt_85 ::= gadt_constrlist | $empty

    opt_86 ::= derivings | $empty

    opt_87 ::= opt_datafam_kind_sig | $empty

    seq_88 ::= COMMA oqtycon

    list_89 ::= $empty | list_89 seq_88

    opt_90 ::= overlap_pragma | $empty

    opt_91 ::= where_inst | $empty

    seq_92 ::= INSTANCE opt_90 inst_type opt_91

    seq_93 ::= TYPE INSTANCE ty_fam_inst_eqn

    opt_94 ::= capi_ctype | $empty

    opt_95 ::= derivings | $empty

    seq_96 ::= DATA INSTANCE opt_94 tycl_hdr_inst opt_95

    opt_97 ::= capi_ctype | $empty

    opt_98 ::= derivings | $empty

    seq_99 ::= NEWTYPE INSTANCE opt_97 tycl_hdr_inst opt_98

    opt_100 ::= capi_ctype | $empty

    opt_101 ::= opt_kind_sig | $empty

    opt_102 ::= gadt_constrlist | $empty

    opt_103 ::= derivings | $empty

    seq_104 ::= DATA INSTANCE opt_100 tycl_hdr_inst opt_101 opt_102 opt_103

    opt_105 ::= capi_ctype | $empty

    opt_106 ::= opt_kind_sig | $empty

    opt_107 ::= gadt_constrlist | $empty

    opt_108 ::= derivings | $empty

    seq_109 ::= NEWTYPE INSTANCE opt_105 tycl_hdr_inst opt_106 opt_107 opt_108

    list_110 ::= tyvarid | list_110 tyvarid

    opt_111 ::= ty_fam_inst_eqns | $empty

    seq_112 ::= open_ opt_111 close

    seq_113 ::= LBRACE DOTDOT RBRACE

    seq_114 ::= open_ DOTDOT close

    list_115 ::= semi | list_115 semi

    seq_116 ::= list_115 ty_fam_inst_eqn

    list_117 ::= $empty | list_117 seq_116

    list_118 ::= $empty | list_118 semi

    opt_119 ::= tv_bndrs | $empty

    opt_120 ::= FAMILY | $empty

    opt_121 ::= opt_datafam_kind_sig | $empty

    seq_122 ::= DATA opt_120 type_ opt_121

    opt_123 ::= FAMILY | $empty

    opt_124 ::= opt_at_kind_inj_sig | $empty

    seq_125 ::= TYPE opt_123 type_ opt_124

    opt_126 ::= INSTANCE | $empty

    seq_127 ::= TYPE opt_126 ty_fam_inst_eqn

    opt_128 ::= INSTANCE | $empty

    seq_129 ::= TYPE opt_128 ty_fam_inst_eqn

    opt_130 ::= INSTANCE | $empty

    opt_131 ::= capi_ctype | $empty

    opt_132 ::= derivings | $empty

    seq_133 ::= DATA opt_130 opt_131 tycl_hdr_inst constrs opt_132

    opt_134 ::= INSTANCE | $empty

    opt_135 ::= capi_ctype | $empty

    opt_136 ::= derivings | $empty

    seq_137 ::= NEWTYPE opt_134 opt_135 tycl_hdr_inst constrs opt_136

    opt_138 ::= INSTANCE | $empty

    opt_139 ::= capi_ctype | $empty

    opt_140 ::= opt_kind_sig | $empty

    opt_141 ::= gadt_constrlist | $empty

    opt_142 ::= derivings | $empty

    seq_143 ::= DATA opt_138 opt_139 tycl_hdr_inst opt_140 opt_141 opt_142

    opt_144 ::= INSTANCE | $empty

    opt_145 ::= capi_ctype | $empty

    opt_146 ::= opt_kind_sig | $empty

    opt_147 ::= gadt_constrlist | $empty

    opt_148 ::= derivings | $empty

    seq_149 ::= NEWTYPE opt_144 opt_145 tycl_hdr_inst opt_146 opt_147 opt_148

    seq_150 ::= COLONCOLON kind

    seq_151 ::= EQ tv_bndr

    seq_152 ::= COLONCOLON kind

    grp_153 ::= EQ tv_bndr_no_braces PIPE injectivity_cond

    seq_154 ::= tycl_context FATARROW type_

    opt_155 ::= tv_bndrs | $empty

    seq_156 ::= FORALL opt_155 DOT tycl_context FATARROW type_

    opt_157 ::= tv_bndrs | $empty

    seq_158 ::= FORALL opt_157 DOT type_

    seq_159 ::= tycl_context FATARROW type_

    seq_160 ::= OP_50795 CTYPE STRING STRING OP_2477

    seq_161 ::= OP_50795 CTYPE STRING OP_2477

    opt_162 ::= deriv_standalone_strategy | $empty

    opt_163 ::= overlap_pragma | $empty

    opt_164 ::= roles | $empty

    list_165 ::= role | list_165 role

    seq_166 ::= PATTERN pattern_synonym_lhs EQ pat

    opt_167 ::= where_decls | $empty

    seq_168 ::= PATTERN pattern_synonym_lhs RECEIVE pat opt_167

    opt_169 ::= vars_ | $empty

    seq_170 ::= con opt_169

    seq_171 ::= varid conop varid

    seq_172 ::= con LBRACE cvars RBRACE

    list_173 ::= varid | list_173 varid

    seq_174 ::= COMMA var_

    list_175 ::= $empty | list_175 seq_174

    opt_176 ::= decls | $empty

    list_177 ::= semi | list_177 semi

    seq_178 ::= list_177 decl_cls

    list_179 ::= $empty | list_179 seq_178

    list_180 ::= $empty | list_180 semi

    opt_181 ::= decls_cls | $empty

    list_182 ::= semi | list_182 semi

    seq_183 ::= list_182 decl_inst

    list_184 ::= $empty | list_184 seq_183

    list_185 ::= $empty | list_185 semi

    opt_186 ::= decls_inst | $empty

    list_187 ::= semi | list_187 semi

    seq_188 ::= list_187 decl

    list_189 ::= $empty | list_189 seq_188

    list_190 ::= $empty | list_190 semi

    opt_191 ::= decls | $empty

    opt_192 ::= dbinds | $empty

    seq_193 ::= open_ opt_192 close

    seq_194 ::= semi pragma_rule

    list_195 ::= $empty | list_195 seq_194

    opt_196 ::= semi | $empty

    opt_197 ::= rule_activation | $empty

    opt_198 ::= rule_foralls | $empty

    seq_199 ::= LBRACKET integer RBRACKET

    seq_200 ::= LBRACKET rule_activation_marker integer RBRACKET

    seq_201 ::= LBRACKET rule_activation_marker RBRACKET

    opt_202 ::= rule_vars | $empty

    opt_203 ::= rule_vars | $empty

    seq_204 ::= FORALL opt_203 DOT

    opt_205 ::= seq_204 | $empty

    seq_206 ::= FORALL opt_202 DOT opt_205

    list_207 ::= rule_var | list_207 rule_var

    seq_208 ::= LPAREN varid COLONCOLON ctype RPAREN

    seq_209 ::= semi pragma_warning

    list_210 ::= $empty | list_210 seq_209

    opt_211 ::= semi | $empty

    seq_212 ::= semi pragma_deprecation

    list_213 ::= $empty | list_213 seq_212

    opt_214 ::= semi | $empty

    opt_215 ::= stringlist | $empty

    seq_216 ::= LBRACKET opt_215 RBRACKET

    seq_217 ::= COMMA pstring

    list_218 ::= $empty | list_218 seq_217

    seq_219 ::= OP_50795 ANN name_var aexp OP_2477

    seq_220 ::= OP_50795 ANN tycon aexp OP_2477

    seq_221 ::= OP_50795 ANN MODULE aexp OP_2477

    opt_222 ::= safety | $empty

    seq_223 ::= IMPORT callconv opt_222 fspec

    seq_224 ::= EXPORT callconv fspec

    opt_225 ::= pstring | $empty

    seq_226 ::= COMMA var_

    list_227 ::= $empty | list_227 seq_226

    seq_228 ::= COMMA sigtype

    list_229 ::= $empty | list_229 seq_228

    seq_230 ::= OP_50795 UNPACK OP_2477

    seq_231 ::= OP_50795 NOUNPACK OP_2477

    seq_232 ::= ctype COLONCOLON kind

    opt_233 ::= tv_bndrs | $empty

    opt_234 ::= tv_bndrs | $empty

    list_235 ::= constr_tyapp | list_235 constr_tyapp

    list_236 ::= tyapp | list_236 tyapp

    seq_237 ::= AT atype

    seq_238 ::= SQUOTE qconop

    seq_239 ::= SQUOTE varop

    seq_240 ::= TILDE atype

    seq_241 ::= BANG atype

    opt_242 ::= fielddecls | $empty

    seq_243 ::= LBRACE opt_242 RBRACE

    seq_244 ::= LPAREN RPAREN

    seq_245 ::= LPAREN ktype COMMA comma_types RPAREN

    seq_246 ::= OP_86761 OP_14180

    seq_247 ::= OP_86761 comma_types OP_14180

    seq_248 ::= OP_86761 bar_types2 OP_14180

    seq_249 ::= LBRACKET ktype RBRACKET

    seq_250 ::= LPAREN ktype RPAREN

    seq_251 ::= SQUOTE qcon_nowiredlist

    seq_252 ::= SQUOTE LPAREN ktype COMMA comma_types RPAREN

    opt_253 ::= comma_types | $empty

    seq_254 ::= SQUOTE LBRACKET opt_253 RBRACKET

    seq_255 ::= SQUOTE var_

    seq_256 ::= LBRACKET ktype COMMA comma_types RBRACKET

    seq_257 ::= COMMA ktypedoc

    list_258 ::= $empty | list_258 seq_257

    seq_259 ::= COMMA ktype

    list_260 ::= $empty | list_260 seq_259

    grp_261 ::= PIPE ktype

    list_262 ::= $empty | list_262 grp_261

    list_263 ::= tv_bndr | list_263 tv_bndr

    seq_264 ::= LBRACE tyvar RBRACE

    seq_265 ::= LBRACE tyvar COLONCOLON kind RBRACE

    seq_266 ::= LPAREN tyvar COLONCOLON kind RPAREN

    seq_267 ::= COMMA fd

    list_268 ::= $empty | list_268 seq_267

    opt_269 ::= varids0 | $empty

    opt_270 ::= varids0 | $empty

    list_271 ::= tyvar | list_271 tyvar

    opt_272 ::= gadt_constrs | $empty

    list_273 ::= $empty | list_273 semi

    seq_274 ::= semi gadt_constr_with_doc

    list_275 ::= $empty | list_275 seq_274

    grp_276 ::= PIPE constr

    list_277 ::= $empty | list_277 grp_276

    opt_278 ::= forall | $empty

    seq_279 ::= constr_context FATARROW

    opt_280 ::= seq_279 | $empty

    opt_281 ::= tv_bndrs | $empty

    seq_282 ::= COMMA fielddecl

    list_283 ::= $empty | list_283 seq_282

    list_284 ::= deriving | list_284 deriving

    seq_285 ::= DERIVING deriv_clause_types

    seq_286 ::= DERIVING deriv_strategy_no_via deriv_clause_types

    seq_287 ::= DERIVING deriv_clause_types deriv_strategy_via

    opt_288 ::= opt_sig | $empty

    seq_289 ::= infixexp opt_288 rhs

    list_290 ::= semi | list_290 semi

    list_291 ::= semi | list_291 semi

    opt_292 ::= wherebinds | $empty

    seq_293 ::= EQ exp opt_292

    opt_294 ::= wherebinds | $empty

    seq_295 ::= gdrhs opt_294

    list_296 ::= gdrh | list_296 gdrh

    seq_297 ::= infixexp COLONCOLON sigtypedoc

    seq_298 ::= var_ COMMA sig_vars COLONCOLON sigtypedoc

    opt_299 ::= integer | $empty

    seq_300 ::= fixity opt_299 ops

    opt_301 ::= opt_tyconsig | $empty

    seq_302 ::= OP_50795 COMPLETE con_list opt_301 OP_2477

    opt_303 ::= activation | $empty

    seq_304 ::= OP_50795 INLINE opt_303 qvar OP_2477

    opt_305 ::= pstring | $empty

    seq_306 ::= OP_50795 SCC qvar opt_305 OP_2477

    opt_307 ::= activation | $empty

    seq_308 ::= OP_50795 SPECIALISE opt_307 qvar COLONCOLON sigtypes1 OP_2477

    opt_309 ::= activation | $empty

    seq_310 ::= OP_50795 SPECIALISE_INLINE opt_309 qvar COLONCOLON sigtypes1 OP_2477

    seq_311 ::= OP_50795 SPECIALISE INSTANCE inst_type OP_2477

    opt_312 ::= name_boolformula_opt | $empty

    seq_313 ::= OP_50795 MINIMAL OP_2477 opt_312 OP_2477

    list_314 ::= semi | list_314 semi

    seq_315 ::= LBRACKET integer RBRACKET

    seq_316 ::= LBRACKET rule_activation_marker integer RBRACKET

    seq_317 ::= infixexp COLONCOLON sigtype

    seq_318 ::= infixexp OP_42762 exp

    seq_319 ::= infixexp OP_64890 exp

    seq_320 ::= infixexp OP_842 exp

    seq_321 ::= infixexp OP_37483 exp

    seq_322 ::= qop exp10p

    list_323 ::= $empty | list_323 seq_322

    opt_324 ::= MINUS | $empty

    list_325 ::= aexp | list_325 aexp

    seq_326 ::= AT atype

    opt_327 ::= seq_326 | $empty

    seq_328 ::= qvar AT aexp

    seq_329 ::= TILDE aexp

    seq_330 ::= BANG aexp

    seq_331 ::= BACKSLASH apats ARROW exp

    seq_332 ::= LET decllist IN exp

    seq_333 ::= LCASE alts

    opt_334 ::= semi | $empty

    opt_335 ::= semi | $empty

    seq_336 ::= IF exp opt_334 THEN exp opt_335 ELSE exp

    seq_337 ::= IF ifgdpats

    seq_338 ::= CASE exp OF alts

    seq_339 ::= DO stmtlist

    seq_340 ::= MDO stmtlist

    opt_341 ::= fbinds | $empty

    seq_342 ::= LBRACE opt_341 RBRACE

    list_343 ::= $empty | list_343 seq_342

    seq_344 ::= LPAREN texp RPAREN

    seq_345 ::= LPAREN tup_exprs RPAREN

    seq_346 ::= OP_86761 texp OP_14180

    seq_347 ::= OP_86761 tup_exprs OP_14180

    seq_348 ::= LBRACKET list_ RBRACKET

    seq_349 ::= SQUOTE qvar

    seq_350 ::= SQUOTE qcon

    seq_351 ::= OP_22208 tyvar

    seq_352 ::= OP_22208 gtycon

    opt_353 ::= cmdargs | $empty

    seq_354 ::= AopenParen aexp opt_353 AopenParen

    list_355 ::= acmd | list_355 acmd

    opt_356 ::= cvtopdecls0 | $empty

    list_357 ::= $empty | list_357 semi

    seq_358 ::= infixexp qop

    seq_359 ::= qopm infixexp

    seq_360 ::= exp ARROW texp

    seq_361 ::= texp commas_tup_tail

    seq_362 ::= texp bars

    opt_363 ::= tup_tail | $empty

    seq_364 ::= commas opt_363

    opt_365 ::= bars | $empty

    seq_366 ::= bars texp opt_365

    opt_367 ::= tup_tail | $empty

    seq_368 ::= COMMA texp

    list_369 ::= $empty | list_369 seq_368

    grp_370 ::= PIPE squals

    list_371 ::= $empty | list_371 grp_370

    seq_372 ::= COMMA transformqual

    list_373 ::= $empty | list_373 seq_372

    seq_374 ::= COMMA qual

    list_375 ::= $empty | list_375 seq_374

    seq_376 ::= COMMA transformqual

    list_377 ::= $empty | list_377 seq_376

    seq_378 ::= COMMA qual

    list_379 ::= $empty | list_379 seq_378

    seq_380 ::= COMMA guard_

    list_381 ::= $empty | list_381 seq_380

    list_382 ::= $empty | list_382 semi

    seq_383 ::= alt list_382

    list_384 ::= seq_383 | list_384 seq_383

    seq_385 ::= open_ list_384 close

    seq_386 ::= open_ close

    opt_387 ::= wherebinds | $empty

    seq_388 ::= ARROW exp

    list_389 ::= gdpat | list_389 gdpat

    list_390 ::= apat | list_390 apat

    opt_391 ::= stmts | $empty

    list_392 ::= semi | list_392 semi

    seq_393 ::= list_392 stmt

    list_394 ::= $empty | list_394 seq_393

    list_395 ::= $empty | list_395 semi

    seq_396 ::= REC stmtlist

    list_397 ::= semi | list_397 semi

    seq_398 ::= COMMA fbind

    list_399 ::= $empty | list_399 seq_398

    seq_400 ::= fbind list_399

    seq_401 ::= qvar EQ exp

    list_402 ::= semi | list_402 semi

    seq_403 ::= list_402 dbind

    list_404 ::= $empty | list_404 semi

    grp_405 ::= PIPE name_boolformula_and

    list_406 ::= $empty | list_406 grp_405

    seq_407 ::= COMMA name_boolformula_atom

    list_408 ::= $empty | list_408 seq_407

    seq_409 ::= LPAREN name_boolformula_opt RPAREN

    seq_410 ::= COMMA name_var

    list_411 ::= $empty | list_411 seq_410

    seq_412 ::= LPAREN qconsym RPAREN

    seq_413 ::= LPAREN consym RPAREN

    seq_414 ::= COMMA con

    list_415 ::= $empty | list_415 seq_414

    seq_416 ::= LPAREN RPAREN

    seq_417 ::= LPAREN commas RPAREN

    seq_418 ::= OP_86761 OP_14180

    seq_419 ::= OP_86761 commas OP_14180

    seq_420 ::= LBRACKET RBRACKET

    seq_421 ::= BACKTICK conid BACKTICK

    seq_422 ::= BACKTICK qconid BACKTICK

    seq_423 ::= LPAREN RPAREN

    seq_424 ::= OP_86761 OP_14180

    seq_425 ::= LPAREN commas RPAREN

    seq_426 ::= OP_86761 commas OP_14180

    seq_427 ::= LPAREN ARROW RPAREN

    seq_428 ::= LBRACKET RBRACKET

    seq_429 ::= LPAREN qtyconsym RPAREN

    seq_430 ::= BACKTICK qtycon BACKTICK

    seq_431 ::= modid DOT

    opt_432 ::= seq_431 | $empty

    seq_433 ::= BACKTICK varid BACKTICK

    seq_434 ::= BACKTICK qvarid BACKTICK

    seq_435 ::= BACKTICK qvarid BACKTICK

    seq_436 ::= modid DOT

    opt_437 ::= seq_436 | $empty

    seq_438 ::= LPAREN varsym RPAREN

    seq_439 ::= LPAREN qvarsym RPAREN

    seq_440 ::= modid DOT

    opt_441 ::= seq_440 | $empty

    grp_442 ::= VARID | special_id

    list_443 ::= $empty | list_443 HASH

    seq_444 ::= modid DOT

    opt_445 ::= seq_444 | $empty

    list_446 ::= ascSymbol | list_446 ascSymbol

    seq_447 ::= modid DOT

    opt_448 ::= seq_447 | $empty

    list_449 ::= $empty | list_449 HASH

    seq_450 ::= modid DOT

    opt_451 ::= seq_450 | $empty

    list_452 ::= $empty | list_452 ascSymbol

    seq_453 ::= conid DOT

    list_454 ::= $empty | list_454 seq_453

    list_455 ::= COMMA | list_455 COMMA

    list_456 ::= PIPE | list_456 PIPE

    opt_trailing_nl ::= $empty
           | NEWLINE opt_trailing_nl

%End
