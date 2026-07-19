-- AUTO-GENERATED from antlr/grammars-v4 cobol85 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=Cobol85Parser
%options package=lpg.grammars.cobol85
%options template=btParserTemplateF.gi
%options import_terminals=Cobol85Lexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    startRule
%End

%Rules
    startRule ::= compilationUnit

    compilerOptions ::= grp_3 list_6

    compilerXOpts ::= XOPTS LPARENCHAR compilerOption list_9 RPARENCHAR

    compilerOption ::= ADATA
           | ADV
           | APOST
           | grp_10 LPARENCHAR grp_11 RPARENCHAR
           | AWO
           | BLOCK0
           | grp_12 LPARENCHAR literal RPARENCHAR
           | CBLCARD
           | CICS opt_14
           | COBOL2
           | COBOL3
           | grp_15 LPARENCHAR literal RPARENCHAR
           | grp_16
           | CPP
           | CPSM
           | grp_17 LPARENCHAR literal RPARENCHAR
           | DATA LPARENCHAR literal RPARENCHAR
           | grp_18 opt_25
           | DBCS
           | grp_26
           | DEBUG
           | grp_27
           | DLL
           | grp_28
           | grp_29
           | EDF
           | EPILOG
           | EXIT
           | grp_30
           | grp_31
           | FEPI
           | grp_32 LPARENCHAR grp_33 opt_36 RPARENCHAR
           | FLAGSTD LPARENCHAR grp_37 opt_40 RPARENCHAR
           | GDS
           | GRAPHIC
           | INTDATE LPARENCHAR grp_41 RPARENCHAR
           | grp_42 LPARENCHAR grp_43 RPARENCHAR
           | LEASM
           | LENGTH
           | LIB
           | LIN
           | grp_44 LPARENCHAR literal RPARENCHAR
           | LINKAGE
           | LIST
           | MAP
           | MARGINS LPARENCHAR literal COMMACHAR literal opt_46 RPARENCHAR
           | grp_47 opt_50
           | NAME opt_53
           | NATLANG LPARENCHAR grp_54 RPARENCHAR
           | NOADATA
           | NOADV
           | NOAWO
           | NOBLOCK0
           | NOCBLCARD
           | NOCICS
           | NOCMPR2
           | grp_55 opt_58
           | NOCPSM
           | grp_59
           | grp_60
           | NODBCS
           | NODEBUG
           | grp_61
           | NODLL
           | NODE
           | grp_62
           | grp_63
           | grp_64
           | NOEDF
           | NOEPILOG
           | NOEXIT
           | grp_65
           | grp_66
           | NOFEPI
           | grp_67
           | NOFLAGMIG
           | NOFLAGSTD
           | NOGRAPHIC
           | NOLENGTH
           | NOLIB
           | NOLINKAGE
           | NOLIST
           | NOMAP
           | grp_68
           | NONAME
           | grp_69
           | grp_70
           | grp_71
           | NOOPSEQUENCE
           | grp_72
           | NOOPTIONS
           | NOP
           | NOPROLOG
           | NORENT
           | grp_73
           | grp_74
           | NOSPIE
           | NOSQL
           | grp_75
           | grp_76
           | NOSTDTRUNC
           | grp_77
           | NOTEST
           | NOTHREAD
           | NOVBREF
           | grp_78
           | NSEQ
           | grp_79 LPARENCHAR grp_80 RPARENCHAR
           | grp_81
           | NOZWB
           | grp_82
           | NUMPROC LPARENCHAR grp_83 RPARENCHAR
           | grp_84
           | grp_85
           | OPMARGINS LPARENCHAR literal COMMACHAR literal opt_87 RPARENCHAR
           | OPSEQUENCE LPARENCHAR literal COMMACHAR literal RPARENCHAR
           | grp_88 opt_91
           | OPTFILE
           | OPTIONS
           | OP
           | grp_92 LPARENCHAR cobolWord RPARENCHAR
           | grp_93 LPARENCHAR grp_94 RPARENCHAR
           | PROLOG
           | grp_95
           | RENT
           | RMODE LPARENCHAR grp_96 RPARENCHAR
           | grp_97 opt_99
           | grp_100 LPARENCHAR grp_101 RPARENCHAR
           | grp_102
           | SP
           | SPACE LPARENCHAR literal RPARENCHAR
           | SPIE
           | SQL opt_104
           | grp_105
           | grp_106
           | SYSEIB
           | grp_107
           | TEST opt_117
           | THREAD
           | TRUNC LPARENCHAR grp_118 RPARENCHAR
           | VBREF
           | grp_119 LPARENCHAR cobolWord RPARENCHAR
           | grp_120 LPARENCHAR grp_121 RPARENCHAR
           | grp_122 opt_126
           | grp_127 LPARENCHAR literal RPARENCHAR
           | ZWB

    execCicsStatement ::= list_854

    execSqlStatement ::= list_855

    execSqlImsStatement ::= list_856

    copyStatement ::= COPY copySource list_134 list_135 DOT

    copySource ::= grp_136 opt_139

    copyLibrary ::= literal
           | cobolWord

    replacingPhrase ::= REPLACING list_140 replaceClause list_143

    replaceArea ::= replaceByStatement list_145 opt_146

    replaceByStatement ::= REPLACE list_149 DOT

    replaceOffStatement ::= REPLACE OFF DOT

    replaceClause ::= replaceable list_150 BY list_151 replacement opt_154 opt_157

    directoryPhrase ::= grp_158 list_159 grp_160

    familyPhrase ::= ON list_161 grp_162

    replaceable ::= literal
           | cobolWord
           | pseudoText
           | charDataLine

    replacement ::= literal
           | cobolWord
           | pseudoText
           | charDataLine

    ejectStatement ::= EJECT opt_163

    skipStatement ::= grp_164 opt_165

    titleStatement ::= TITLE literal opt_166

    pseudoText ::= DOUBLEEQUALCHAR opt_167 DOUBLEEQUALCHAR

    charData ::= list_169

    charDataSql ::= list_171

    charDataLine ::= list_173

    cobolWord ::= IDENTIFIER
           | charDataKeyword
           | COBOL
           | PROGRAM
           | ABORT
           | AS
           | ASCII
           | ASSOCIATED_DATA
           | ASSOCIATED_DATA_LENGTH
           | ATTRIBUTE
           | AUTO
           | AUTO_SKIP
           | BACKGROUND_COLOR
           | BACKGROUND_COLOUR
           | BEEP
           | BELL
           | BINARY
           | BIT
           | BLINK
           | BOUNDS
           | CAPABLE
           | CCSVERSION
           | CHANGED
           | CHANNEL
           | CLOSE_DISPOSITION
           | COMMITMENT
           | CONTROL_POINT
           | CONVENTION
           | CRUNCH
           | CURSOR
           | DEFAULT
           | DEFAULT_DISPLAY
           | DEFINITION
           | DFHRESP
           | DFHVALUE
           | DISK
           | DONTCARE
           | DOUBLE
           | EBCDIC
           | EMPTY_CHECK
           | ENTER
           | ENTRY_PROCEDURE
           | EOL
           | EOS
           | ERASE
           | ESCAPE
           | EVENT
           | EXCLUSIVE
           | EXPORT
           | EXTENDED
           | FOREGROUND_COLOR
           | FOREGROUND_COLOUR
           | FULL
           | FUNCTIONNAME
           | FUNCTION_POINTER
           | GRID
           | HIGHLIGHT
           | IMPLICIT
           | IMPORT
           | INTEGER
           | KEPT
           | KEYBOARD
           | LANGUAGE
           | LB
           | LD
           | LEFTLINE
           | LENGTH_CHECK
           | LIBACCESS
           | LIBPARAMETER
           | LIBRARY
           | LIST
           | LOCAL
           | LONG_DATE
           | LONG_TIME
           | LOWER
           | LOWLIGHT
           | MMDDYYYY
           | NAMED
           | NATIONAL
           | NATIONAL_EDITED
           | NETWORK
           | NO_ECHO
           | NUMERIC_DATE
           | NUMERIC_TIME
           | ODT
           | ORDERLY
           | OVERLINE
           | OWN
           | PASSWORD
           | PORT
           | PRINTER
           | PRIVATE
           | PROCESS
           | PROMPT
           | READER
           | REAL
           | RECEIVED
           | RECURSIVE
           | REF
           | REMOTE
           | REMOVE
           | REQUIRED
           | REVERSE_VIDEO
           | SAVE
           | SECURE
           | SHARED
           | SHAREDBYALL
           | SHAREDBYRUNUNIT
           | SHARING
           | SHORT_DATE
           | SYMBOL
           | TASK
           | THREAD
           | THREAD_LOCAL
           | TIMER
           | TODAYS_DATE
           | TODAYS_NAME
           | TRUNCATED
           | TYPEDEF
           | UNDERLINE
           | VIRTUAL
           | WAIT
           | YEAR
           | YYYYMMDD
           | YYYYDDD
           | ZERO_FILL

    literal ::= NONNUMERICLITERAL
           | figurativeConstant
           | numericLiteral
           | booleanLiteral
           | cicsDfhRespLiteral
           | cicsDfhValueLiteral

    filename ::= FILENAME

    charDataKeyword ::= ADATA
           | ADV
           | ALIAS
           | ANSI
           | ANY
           | APOST
           | AR
           | ARITH
           | AUTO
           | AWO
           | BIN
           | BLOCK0
           | BUF
           | BUFSIZE
           | BY
           | CBL
           | CBLCARD
           | CO
           | COBOL2
           | COBOL3
           | CODEPAGE
           | COMMACHAR
           | COMPAT
           | COMPILE
           | CP
           | CPP
           | CPSM
           | CS
           | CURR
           | CURRENCY
           | DATA
           | DATEPROC
           | DBCS
           | DD
           | DEBUG
           | DECK
           | DIAGTRUNC
           | DLI
           | DLL
           | DP
           | DTR
           | DU
           | DUMP
           | DYN
           | DYNAM
           | EDF
           | EJECT
           | EJPD
           | EN
           | ENGLISH
           | EPILOG
           | EXCI
           | EXIT
           | EXP
           | EXPORTALL
           | EXTEND
           | FASTSRT
           | FLAG
           | FLAGSTD
           | FULL
           | FSRT
           | GDS
           | GRAPHIC
           | HOOK
           | IN
           | INTDATE
           | JA
           | JP
           | KA
           | LANG
           | LANGUAGE
           | LC
           | LENGTH
           | LIB
           | LILIAN
           | LIN
           | LINECOUNT
           | LINKAGE
           | LIST
           | LM
           | LONGMIXED
           | LONGUPPER
           | LU
           | MAP
           | MARGINS
           | MAX
           | MD
           | MDECK
           | MIG
           | MIXED
           | NAME
           | NAT
           | NATIONAL
           | NATLANG
           | NN
           | NO
           | NOADATA
           | NOADV
           | NOALIAS
           | NOAWO
           | NOBLOCK0
           | NOC
           | NOCBLCARD
           | NOCICS
           | NOCMPR2
           | NOCOMPILE
           | NOCPSM
           | NOCURR
           | NOCURRENCY
           | NOD
           | NODATEPROC
           | NODBCS
           | NODE
           | NODEBUG
           | NODECK
           | NODIAGTRUNC
           | NODLL
           | NODU
           | NODUMP
           | NODP
           | NODTR
           | NODYN
           | NODYNAM
           | NOEDF
           | NOEJPD
           | NOEPILOG
           | NOEXIT
           | NOEXP
           | NOEXPORTALL
           | NOF
           | NOFASTSRT
           | NOFEPI
           | NOFLAG
           | NOFLAGMIG
           | NOFLAGSTD
           | NOFSRT
           | NOGRAPHIC
           | NOHOOK
           | NOLENGTH
           | NOLIB
           | NOLINKAGE
           | NOLIST
           | NOMAP
           | NOMD
           | NOMDECK
           | NONAME
           | NONUM
           | NONUMBER
           | NOOBJ
           | NOOBJECT
           | NOOFF
           | NOOFFSET
           | NOOPSEQUENCE
           | NOOPT
           | NOOPTIMIZE
           | NOOPTIONS
           | NOP
           | NOPFD
           | NOPROLOG
           | NORENT
           | NOS
           | NOSEP
           | NOSEPARATE
           | NOSEQ
           | NOSEQUENCE
           | NOSOURCE
           | NOSPIE
           | NOSQL
           | NOSQLC
           | NOSQLCCSID
           | NOSSR
           | NOSSRANGE
           | NOSTDTRUNC
           | NOTERM
           | NOTERMINAL
           | NOTEST
           | NOTHREAD
           | NOTRIG
           | NOVBREF
           | NOWORD
           | NOX
           | NOXREF
           | NOZWB
           | NSEQ
           | NSYMBOL
           | NS
           | NUM
           | NUMBER
           | NUMPROC
           | OBJ
           | OBJECT
           | ON
           | OF
           | OFF
           | OFFSET
           | OPMARGINS
           | OPSEQUENCE
           | OPTIMIZE
           | OP
           | OPT
           | OPTFILE
           | OPTIONS
           | OUT
           | OUTDD
           | PFD
           | PGMN
           | PGMNAME
           | PPTDBG
           | PROCESS
           | PROLOG
           | QUOTE
           | RENT
           | REPLACING
           | RMODE
           | SEQ
           | SEQUENCE
           | SEP
           | SEPARATE
           | SHORT
           | SIZE
           | SOURCE
           | SP
           | SPACE
           | SPIE
           | SQL
           | SQLC
           | SQLCCSID
           | SS
           | SSR
           | SSRANGE
           | STD
           | SYSEIB
           | SZ
           | TERM
           | TERMINAL
           | TEST
           | THREAD
           | TITLE
           | TRIG
           | TRUNC
           | UE
           | UPPER
           | VBREF
           | WD
           | XMLPARSE
           | XMLSS
           | XOPTS
           | XREF
           | YEARWINDOW
           | YW
           | ZWB
           | C_CHAR
           | D_CHAR
           | E_CHAR
           | F_CHAR
           | H_CHAR
           | I_CHAR
           | M_CHAR
           | N_CHAR
           | Q_CHAR
           | S_CHAR
           | U_CHAR
           | W_CHAR
           | X_CHAR

    compilationUnit ::= list_174

    programUnit ::= identificationDivision opt_175 opt_176 opt_177 list_178 opt_179

    endProgramStatement ::= END PROGRAM programName DOT_FS

    identificationDivision ::= grp_180 DIVISION DOT_FS programIdParagraph list_181

    identificationDivisionBody ::= authorParagraph
           | installationParagraph
           | dateWrittenParagraph
           | dateCompiledParagraph
           | securityParagraph
           | remarksParagraph

    programIdParagraph ::= PROGRAM_ID DOT_FS programName opt_186 opt_187 opt_188

    authorParagraph ::= AUTHOR DOT_FS opt_189

    installationParagraph ::= INSTALLATION DOT_FS opt_190

    dateWrittenParagraph ::= DATE_WRITTEN DOT_FS opt_191

    dateCompiledParagraph ::= DATE_COMPILED DOT_FS opt_192

    securityParagraph ::= SECURITY DOT_FS opt_193

    remarksParagraph ::= REMARKS DOT_FS opt_194

    environmentDivision ::= ENVIRONMENT DIVISION DOT_FS list_195

    environmentDivisionBody ::= configurationSection
           | specialNamesParagraph
           | inputOutputSection

    configurationSection ::= CONFIGURATION SECTION DOT_FS list_196

    configurationSectionParagraph ::= sourceComputerParagraph
           | objectComputerParagraph
           | specialNamesParagraph

    sourceComputerParagraph ::= SOURCE_COMPUTER DOT_FS computerName opt_199 DOT_FS

    objectComputerParagraph ::= OBJECT_COMPUTER DOT_FS computerName list_200 DOT_FS

    objectComputerClause ::= memorySizeClause
           | diskSizeClause
           | collatingSequenceClause
           | segmentLimitClause
           | characterSetClause

    memorySizeClause ::= MEMORY opt_201 grp_202 opt_204

    diskSizeClause ::= DISK opt_205 opt_206 grp_207 opt_209

    collatingSequenceClause ::= opt_210 opt_211 SEQUENCE seq_214 opt_215 opt_216

    collatingSequenceClauseAlphanumeric ::= opt_217 ALPHANUMERIC opt_218 alphabetName

    collatingSequenceClauseNational ::= opt_219 NATIONAL opt_220 alphabetName

    segmentLimitClause ::= SEGMENT_LIMIT opt_221 integerLiteral

    characterSetClause ::= CHARACTER SET DOT_FS

    specialNamesParagraph ::= SPECIAL_NAMES DOT_FS opt_224

    specialNameClause ::= channelClause
           | odtClause
           | alphabetClause
           | classClause
           | currencySignClause
           | decimalPointClause
           | symbolicCharactersClause
           | environmentSwitchNameClause
           | defaultDisplaySignClause
           | defaultComputationalSignClause
           | reserveNetworkClause

    alphabetClause ::= alphabetClauseFormat1
           | alphabetClauseFormat2

    alphabetClauseFormat1 ::= ALPHABET alphabetName opt_226 opt_227 grp_228

    alphabetLiterals ::= literal opt_232

    alphabetThrough ::= grp_233 literal

    alphabetAlso ::= ALSO list_234

    alphabetClauseFormat2 ::= ALPHABET alphabetName opt_235 NATIONAL opt_236 grp_237

    channelClause ::= CHANNEL integerLiteral opt_238 mnemonicName

    classClause ::= CLASS className opt_242 opt_243 list_244

    classClauseThrough ::= classClauseFrom opt_247

    classClauseFrom ::= identifier
           | literal

    classClauseTo ::= identifier
           | literal

    currencySignClause ::= CURRENCY opt_248 opt_249 literal opt_252

    decimalPointClause ::= DECIMAL_POINT opt_253 COMMA

    defaultComputationalSignClause ::= DEFAULT opt_255 opt_258 opt_260 seq_262

    defaultDisplaySignClause ::= DEFAULT_DISPLAY opt_265 grp_266 opt_269

    environmentSwitchNameClause ::= environmentName opt_270 mnemonicName opt_271
           | environmentSwitchNameSpecialNamesStatusPhrase

    environmentSwitchNameSpecialNamesStatusPhrase ::= ON opt_272 opt_273 condition opt_277
           | OFF opt_278 opt_279 condition opt_283

    odtClause ::= ODT opt_284 mnemonicName

    reserveNetworkClause ::= RESERVE opt_285 opt_286 opt_287 NETWORK opt_288

    symbolicCharactersClause ::= SYMBOLIC opt_289 opt_293 list_294 opt_296

    symbolicCharacters ::= list_297 opt_299 list_300

    inputOutputSection ::= INPUT_OUTPUT SECTION DOT_FS list_301

    inputOutputSectionParagraph ::= fileControlParagraph
           | ioControlParagraph

    fileControlParagraph ::= FILE_CONTROL list_304 DOT_FS

    fileControlEntry ::= selectClause list_305

    selectClause ::= SELECT opt_306 fileName

    fileControlClause ::= assignClause
           | reserveClause
           | organizationClause
           | paddingCharacterClause
           | recordDelimiterClause
           | accessModeClause
           | recordKeyClause
           | alternateRecordKeyClause
           | fileStatusClause
           | passwordClause
           | relativeKeyClause

    assignClause ::= ASSIGN opt_307 grp_308

    reserveClause ::= RESERVE grp_309 opt_310 opt_312

    organizationClause ::= opt_315 opt_317 grp_318

    paddingCharacterClause ::= PADDING opt_319 opt_320 grp_321

    recordDelimiterClause ::= RECORD DELIMITER opt_322 grp_323

    accessModeClause ::= ACCESS opt_324 opt_325 grp_326

    recordKeyClause ::= RECORD opt_327 opt_328 qualifiedDataName opt_329 opt_332

    alternateRecordKeyClause ::= ALTERNATE RECORD opt_333 opt_334 qualifiedDataName opt_335 opt_338

    passwordClause ::= PASSWORD opt_339 dataName

    fileStatusClause ::= opt_340 STATUS opt_341 qualifiedDataName opt_342

    relativeKeyClause ::= RELATIVE opt_343 opt_344 qualifiedDataName

    ioControlParagraph ::= I_O_CONTROL DOT_FS opt_346 opt_349

    ioControlClause ::= rerunClause
           | sameClause
           | multipleFileClause
           | commitmentControlClause

    rerunClause ::= RERUN opt_352 EVERY grp_353

    rerunEveryRecords ::= integerLiteral RECORDS

    rerunEveryOf ::= opt_354 opt_355 grp_356 OF fileName

    rerunEveryClock ::= integerLiteral opt_357

    sameClause ::= SAME opt_359 opt_360 opt_361 list_362

    multipleFileClause ::= MULTIPLE FILE opt_363 opt_364 list_365

    multipleFilePosition ::= fileName opt_367

    commitmentControlClause ::= COMMITMENT CONTROL opt_368 fileName

    dataDivision ::= DATA DIVISION DOT_FS list_369

    dataDivisionSection ::= fileSection
           | dataBaseSection
           | workingStorageSection
           | linkageSection
           | communicationSection
           | localStorageSection
           | screenSection
           | reportSection
           | programLibrarySection

    fileSection ::= FILE SECTION DOT_FS list_370

    fileDescriptionEntry ::= grp_371 fileName list_374 DOT_FS list_375

    fileDescriptionEntryClause ::= externalClause
           | globalClause
           | blockContainsClause
           | recordContainsClause
           | labelRecordsClause
           | valueOfClause
           | dataRecordsClause
           | linageClause
           | codeSetClause
           | reportClause
           | recordingModeClause

    externalClause ::= opt_376 EXTERNAL

    globalClause ::= opt_377 GLOBAL

    blockContainsClause ::= BLOCK opt_378 integerLiteral opt_379 opt_381

    blockContainsTo ::= TO integerLiteral

    recordContainsClause ::= RECORD grp_382

    recordContainsClauseFormat1 ::= opt_383 integerLiteral opt_384

    recordContainsClauseFormat2 ::= opt_385 VARYING opt_386 opt_387 opt_392 opt_395

    recordContainsClauseFormat3 ::= opt_396 integerLiteral recordContainsTo opt_397

    recordContainsTo ::= TO integerLiteral

    labelRecordsClause ::= LABEL grp_398 grp_401

    valueOfClause ::= VALUE OF list_403

    valuePair ::= systemName opt_404 grp_405

    dataRecordsClause ::= DATA grp_406 list_409

    linageClause ::= LINAGE opt_410 grp_411 opt_412 list_413

    linageAt ::= linageFootingAt
           | linageLinesAtTop
           | linageLinesAtBottom

    linageFootingAt ::= opt_414 FOOTING opt_415 grp_416

    linageLinesAtTop ::= opt_417 opt_418 TOP grp_419

    linageLinesAtBottom ::= opt_420 opt_421 BOTTOM grp_422

    recordingModeClause ::= RECORDING opt_423 opt_424 modeStatement

    modeStatement ::= cobolWord

    codeSetClause ::= CODE_SET opt_425 alphabetName

    reportClause ::= grp_426 list_429

    dataBaseSection ::= DATA_BASE SECTION DOT_FS list_430

    dataBaseSectionEntry ::= integerLiteral literal INVOKE literal

    workingStorageSection ::= WORKING_STORAGE SECTION DOT_FS list_431

    linkageSection ::= LINKAGE SECTION DOT_FS list_432

    communicationSection ::= COMMUNICATION SECTION DOT_FS list_434

    communicationDescriptionEntry ::= communicationDescriptionEntryFormat1
           | communicationDescriptionEntryFormat2
           | communicationDescriptionEntryFormat3

    communicationDescriptionEntryFormat1 ::= CD cdName opt_435 opt_436 INPUT list_439 DOT_FS

    communicationDescriptionEntryFormat2 ::= CD cdName opt_440 OUTPUT list_442 DOT_FS

    communicationDescriptionEntryFormat3 ::= CD cdName opt_443 INITIAL I_O list_446 DOT_FS

    destinationCountClause ::= DESTINATION COUNT opt_447 dataDescName

    destinationTableClause ::= DESTINATION TABLE OCCURS integerLiteral TIMES opt_450

    endKeyClause ::= END KEY opt_451 dataDescName

    errorKeyClause ::= ERROR KEY opt_452 dataDescName

    messageCountClause ::= opt_453 COUNT opt_454 dataDescName

    messageDateClause ::= MESSAGE DATE opt_455 dataDescName

    messageTimeClause ::= MESSAGE TIME opt_456 dataDescName

    statusKeyClause ::= STATUS KEY opt_457 dataDescName

    symbolicDestinationClause ::= opt_458 DESTINATION opt_459 dataDescName

    symbolicQueueClause ::= opt_460 QUEUE opt_461 dataDescName

    symbolicSourceClause ::= opt_462 SOURCE opt_463 dataDescName

    symbolicTerminalClause ::= opt_464 TERMINAL opt_465 dataDescName

    symbolicSubQueueClause ::= opt_466 grp_467 opt_468 dataDescName

    textLengthClause ::= TEXT LENGTH opt_469 dataDescName

    localStorageSection ::= LOCAL_STORAGE SECTION DOT_FS opt_471 list_472

    screenSection ::= SCREEN SECTION DOT_FS list_473

    screenDescriptionEntry ::= INTEGERLITERAL opt_475 list_478 DOT_FS

    screenDescriptionBlankClause ::= BLANK grp_479

    screenDescriptionBellClause ::= BELL
           | BEEP

    screenDescriptionBlinkClause ::= BLINK

    screenDescriptionEraseClause ::= ERASE grp_480

    screenDescriptionLightClause ::= HIGHLIGHT
           | LOWLIGHT

    screenDescriptionGridClause ::= GRID
           | LEFTLINE
           | OVERLINE

    screenDescriptionReverseVideoClause ::= REVERSE_VIDEO

    screenDescriptionUnderlineClause ::= UNDERLINE

    screenDescriptionSizeClause ::= SIZE opt_481 grp_482

    screenDescriptionLineClause ::= LINE opt_487 grp_488

    screenDescriptionColumnClause ::= grp_489 opt_494 grp_495

    screenDescriptionForegroundColorClause ::= grp_496 opt_497 grp_498

    screenDescriptionBackgroundColorClause ::= grp_499 opt_500 grp_501

    screenDescriptionControlClause ::= CONTROL opt_502 identifier

    screenDescriptionValueClause ::= seq_504 literal

    screenDescriptionPictureClause ::= grp_505 opt_506 pictureString

    screenDescriptionFromClause ::= FROM grp_507 opt_508

    screenDescriptionToClause ::= TO identifier

    screenDescriptionUsingClause ::= USING identifier

    screenDescriptionUsageClause ::= seq_510 grp_511

    screenDescriptionBlankWhenZeroClause ::= BLANK opt_512 ZERO

    screenDescriptionJustifiedClause ::= grp_513 opt_514

    screenDescriptionSignClause ::= opt_517 grp_518 opt_521

    screenDescriptionAutoClause ::= AUTO
           | AUTO_SKIP

    screenDescriptionSecureClause ::= SECURE
           | NO_ECHO

    screenDescriptionRequiredClause ::= REQUIRED
           | EMPTY_CHECK

    screenDescriptionPromptClause ::= PROMPT opt_522 opt_523 grp_524 opt_525

    screenDescriptionPromptOccursClause ::= OCCURS integerLiteral opt_526

    screenDescriptionFullClause ::= FULL
           | LENGTH_CHECK

    screenDescriptionZeroFillClause ::= ZERO_FILL

    reportSection ::= REPORT SECTION DOT_FS list_527

    reportDescription ::= reportDescriptionEntry list_528

    reportDescriptionEntry ::= RD reportName opt_529 opt_535 DOT_FS

    reportDescriptionGlobalClause ::= opt_536 GLOBAL

    reportDescriptionPageLimitClause ::= PAGE opt_540 integerLiteral opt_542

    reportDescriptionHeadingClause ::= HEADING integerLiteral

    reportDescriptionFirstDetailClause ::= FIRST DETAIL integerLiteral

    reportDescriptionLastDetailClause ::= LAST DETAIL integerLiteral

    reportDescriptionFootingClause ::= FOOTING integerLiteral

    reportGroupDescriptionEntry ::= reportGroupDescriptionEntryFormat1
           | reportGroupDescriptionEntryFormat2
           | reportGroupDescriptionEntryFormat3

    reportGroupDescriptionEntryFormat1 ::= integerLiteral dataName opt_543 opt_544 reportGroupTypeClause opt_545 DOT_FS

    reportGroupDescriptionEntryFormat2 ::= integerLiteral opt_546 opt_547 reportGroupUsageClause DOT_FS

    reportGroupDescriptionEntryFormat3 ::= integerLiteral opt_548 list_551 DOT_FS

    reportGroupBlankWhenZeroClause ::= BLANK opt_552 ZERO

    reportGroupColumnNumberClause ::= COLUMN opt_553 opt_554 integerLiteral

    reportGroupIndicateClause ::= GROUP opt_555

    reportGroupJustifiedClause ::= grp_556 opt_557

    reportGroupLineNumberClause ::= opt_558 opt_559 opt_560 grp_561

    reportGroupLineNumberNextPage ::= integerLiteral opt_564

    reportGroupLineNumberPlus ::= PLUS integerLiteral

    reportGroupNextGroupClause ::= NEXT GROUP opt_565 grp_566

    reportGroupNextGroupPlus ::= PLUS integerLiteral

    reportGroupNextGroupNextPage ::= NEXT PAGE

    reportGroupPictureClause ::= grp_567 opt_568 pictureString

    reportGroupResetClause ::= RESET opt_569 grp_570

    reportGroupSignClause ::= SIGN opt_571 grp_572 SEPARATE opt_573

    reportGroupSourceClause ::= SOURCE opt_574 identifier

    reportGroupSumClause ::= SUM identifier list_577 opt_582

    reportGroupTypeClause ::= TYPE opt_583 grp_584

    reportGroupTypeReportHeading ::= REPORT HEADING
           | RH

    reportGroupTypePageHeading ::= PAGE HEADING
           | PH

    reportGroupTypeControlHeading ::= grp_585 grp_586

    reportGroupTypeDetail ::= DETAIL
           | DE

    reportGroupTypeControlFooting ::= grp_587 grp_588

    reportGroupUsageClause ::= opt_591 grp_592

    reportGroupTypePageFooting ::= PAGE FOOTING
           | PF

    reportGroupTypeReportFooting ::= REPORT FOOTING
           | RF

    reportGroupValueClause ::= VALUE opt_593 literal

    programLibrarySection ::= PROGRAM_LIBRARY SECTION DOT_FS list_594

    libraryDescriptionEntry ::= libraryDescriptionEntryFormat1
           | libraryDescriptionEntryFormat2

    libraryDescriptionEntryFormat1 ::= LD libraryName EXPORT opt_595 opt_596

    libraryDescriptionEntryFormat2 ::= LB libraryName IMPORT opt_597 opt_598 list_600

    libraryAttributeClauseFormat1 ::= ATTRIBUTE opt_604

    libraryAttributeClauseFormat2 ::= ATTRIBUTE opt_605 opt_609 opt_610 opt_611

    libraryAttributeFunction ::= FUNCTIONNAME IS literal

    libraryAttributeParameter ::= LIBPARAMETER opt_612 literal

    libraryAttributeTitle ::= TITLE opt_613 literal

    libraryEntryProcedureClauseFormat1 ::= ENTRY_PROCEDURE programName opt_614

    libraryEntryProcedureClauseFormat2 ::= ENTRY_PROCEDURE programName opt_615 opt_616 opt_617 opt_618

    libraryEntryProcedureForClause ::= FOR literal

    libraryEntryProcedureGivingClause ::= GIVING dataName

    libraryEntryProcedureUsingClause ::= USING list_619

    libraryEntryProcedureUsingName ::= dataName
           | fileName

    libraryEntryProcedureWithClause ::= WITH list_620

    libraryEntryProcedureWithName ::= localName
           | fileName

    libraryIsCommonClause ::= opt_621 COMMON

    libraryIsGlobalClause ::= opt_622 GLOBAL

    dataDescriptionEntry ::= dataDescriptionEntryFormat1
           | dataDescriptionEntryFormat2
           | dataDescriptionEntryFormat3
           | dataDescriptionEntryExecSql

    dataDescriptionEntryFormat1 ::= grp_623 opt_625 list_627 DOT_FS

    dataDescriptionEntryFormat2 ::= LEVEL_NUMBER_66 dataName dataRenamesClause DOT_FS

    dataDescriptionEntryFormat3 ::= LEVEL_NUMBER_88 conditionName dataValueClause DOT_FS

    dataDescriptionEntryExecSql ::= list_628 opt_629

    dataAlignedClause ::= ALIGNED

    dataBlankWhenZeroClause ::= BLANK opt_630 grp_631

    dataCommonOwnLocalClause ::= COMMON
           | OWN
           | LOCAL

    dataExternalClause ::= opt_632 EXTERNAL opt_634

    dataGlobalClause ::= opt_635 GLOBAL

    dataIntegerStringClause ::= INTEGER
           | STRING

    dataJustifiedClause ::= grp_636 opt_637

    dataOccursClause ::= OCCURS integerLiteral opt_638 opt_639 opt_642 list_643 opt_648

    dataOccursTo ::= TO integerLiteral

    dataOccursSort ::= grp_649 opt_650 opt_651 list_652

    dataPictureClause ::= grp_653 opt_654 pictureString

    pictureString ::= list_658

    pictureChars ::= DOLLARCHAR
           | IDENTIFIER
           | NUMERICLITERAL
           | SLASHCHAR
           | COMMACHAR
           | DOT
           | COLONCHAR
           | ASTERISKCHAR
           | DOUBLEASTERISKCHAR
           | LPARENCHAR
           | RPARENCHAR
           | PLUSCHAR
           | MINUSCHAR
           | LESSTHANCHAR
           | MORETHANCHAR
           | integerLiteral

    pictureCardinality ::= LPARENCHAR integerLiteral RPARENCHAR

    dataReceivedByClause ::= opt_659 opt_660 grp_661

    dataRecordAreaClause ::= RECORD AREA

    dataRedefinesClause ::= REDEFINES dataName

    dataRenamesClause ::= RENAMES qualifiedDataName opt_664

    dataSignClause ::= opt_667 grp_668 opt_671

    dataSynchronizedClause ::= grp_672 opt_674

    dataThreadLocalClause ::= opt_675 THREAD_LOCAL

    dataTypeClause ::= TYPE opt_676 grp_677

    dataTypeDefClause ::= opt_678 TYPEDEF

    dataUsageClause ::= opt_681 grp_682

    dataUsingClause ::= USING grp_685 opt_686 grp_687

    dataValueClause ::= opt_691 dataValueInterval list_694

    dataValueInterval ::= dataValueIntervalFrom opt_695

    dataValueIntervalFrom ::= literal
           | cobolWord

    dataValueIntervalTo ::= grp_696 literal

    dataWithLowerBoundsClause ::= opt_697 LOWER BOUNDS

    procedureDivision ::= PROCEDURE DIVISION opt_698 opt_699 DOT_FS opt_700 procedureDivisionBody

    procedureDivisionUsingClause ::= grp_701 list_702

    procedureDivisionGivingClause ::= grp_703 dataName

    procedureDivisionUsingParameter ::= procedureDivisionByReferencePhrase
           | procedureDivisionByValuePhrase

    procedureDivisionByReferencePhrase ::= opt_706 list_707

    procedureDivisionByReference ::= grp_708
           | ANY

    procedureDivisionByValuePhrase ::= opt_711 VALUE list_712

    procedureDivisionByValue ::= identifier
           | literal
           | ANY

    procedureDeclaratives ::= DECLARATIVES DOT_FS list_713 END DECLARATIVES DOT_FS

    procedureDeclarative ::= procedureSectionHeader DOT_FS useStatement DOT_FS paragraphs

    procedureSectionHeader ::= sectionName SECTION opt_714

    procedureDivisionBody ::= paragraphs list_715

    procedureSection ::= procedureSectionHeader DOT_FS paragraphs

    paragraphs ::= list_716 list_717

    paragraph ::= paragraphName DOT_FS grp_718

    sentence ::= list_720 DOT_FS

    statement ::= acceptStatement
           | addStatement
           | alterStatement
           | callStatement
           | cancelStatement
           | closeStatement
           | computeStatement
           | continueStatement
           | deleteStatement
           | disableStatement
           | displayStatement
           | divideStatement
           | enableStatement
           | entryStatement
           | evaluateStatement
           | exhibitStatement
           | execCicsStatement
           | execSqlStatement
           | execSqlImsStatement
           | exitStatement
           | generateStatement
           | gobackStatement
           | goToStatement
           | ifStatement
           | initializeStatement
           | initiateStatement
           | inspectStatement
           | mergeStatement
           | moveStatement
           | multiplyStatement
           | openStatement
           | performStatement
           | purgeStatement
           | readStatement
           | receiveStatement
           | releaseStatement
           | returnStatement
           | rewriteStatement
           | searchStatement
           | sendStatement
           | setStatement
           | sortStatement
           | startStatement
           | stopStatement
           | stringStatement
           | subtractStatement
           | terminateStatement
           | unstringStatement
           | writeStatement

    acceptStatement ::= ACCEPT identifier opt_722 opt_723 opt_724 opt_725

    acceptFromDateStatement ::= FROM grp_726

    acceptFromMnemonicStatement ::= FROM mnemonicName

    acceptFromEscapeKeyStatement ::= FROM ESCAPE KEY

    acceptMessageCountStatement ::= opt_730 COUNT

    addStatement ::= ADD grp_731 opt_732 opt_733 opt_734

    addToStatement ::= list_735 TO list_736

    addToGivingStatement ::= list_737 opt_740 GIVING list_741

    addCorrespondingStatement ::= grp_742 identifier TO addTo

    addFrom ::= identifier
           | literal

    addTo ::= identifier opt_743

    addToGiving ::= identifier
           | literal

    addGiving ::= identifier opt_744

    alteredGoTo ::= GO opt_745 DOT_FS

    alterStatement ::= ALTER list_746

    alterProceedTo ::= procedureName TO opt_748 procedureName

    callStatement ::= CALL grp_749 opt_750 opt_751 opt_752 opt_753 opt_754 opt_755

    callUsingPhrase ::= USING list_756

    callUsingParameter ::= callByReferencePhrase
           | callByValuePhrase
           | callByContentPhrase

    callByReferencePhrase ::= opt_759 list_760

    callByReference ::= grp_761
           | OMITTED

    callByValuePhrase ::= opt_764 VALUE list_765

    callByValue ::= opt_768 grp_769

    callByContentPhrase ::= opt_770 CONTENT list_771

    callByContent ::= opt_774 identifier
           | literal
           | OMITTED

    callGivingPhrase ::= grp_775 identifier

    cancelStatement ::= CANCEL list_776

    cancelCall ::= libraryName grp_777
           | identifier
           | literal

    closeStatement ::= CLOSE list_778

    closeFile ::= fileName opt_780

    closeReelUnitStatement ::= grp_781 opt_784 opt_788

    closeRelativeStatement ::= opt_789 grp_790

    closePortFileIOStatement ::= grp_791 opt_795

    closePortFileIOUsing ::= closePortFileIOUsingCloseDisposition
           | closePortFileIOUsingAssociatedData
           | closePortFileIOUsingAssociatedDataLength

    closePortFileIOUsingCloseDisposition ::= CLOSE_DISPOSITION opt_796 grp_797

    closePortFileIOUsingAssociatedData ::= ASSOCIATED_DATA grp_798

    closePortFileIOUsingAssociatedDataLength ::= ASSOCIATED_DATA_LENGTH opt_799 grp_800

    computeStatement ::= COMPUTE list_801 grp_802 arithmeticExpression opt_803 opt_804 opt_805

    computeStore ::= identifier opt_806

    continueStatement ::= CONTINUE

    deleteStatement ::= DELETE fileName opt_807 opt_808 opt_809 opt_810

    disableStatement ::= DISABLE grp_811 cdName opt_813 KEY grp_814

    displayStatement ::= DISPLAY list_815 opt_816 opt_817 opt_818

    displayOperand ::= identifier
           | literal

    displayAt ::= AT grp_819

    displayUpon ::= UPON grp_820

    displayWith ::= opt_821 NO ADVANCING

    divideStatement ::= DIVIDE grp_822 grp_823 opt_824 opt_825 opt_826 opt_827

    divideIntoStatement ::= INTO list_828

    divideIntoGivingStatement ::= INTO grp_829 opt_830

    divideByGivingStatement ::= BY grp_831 opt_832

    divideGivingPhrase ::= GIVING list_833

    divideInto ::= identifier opt_834

    divideGiving ::= identifier opt_835

    divideRemainder ::= REMAINDER identifier

    enableStatement ::= ENABLE grp_836 cdName opt_838 KEY grp_839

    entryStatement ::= ENTRY literal opt_842

    evaluateStatement ::= EVALUATE evaluateSelect list_843 list_844 opt_845 opt_846

    evaluateSelect ::= identifier
           | literal
           | arithmeticExpression
           | condition

    evaluateAlsoSelect ::= ALSO evaluateSelect

    evaluateWhenPhrase ::= list_847 list_848

    evaluateWhen ::= WHEN evaluateCondition list_849

    evaluateCondition ::= ANY
           | opt_850 evaluateValue opt_851
           | condition
           | booleanLiteral

    evaluateThrough ::= grp_852 evaluateValue

    evaluateAlsoCondition ::= ALSO evaluateCondition

    evaluateWhenOther ::= WHEN OTHER list_853

    evaluateValue ::= identifier
           | literal
           | arithmeticExpression

    exhibitStatement ::= EXHIBIT opt_857 opt_858 list_859

    exhibitOperand ::= identifier
           | literal

    exitStatement ::= EXIT opt_860

    generateStatement ::= GENERATE reportName

    gobackStatement ::= GOBACK

    goToStatement ::= GO opt_861 grp_862

    goToStatementSimple ::= procedureName

    goToDependingOnStatement ::= MORE_LABELS
           | list_863 opt_866

    ifStatement ::= IF condition ifThen opt_867 opt_868

    ifThen ::= opt_869 grp_870

    ifElse ::= ELSE grp_872

    initializeStatement ::= INITIALIZE list_874 opt_875

    initializeReplacingPhrase ::= REPLACING list_876

    initializeReplacingBy ::= grp_877 opt_878 BY grp_879

    initiateStatement ::= INITIATE list_880

    inspectStatement ::= INSPECT identifier grp_881

    inspectTallyingPhrase ::= TALLYING list_882

    inspectReplacingPhrase ::= REPLACING list_884

    inspectTallyingReplacingPhrase ::= TALLYING list_885 list_886

    inspectConvertingPhrase ::= CONVERTING grp_887 inspectTo list_888

    inspectFor ::= identifier FOR list_890

    inspectCharacters ::= CHARACTERS list_891

    inspectReplacingCharacters ::= CHARACTERS inspectBy list_892

    inspectAllLeadings ::= grp_893 list_894

    inspectReplacingAllLeadings ::= grp_895 list_896

    inspectAllLeading ::= grp_897 list_898

    inspectReplacingAllLeading ::= grp_899 inspectBy list_900

    inspectBy ::= BY grp_901

    inspectTo ::= TO grp_902

    inspectBeforeAfter ::= grp_903 opt_904 grp_905

    mergeStatement ::= MERGE fileName list_906 opt_907 list_908 opt_909 list_910

    mergeOnKeyClause ::= opt_911 grp_912 opt_913 list_914

    mergeCollatingSequencePhrase ::= opt_915 SEQUENCE opt_916 list_917 opt_918 opt_919

    mergeCollatingAlphanumeric ::= opt_920 ALPHANUMERIC IS alphabetName

    mergeCollatingNational ::= opt_921 NATIONAL opt_922 alphabetName

    mergeUsing ::= USING list_923

    mergeOutputProcedurePhrase ::= OUTPUT PROCEDURE opt_924 procedureName opt_925

    mergeOutputThrough ::= grp_926 procedureName

    mergeGivingPhrase ::= GIVING list_927

    mergeGiving ::= fileName opt_929

    moveStatement ::= MOVE opt_930 grp_931

    moveToStatement ::= moveToSendingArea TO list_932

    moveToSendingArea ::= identifier
           | literal

    moveCorrespondingToStatement ::= grp_933 moveCorrespondingToSendingArea TO list_934

    moveCorrespondingToSendingArea ::= identifier

    multiplyStatement ::= MULTIPLY grp_935 BY grp_936 opt_937 opt_938 opt_939

    multiplyRegular ::= list_940

    multiplyRegularOperand ::= identifier opt_941

    multiplyGiving ::= multiplyGivingOperand GIVING list_942

    multiplyGivingOperand ::= identifier
           | literal

    multiplyGivingResult ::= identifier opt_943

    openStatement ::= OPEN list_945

    openInputStatement ::= INPUT list_946

    openInput ::= fileName opt_949

    openOutputStatement ::= OUTPUT list_950

    openOutput ::= fileName opt_953

    openIOStatement ::= I_O list_954

    openExtendStatement ::= EXTEND list_955

    performStatement ::= PERFORM grp_956

    performInlineStatement ::= opt_957 list_958 END_PERFORM

    performProcedureStatement ::= procedureName opt_961 opt_962

    performType ::= performTimes
           | performUntil
           | performVarying

    performTimes ::= grp_963 TIMES

    performUntil ::= opt_964 UNTIL condition

    performVarying ::= performTestClause performVaryingClause
           | performVaryingClause opt_965

    performVaryingClause ::= VARYING performVaryingPhrase list_966

    performVaryingPhrase ::= grp_967 performFrom performBy performUntil

    performAfter ::= AFTER performVaryingPhrase

    performFrom ::= FROM grp_968

    performBy ::= BY grp_969

    performTestClause ::= opt_970 TEST grp_971

    purgeStatement ::= PURGE list_972

    readStatement ::= READ fileName opt_973 opt_974 opt_975 opt_976 opt_977 opt_978 opt_979 opt_980 opt_981 opt_982

    readInto ::= INTO identifier

    readWith ::= opt_983 grp_984

    readKey ::= KEY opt_986 qualifiedDataName

    receiveStatement ::= RECEIVE grp_987 opt_988 opt_989 opt_990

    receiveFromStatement ::= dataName FROM receiveFrom list_992

    receiveFrom ::= THREAD dataName
           | LAST THREAD
           | ANY THREAD

    receiveIntoStatement ::= cdName grp_993 opt_994 identifier opt_995 opt_996

    receiveNoData ::= NO DATA list_997

    receiveWithData ::= WITH DATA list_998

    receiveBefore ::= BEFORE opt_999 grp_1000

    receiveWith ::= opt_1001 NO WAIT

    receiveThread ::= THREAD opt_1002 dataName

    receiveSize ::= SIZE opt_1003 grp_1004

    receiveStatus ::= STATUS opt_1005 identifier

    releaseStatement ::= RELEASE recordName opt_1007

    returnStatement ::= RETURN fileName opt_1008 opt_1009 atEndPhrase opt_1010 opt_1011

    returnInto ::= INTO qualifiedDataName

    rewriteStatement ::= REWRITE recordName opt_1012 opt_1013 opt_1014 opt_1015

    rewriteFrom ::= FROM identifier

    searchStatement ::= SEARCH opt_1016 qualifiedDataName opt_1017 opt_1018 list_1019 opt_1020

    searchVarying ::= VARYING qualifiedDataName

    searchWhen ::= WHEN condition grp_1021

    sendStatement ::= SEND grp_1023 opt_1024 opt_1025

    sendStatementSync ::= grp_1026 opt_1027 opt_1028 opt_1029 opt_1030

    sendStatementAsync ::= TO grp_1031 identifier

    sendFromPhrase ::= FROM identifier

    sendWithPhrase ::= WITH grp_1032

    sendReplacingPhrase ::= REPLACING opt_1033

    sendAdvancingPhrase ::= grp_1034 opt_1035 grp_1036

    sendAdvancingPage ::= PAGE

    sendAdvancingLines ::= grp_1037 opt_1039

    sendAdvancingMnemonic ::= mnemonicName

    setStatement ::= SET grp_1040

    setToStatement ::= list_1042 TO list_1043

    setUpDownByStatement ::= list_1044 grp_1045 setByValue

    setTo ::= identifier

    setToValue ::= ON
           | OFF
           | ENTRY grp_1046
           | identifier
           | literal

    setByValue ::= identifier
           | literal

    sortStatement ::= SORT fileName list_1047 opt_1048 opt_1049 opt_1050 list_1051 opt_1052 list_1053

    sortOnKeyClause ::= opt_1054 grp_1055 opt_1056 list_1057

    sortDuplicatesPhrase ::= opt_1058 DUPLICATES opt_1059 opt_1060

    sortCollatingSequencePhrase ::= opt_1061 SEQUENCE opt_1062 list_1063 opt_1064 opt_1065

    sortCollatingAlphanumeric ::= opt_1066 ALPHANUMERIC IS alphabetName

    sortCollatingNational ::= opt_1067 NATIONAL opt_1068 alphabetName

    sortInputProcedurePhrase ::= INPUT PROCEDURE opt_1069 procedureName opt_1070

    sortInputThrough ::= grp_1071 procedureName

    sortUsing ::= USING list_1072

    sortOutputProcedurePhrase ::= OUTPUT PROCEDURE opt_1073 procedureName opt_1074

    sortOutputThrough ::= grp_1075 procedureName

    sortGivingPhrase ::= GIVING list_1076

    sortGiving ::= fileName opt_1078

    startStatement ::= START fileName opt_1079 opt_1080 opt_1081 opt_1082

    startKey ::= KEY opt_1083 grp_1084 qualifiedDataName

    stopStatement ::= STOP grp_1090

    stringStatement ::= STRING list_1091 stringIntoPhrase opt_1092 opt_1093 opt_1094 opt_1095

    stringSendingPhrase ::= list_1096 grp_1097

    stringSending ::= identifier
           | literal

    stringDelimitedByPhrase ::= DELIMITED opt_1098 grp_1099

    stringForPhrase ::= FOR grp_1100

    stringIntoPhrase ::= INTO identifier

    stringWithPointerPhrase ::= opt_1101 POINTER qualifiedDataName

    subtractStatement ::= SUBTRACT grp_1102 opt_1103 opt_1104 opt_1105

    subtractFromStatement ::= list_1106 FROM list_1107

    subtractFromGivingStatement ::= list_1108 FROM subtractMinuendGiving GIVING list_1109

    subtractCorrespondingStatement ::= grp_1110 qualifiedDataName FROM subtractMinuendCorresponding

    subtractSubtrahend ::= identifier
           | literal

    subtractMinuend ::= identifier opt_1111

    subtractMinuendGiving ::= identifier
           | literal

    subtractGiving ::= identifier opt_1112

    subtractMinuendCorresponding ::= qualifiedDataName opt_1113

    terminateStatement ::= TERMINATE reportName

    unstringStatement ::= UNSTRING unstringSendingPhrase unstringIntoPhrase opt_1114 opt_1115 opt_1116 opt_1117 opt_1118

    unstringSendingPhrase ::= identifier opt_1121

    unstringDelimitedByPhrase ::= DELIMITED opt_1122 opt_1123 grp_1124

    unstringOrAllPhrase ::= OR opt_1125 grp_1126

    unstringIntoPhrase ::= INTO list_1127

    unstringInto ::= identifier opt_1128 opt_1129

    unstringDelimiterIn ::= DELIMITER opt_1130 identifier

    unstringCountIn ::= COUNT opt_1131 identifier

    unstringWithPointerPhrase ::= opt_1132 POINTER qualifiedDataName

    unstringTallyingPhrase ::= TALLYING opt_1133 qualifiedDataName

    useStatement ::= USE grp_1134

    useAfterClause ::= opt_1135 AFTER opt_1136 grp_1137 PROCEDURE opt_1138 useAfterOn

    useAfterOn ::= INPUT
           | OUTPUT
           | I_O
           | EXTEND
           | list_1139

    useDebugClause ::= opt_1140 DEBUGGING opt_1141 list_1142

    useDebugOn ::= ALL PROCEDURES
           | ALL opt_1143 opt_1144 identifier
           | procedureName
           | fileName

    writeStatement ::= WRITE recordName opt_1145 opt_1146 opt_1147 opt_1148 opt_1149 opt_1150 opt_1151

    writeFromPhrase ::= FROM grp_1152

    writeAdvancingPhrase ::= grp_1153 opt_1154 grp_1155

    writeAdvancingPage ::= PAGE

    writeAdvancingLines ::= grp_1156 opt_1158

    writeAdvancingMnemonic ::= mnemonicName

    writeAtEndOfPagePhrase ::= opt_1159 grp_1160 list_1161

    writeNotAtEndOfPagePhrase ::= NOT opt_1162 grp_1163 list_1164

    atEndPhrase ::= opt_1165 END list_1166

    notAtEndPhrase ::= NOT opt_1167 END list_1168

    invalidKeyPhrase ::= INVALID opt_1169 list_1170

    notInvalidKeyPhrase ::= NOT INVALID opt_1171 list_1172

    onOverflowPhrase ::= opt_1173 OVERFLOW list_1174

    notOnOverflowPhrase ::= NOT opt_1175 OVERFLOW list_1176

    onSizeErrorPhrase ::= opt_1177 SIZE ERROR list_1178

    notOnSizeErrorPhrase ::= NOT opt_1179 SIZE ERROR list_1180

    onExceptionClause ::= opt_1181 EXCEPTION list_1182

    notOnExceptionClause ::= NOT opt_1183 EXCEPTION list_1184

    arithmeticExpression ::= multDivs list_1185

    plusMinus ::= grp_1186 multDivs

    multDivs ::= powers list_1187

    multDiv ::= grp_1188 powers

    powers ::= opt_1190 basis list_1191

    power ::= DOUBLEASTERISKCHAR basis

    basis ::= LPARENCHAR arithmeticExpression RPARENCHAR
           | identifier
           | literal

    condition ::= combinableCondition list_1192

    andOrCondition ::= grp_1193 grp_1194

    combinableCondition ::= opt_1196 simpleCondition

    simpleCondition ::= LPARENCHAR condition RPARENCHAR
           | relationCondition
           | classCondition
           | conditionNameReference

    classCondition ::= identifier opt_1197 opt_1198 grp_1199

    conditionNameReference ::= conditionName grp_1200

    conditionNameSubscriptReference ::= LPARENCHAR subscript_ list_1207 RPARENCHAR

    relationCondition ::= relationSignCondition
           | relationArithmeticComparison
           | relationCombinedComparison

    relationSignCondition ::= arithmeticExpression opt_1208 opt_1209 grp_1210

    relationArithmeticComparison ::= arithmeticExpression relationalOperator arithmeticExpression

    relationCombinedComparison ::= arithmeticExpression relationalOperator LPARENCHAR relationCombinedCondition RPARENCHAR

    relationCombinedCondition ::= arithmeticExpression list_1213

    relationalOperator ::= opt_1215 grp_1216

    abbreviation ::= opt_1226 opt_1227 grp_1228

    identifier ::= qualifiedDataName
           | tableCall
           | functionCall
           | specialRegister

    tableCall ::= qualifiedDataName list_1233 opt_1234

    functionCall ::= FUNCTION functionName list_1239 opt_1240

    referenceModifier ::= LPARENCHAR characterPosition COLONCHAR opt_1241 RPARENCHAR

    characterPosition ::= arithmeticExpression

    length ::= arithmeticExpression

    subscript_ ::= ALL
           | integerLiteral
           | qualifiedDataName opt_1242
           | indexName opt_1243
           | arithmeticExpression

    argument ::= literal
           | identifier
           | qualifiedDataName opt_1244
           | indexName opt_1245
           | arithmeticExpression

    qualifiedDataName ::= qualifiedDataNameFormat1
           | qualifiedDataNameFormat2
           | qualifiedDataNameFormat3
           | qualifiedDataNameFormat4

    qualifiedDataNameFormat1 ::= grp_1246 opt_1250

    qualifiedDataNameFormat2 ::= paragraphName inSection

    qualifiedDataNameFormat3 ::= textName inLibrary

    qualifiedDataNameFormat4 ::= LINAGE_COUNTER inFile

    qualifiedInData ::= inData
           | inTable

    inData ::= grp_1251 dataName

    inFile ::= grp_1252 fileName

    inMnemonic ::= grp_1253 mnemonicName

    inSection ::= grp_1254 sectionName

    inLibrary ::= grp_1255 libraryName

    inTable ::= grp_1256 tableCall

    alphabetName ::= cobolWord

    assignmentName ::= systemName

    basisName ::= programName

    cdName ::= cobolWord

    className ::= cobolWord

    computerName ::= systemName

    conditionName ::= cobolWord

    dataName ::= cobolWord

    dataDescName ::= FILLER
           | CURSOR
           | dataName

    environmentName ::= systemName

    fileName ::= cobolWord

    functionName ::= INTEGER
           | LENGTH
           | RANDOM
           | SUM
           | WHEN_COMPILED
           | cobolWord

    indexName ::= cobolWord

    languageName ::= systemName

    libraryName ::= cobolWord

    localName ::= cobolWord

    mnemonicName ::= cobolWord

    paragraphName ::= cobolWord
           | integerLiteral

    procedureName ::= paragraphName opt_1257
           | sectionName

    programName ::= NONNUMERICLITERAL
           | cobolWord

    recordName ::= qualifiedDataName

    reportName ::= qualifiedDataName

    routineName ::= cobolWord

    screenName ::= cobolWord

    sectionName ::= cobolWord
           | integerLiteral

    systemName ::= cobolWord

    symbolicCharacter ::= cobolWord

    textName ::= cobolWord

    booleanLiteral ::= TRUE
           | FALSE

    numericLiteral ::= NUMERICLITERAL
           | ZERO
           | integerLiteral

    integerLiteral ::= INTEGERLITERAL
           | LEVEL_NUMBER_66
           | LEVEL_NUMBER_77
           | LEVEL_NUMBER_88

    cicsDfhRespLiteral ::= DFHRESP LPARENCHAR grp_1258 RPARENCHAR

    cicsDfhValueLiteral ::= DFHVALUE LPARENCHAR grp_1259 RPARENCHAR

    figurativeConstant ::= ALL literal
           | HIGH_VALUE
           | HIGH_VALUES
           | LOW_VALUE
           | LOW_VALUES
           | NULL_
           | NULLS
           | QUOTE
           | QUOTES
           | SPACE
           | SPACES
           | ZERO
           | ZEROS
           | ZEROES

    specialRegister ::= ADDRESS OF identifier
           | DATE
           | DAY
           | DAY_OF_WEEK
           | DEBUG_CONTENTS
           | DEBUG_ITEM
           | DEBUG_LINE
           | DEBUG_NAME
           | DEBUG_SUB_1
           | DEBUG_SUB_2
           | DEBUG_SUB_3
           | LENGTH opt_1260 identifier
           | LINAGE_COUNTER
           | LINE_COUNTER
           | PAGE_COUNTER
           | RETURN_CODE
           | SHIFT_IN
           | SHIFT_OUT
           | SORT_CONTROL
           | SORT_CORE_SIZE
           | SORT_FILE_SIZE
           | SORT_MESSAGE
           | SORT_MODE_SIZE
           | SORT_RETURN
           | TALLY
           | TIME
           | WHEN_COMPILED

    commentEntry ::= list_1261

    grp_1 ::= compilerOptions | copyStatement | execCicsStatement | execSqlStatement | execSqlImsStatement | replaceOffStatement | replaceArea | ejectStatement | skipStatement | titleStatement | charDataLine | NEWLINE

    list_2 ::= $empty | list_2 grp_1

    grp_3 ::= PROCESS | CBL

    opt_5 ::= COMMACHAR | $empty

    grp_4 ::= opt_5 compilerOption | compilerXOpts

    list_6 ::= grp_4 | list_6 grp_4

    opt_7 ::= COMMACHAR | $empty

    seq_8 ::= opt_7 compilerOption

    list_9 ::= $empty | list_9 seq_8

    grp_10 ::= ARITH | AR

    grp_11 ::= EXTEND | E_CHAR | COMPAT | C_CHAR

    grp_12 ::= BUFSIZE | BUF

    seq_13 ::= LPARENCHAR literal RPARENCHAR

    opt_14 ::= seq_13 | $empty

    grp_15 ::= CODEPAGE | CP

    grp_16 ::= COMPILE | C_CHAR

    grp_17 ::= CURRENCY | CURR

    grp_18 ::= DATEPROC | DP

    grp_20 ::= FLAG | NOFLAG

    opt_21 ::= grp_20 | $empty

    opt_22 ::= COMMACHAR | $empty

    grp_23 ::= TRIG | NOTRIG

    opt_24 ::= grp_23 | $empty

    grp_19 ::= LPARENCHAR opt_21 opt_22 opt_24 RPARENCHAR

    opt_25 ::= grp_19 | $empty

    grp_26 ::= DECK | D_CHAR

    grp_27 ::= DIAGTRUNC | DTR

    grp_28 ::= DUMP | DU

    grp_29 ::= DYNAM | DYN

    grp_30 ::= EXPORTALL | EXP

    grp_31 ::= FASTSRT | FSRT

    grp_32 ::= FLAG | F_CHAR

    grp_33 ::= E_CHAR | I_CHAR | S_CHAR | U_CHAR | W_CHAR

    grp_35 ::= E_CHAR | I_CHAR | S_CHAR | U_CHAR | W_CHAR

    grp_34 ::= COMMACHAR grp_35

    opt_36 ::= grp_34 | $empty

    grp_37 ::= M_CHAR | I_CHAR | H_CHAR

    grp_39 ::= D_CHAR | DD | N_CHAR | NN | S_CHAR | SS

    grp_38 ::= COMMACHAR grp_39

    opt_40 ::= grp_38 | $empty

    grp_41 ::= ANSI | LILIAN

    grp_42 ::= LANGUAGE | LANG

    grp_43 ::= ENGLISH | CS | EN | JA | JP | KA | UE

    grp_44 ::= LINECOUNT | LC

    seq_45 ::= COMMACHAR literal

    opt_46 ::= seq_45 | $empty

    grp_47 ::= MDECK | MD

    grp_49 ::= C_CHAR | COMPILE | NOC | NOCOMPILE

    grp_48 ::= LPARENCHAR grp_49 RPARENCHAR

    opt_50 ::= grp_48 | $empty

    grp_52 ::= ALIAS | NOALIAS

    grp_51 ::= LPARENCHAR grp_52 RPARENCHAR

    opt_53 ::= grp_51 | $empty

    grp_54 ::= CS | EN | KA

    grp_55 ::= NOCOMPILE | NOC

    grp_57 ::= S_CHAR | E_CHAR | W_CHAR

    grp_56 ::= LPARENCHAR grp_57 RPARENCHAR

    opt_58 ::= grp_56 | $empty

    grp_59 ::= NOCURRENCY | NOCURR

    grp_60 ::= NODATEPROC | NODP

    grp_61 ::= NODECK | NOD

    grp_62 ::= NODUMP | NODU

    grp_63 ::= NODIAGTRUNC | NODTR

    grp_64 ::= NODYNAM | NODYN

    grp_65 ::= NOEXPORTALL | NOEXP

    grp_66 ::= NOFASTSRT | NOFSRT

    grp_67 ::= NOFLAG | NOF

    grp_68 ::= NOMDECK | NOMD

    grp_69 ::= NONUMBER | NONUM

    grp_70 ::= NOOBJECT | NOOBJ

    grp_71 ::= NOOFFSET | NOOFF

    grp_72 ::= NOOPTIMIZE | NOOPT

    grp_73 ::= NOSEQUENCE | NOSEQ

    grp_74 ::= NOSOURCE | NOS

    grp_75 ::= NOSQLCCSID | NOSQLC

    grp_76 ::= NOSSRANGE | NOSSR

    grp_77 ::= NOTERMINAL | NOTERM

    grp_78 ::= NOWORD | NOWD

    grp_79 ::= NSYMBOL | NS

    grp_80 ::= NATIONAL | NAT | DBCS

    grp_81 ::= NOXREF | NOX

    grp_82 ::= NUMBER | NUM

    grp_83 ::= MIG | NOPFD | PFD

    grp_84 ::= OBJECT | OBJ

    grp_85 ::= OFFSET | OFF

    seq_86 ::= COMMACHAR literal

    opt_87 ::= seq_86 | $empty

    grp_88 ::= OPTIMIZE | OPT

    grp_90 ::= FULL | STD

    grp_89 ::= LPARENCHAR grp_90 RPARENCHAR

    opt_91 ::= grp_89 | $empty

    grp_92 ::= OUTDD | OUT

    grp_93 ::= PGMNAME | PGMN

    grp_94 ::= CO | COMPAT | LM | LONGMIXED | LONGUPPER | LU | M_CHAR | MIXED | U_CHAR | UPPER

    grp_95 ::= QUOTE | Q_CHAR

    grp_96 ::= ANY | AUTO | literal

    grp_97 ::= SEQUENCE | SEQ

    seq_98 ::= LPARENCHAR literal COMMACHAR literal RPARENCHAR

    opt_99 ::= seq_98 | $empty

    grp_100 ::= SIZE | SZ

    grp_101 ::= MAX | literal

    grp_102 ::= SOURCE | S_CHAR

    seq_103 ::= LPARENCHAR literal RPARENCHAR

    opt_104 ::= seq_103 | $empty

    grp_105 ::= SQLCCSID | SQLC

    grp_106 ::= SSRANGE | SSR

    grp_107 ::= TERMINAL | TERM

    grp_109 ::= HOOK | NOHOOK

    opt_110 ::= grp_109 | $empty

    opt_111 ::= COMMACHAR | $empty

    grp_112 ::= SEP | SEPARATE | NOSEP | NOSEPARATE

    opt_113 ::= grp_112 | $empty

    opt_114 ::= COMMACHAR | $empty

    grp_115 ::= EJPD | NOEJPD

    opt_116 ::= grp_115 | $empty

    grp_108 ::= LPARENCHAR opt_110 opt_111 opt_113 opt_114 opt_116 RPARENCHAR

    opt_117 ::= grp_108 | $empty

    grp_118 ::= BIN | OPT | STD

    grp_119 ::= WORD | WD

    grp_120 ::= XMLPARSE | XP

    grp_121 ::= COMPAT | C_CHAR | XMLSS | X_CHAR

    grp_122 ::= XREF | X_CHAR

    grp_124 ::= FULL | SHORT

    opt_125 ::= grp_124 | $empty

    grp_123 ::= LPARENCHAR opt_125 RPARENCHAR

    opt_126 ::= grp_123 | $empty

    grp_127 ::= YEARWINDOW | YW

    opt_128 ::= DOT | $empty

    opt_129 ::= DOT | $empty

    opt_130 ::= DOT | $empty

    list_132 ::= $empty | list_132 NEWLINE

    grp_133 ::= directoryPhrase | familyPhrase | replacingPhrase | SUPPRESS

    grp_131 ::= list_132 grp_133

    list_134 ::= $empty | list_134 grp_131

    list_135 ::= $empty | list_135 NEWLINE

    grp_136 ::= literal | cobolWord | filename

    grp_138 ::= OF | IN

    grp_137 ::= grp_138 copyLibrary

    opt_139 ::= grp_137 | $empty

    list_140 ::= $empty | list_140 NEWLINE

    list_141 ::= NEWLINE | list_141 NEWLINE

    seq_142 ::= list_141 replaceClause

    list_143 ::= $empty | list_143 seq_142

    grp_144 ::= copyStatement | charData

    list_145 ::= $empty | list_145 grp_144

    opt_146 ::= replaceOffStatement | $empty

    list_147 ::= $empty | list_147 NEWLINE

    seq_148 ::= list_147 replaceClause

    list_149 ::= seq_148 | list_149 seq_148

    list_150 ::= $empty | list_150 NEWLINE

    list_151 ::= $empty | list_151 NEWLINE

    list_152 ::= $empty | list_152 NEWLINE

    seq_153 ::= list_152 directoryPhrase

    opt_154 ::= seq_153 | $empty

    list_155 ::= $empty | list_155 NEWLINE

    seq_156 ::= list_155 familyPhrase

    opt_157 ::= seq_156 | $empty

    grp_158 ::= OF | IN

    list_159 ::= $empty | list_159 NEWLINE

    grp_160 ::= literal | cobolWord

    list_161 ::= $empty | list_161 NEWLINE

    grp_162 ::= literal | cobolWord

    opt_163 ::= DOT | $empty

    grp_164 ::= SKIP1 | SKIP2 | SKIP3

    opt_165 ::= DOT | $empty

    opt_166 ::= DOT | $empty

    opt_167 ::= charData | $empty

    grp_168 ::= charDataLine | NEWLINE

    list_169 ::= grp_168 | list_169 grp_168

    grp_170 ::= charDataLine | COPY | REPLACE | NEWLINE

    list_171 ::= grp_170 | list_171 grp_170

    grp_172 ::= cobolWord | literal | filename | TEXT | DOT | LPARENCHAR | RPARENCHAR

    list_173 ::= grp_172 | list_173 grp_172

    list_174 ::= programUnit | list_174 programUnit

    opt_175 ::= environmentDivision | $empty

    opt_176 ::= dataDivision | $empty

    opt_177 ::= procedureDivision | $empty

    list_178 ::= $empty | list_178 programUnit

    opt_179 ::= endProgramStatement | $empty

    grp_180 ::= IDENTIFICATION | ID

    list_181 ::= $empty | list_181 identificationDivisionBody

    opt_183 ::= IS | $empty

    grp_184 ::= COMMON | INITIAL | LIBRARY | DEFINITION | RECURSIVE

    opt_185 ::= PROGRAM | $empty

    grp_182 ::= opt_183 grp_184 opt_185

    opt_186 ::= grp_182 | $empty

    opt_187 ::= DOT_FS | $empty

    opt_188 ::= commentEntry | $empty

    opt_189 ::= commentEntry | $empty

    opt_190 ::= commentEntry | $empty

    opt_191 ::= commentEntry | $empty

    opt_192 ::= commentEntry | $empty

    opt_193 ::= commentEntry | $empty

    opt_194 ::= commentEntry | $empty

    list_195 ::= $empty | list_195 environmentDivisionBody

    list_196 ::= $empty | list_196 configurationSectionParagraph

    opt_197 ::= WITH | $empty

    seq_198 ::= opt_197 DEBUGGING MODE

    opt_199 ::= seq_198 | $empty

    list_200 ::= $empty | list_200 objectComputerClause

    opt_201 ::= SIZE | $empty

    grp_202 ::= integerLiteral | cobolWord

    grp_203 ::= WORDS | CHARACTERS | MODULES

    opt_204 ::= grp_203 | $empty

    opt_205 ::= SIZE | $empty

    opt_206 ::= IS | $empty

    grp_207 ::= integerLiteral | cobolWord

    grp_208 ::= WORDS | MODULES

    opt_209 ::= grp_208 | $empty

    opt_210 ::= PROGRAM | $empty

    opt_211 ::= COLLATING | $empty

    opt_212 ::= IS | $empty

    list_213 ::= alphabetName | list_213 alphabetName

    seq_214 ::= opt_212 list_213

    opt_215 ::= collatingSequenceClauseAlphanumeric | $empty

    opt_216 ::= collatingSequenceClauseNational | $empty

    opt_217 ::= FOR | $empty

    opt_218 ::= IS | $empty

    opt_219 ::= FOR | $empty

    opt_220 ::= IS | $empty

    opt_221 ::= IS | $empty

    list_222 ::= specialNameClause | list_222 specialNameClause

    seq_223 ::= list_222 DOT_FS

    opt_224 ::= seq_223 | $empty

    seq_225 ::= FOR ALPHANUMERIC

    opt_226 ::= seq_225 | $empty

    opt_227 ::= IS | $empty

    list_229 ::= alphabetLiterals | list_229 alphabetLiterals

    grp_228 ::= EBCDIC | ASCII | STANDARD_1 | STANDARD_2 | NATIVE | cobolWord | list_229

    list_231 ::= alphabetAlso | list_231 alphabetAlso

    grp_230 ::= alphabetThrough | list_231

    opt_232 ::= grp_230 | $empty

    grp_233 ::= THROUGH | THRU

    list_234 ::= literal | list_234 literal

    opt_235 ::= FOR | $empty

    opt_236 ::= IS | $empty

    grp_237 ::= NATIVE | CCSVERSION literal

    opt_238 ::= IS | $empty

    opt_240 ::= FOR | $empty

    grp_241 ::= ALPHANUMERIC | NATIONAL

    grp_239 ::= opt_240 grp_241

    opt_242 ::= grp_239 | $empty

    opt_243 ::= IS | $empty

    list_244 ::= classClauseThrough | list_244 classClauseThrough

    grp_246 ::= THROUGH | THRU

    grp_245 ::= grp_246 classClauseTo

    opt_247 ::= grp_245 | $empty

    opt_248 ::= SIGN | $empty

    opt_249 ::= IS | $empty

    opt_250 ::= WITH | $empty

    seq_251 ::= opt_250 PICTURE SYMBOL literal

    opt_252 ::= seq_251 | $empty

    opt_253 ::= IS | $empty

    grp_254 ::= COMPUTATIONAL | COMP

    opt_255 ::= grp_254 | $empty

    opt_256 ::= IS | $empty

    seq_257 ::= SIGN opt_256

    opt_258 ::= seq_257 | $empty

    grp_259 ::= LEADING | TRAILING

    opt_260 ::= grp_259 | $empty

    opt_261 ::= CHARACTER | $empty

    seq_262 ::= SEPARATE opt_261

    opt_263 ::= IS | $empty

    seq_264 ::= SIGN opt_263

    opt_265 ::= seq_264 | $empty

    grp_266 ::= LEADING | TRAILING

    opt_267 ::= CHARACTER | $empty

    seq_268 ::= SEPARATE opt_267

    opt_269 ::= seq_268 | $empty

    opt_270 ::= IS | $empty

    opt_271 ::= environmentSwitchNameSpecialNamesStatusPhrase | $empty

    opt_272 ::= STATUS | $empty

    opt_273 ::= IS | $empty

    opt_274 ::= STATUS | $empty

    opt_275 ::= IS | $empty

    seq_276 ::= OFF opt_274 opt_275 condition

    opt_277 ::= seq_276 | $empty

    opt_278 ::= STATUS | $empty

    opt_279 ::= IS | $empty

    opt_280 ::= STATUS | $empty

    opt_281 ::= IS | $empty

    seq_282 ::= ON opt_280 opt_281 condition

    opt_283 ::= seq_282 | $empty

    opt_284 ::= IS | $empty

    opt_285 ::= WORDS | $empty

    opt_286 ::= LIST | $empty

    opt_287 ::= IS | $empty

    opt_288 ::= CAPABLE | $empty

    opt_289 ::= CHARACTERS | $empty

    opt_291 ::= FOR | $empty

    grp_292 ::= ALPHANUMERIC | NATIONAL

    grp_290 ::= opt_291 grp_292

    opt_293 ::= grp_290 | $empty

    list_294 ::= symbolicCharacters | list_294 symbolicCharacters

    seq_295 ::= IN alphabetName

    opt_296 ::= seq_295 | $empty

    list_297 ::= symbolicCharacter | list_297 symbolicCharacter

    grp_298 ::= IS | ARE

    opt_299 ::= grp_298 | $empty

    list_300 ::= integerLiteral | list_300 integerLiteral

    list_301 ::= $empty | list_301 inputOutputSectionParagraph

    opt_302 ::= DOT_FS | $empty

    seq_303 ::= opt_302 fileControlEntry

    list_304 ::= $empty | list_304 seq_303

    list_305 ::= $empty | list_305 fileControlClause

    opt_306 ::= OPTIONAL | $empty

    opt_307 ::= TO | $empty

    grp_308 ::= DISK | DISPLAY | KEYBOARD | PORT | PRINTER | READER | REMOTE | TAPE | VIRTUAL | assignmentName | literal

    grp_309 ::= NO | integerLiteral

    opt_310 ::= ALTERNATE | $empty

    grp_311 ::= AREA | AREAS

    opt_312 ::= grp_311 | $empty

    opt_313 ::= IS | $empty

    seq_314 ::= ORGANIZATION opt_313

    opt_315 ::= seq_314 | $empty

    grp_316 ::= LINE | RECORD BINARY | RECORD | BINARY

    opt_317 ::= grp_316 | $empty

    grp_318 ::= SEQUENTIAL | RELATIVE | INDEXED

    opt_319 ::= CHARACTER | $empty

    opt_320 ::= IS | $empty

    grp_321 ::= qualifiedDataName | literal

    opt_322 ::= IS | $empty

    grp_323 ::= STANDARD_1 | IMPLICIT | assignmentName

    opt_324 ::= MODE | $empty

    opt_325 ::= IS | $empty

    grp_326 ::= SEQUENTIAL | RANDOM | DYNAMIC | EXCLUSIVE

    opt_327 ::= KEY | $empty

    opt_328 ::= IS | $empty

    opt_329 ::= passwordClause | $empty

    opt_330 ::= WITH | $empty

    seq_331 ::= opt_330 DUPLICATES

    opt_332 ::= seq_331 | $empty

    opt_333 ::= KEY | $empty

    opt_334 ::= IS | $empty

    opt_335 ::= passwordClause | $empty

    opt_336 ::= WITH | $empty

    seq_337 ::= opt_336 DUPLICATES

    opt_338 ::= seq_337 | $empty

    opt_339 ::= IS | $empty

    opt_340 ::= FILE | $empty

    opt_341 ::= IS | $empty

    opt_342 ::= qualifiedDataName | $empty

    opt_343 ::= KEY | $empty

    opt_344 ::= IS | $empty

    seq_345 ::= fileName DOT_FS

    opt_346 ::= seq_345 | $empty

    list_347 ::= $empty | list_347 ioControlClause

    seq_348 ::= list_347 DOT_FS

    opt_349 ::= seq_348 | $empty

    grp_351 ::= assignmentName | fileName

    grp_350 ::= ON grp_351

    opt_352 ::= grp_350 | $empty

    grp_353 ::= rerunEveryRecords | rerunEveryOf | rerunEveryClock

    opt_354 ::= END | $empty

    opt_355 ::= OF | $empty

    grp_356 ::= REEL | UNIT

    opt_357 ::= CLOCK_UNITS | $empty

    grp_358 ::= RECORD | SORT | SORT_MERGE

    opt_359 ::= grp_358 | $empty

    opt_360 ::= AREA | $empty

    opt_361 ::= FOR | $empty

    list_362 ::= fileName | list_362 fileName

    opt_363 ::= TAPE | $empty

    opt_364 ::= CONTAINS | $empty

    list_365 ::= multipleFilePosition | list_365 multipleFilePosition

    seq_366 ::= POSITION integerLiteral

    opt_367 ::= seq_366 | $empty

    opt_368 ::= FOR | $empty

    list_369 ::= $empty | list_369 dataDivisionSection

    list_370 ::= $empty | list_370 fileDescriptionEntry

    grp_371 ::= FD | SD

    opt_372 ::= DOT_FS | $empty

    seq_373 ::= opt_372 fileDescriptionEntryClause

    list_374 ::= $empty | list_374 seq_373

    list_375 ::= $empty | list_375 dataDescriptionEntry

    opt_376 ::= IS | $empty

    opt_377 ::= IS | $empty

    opt_378 ::= CONTAINS | $empty

    opt_379 ::= blockContainsTo | $empty

    grp_380 ::= RECORDS | CHARACTERS

    opt_381 ::= grp_380 | $empty

    grp_382 ::= recordContainsClauseFormat1 | recordContainsClauseFormat2 | recordContainsClauseFormat3

    opt_383 ::= CONTAINS | $empty

    opt_384 ::= CHARACTERS | $empty

    opt_385 ::= IS | $empty

    opt_386 ::= IN | $empty

    opt_387 ::= SIZE | $empty

    opt_388 ::= FROM | $empty

    opt_389 ::= recordContainsTo | $empty

    opt_390 ::= CHARACTERS | $empty

    seq_391 ::= opt_388 integerLiteral opt_389 opt_390

    opt_392 ::= seq_391 | $empty

    opt_393 ::= ON | $empty

    seq_394 ::= DEPENDING opt_393 qualifiedDataName

    opt_395 ::= seq_394 | $empty

    opt_396 ::= CONTAINS | $empty

    opt_397 ::= CHARACTERS | $empty

    opt_399 ::= IS | $empty

    opt_400 ::= ARE | $empty

    grp_398 ::= RECORD opt_399 | RECORDS opt_400

    list_402 ::= dataName | list_402 dataName

    grp_401 ::= OMITTED | STANDARD | list_402

    list_403 ::= valuePair | list_403 valuePair

    opt_404 ::= IS | $empty

    grp_405 ::= qualifiedDataName | literal

    opt_407 ::= IS | $empty

    opt_408 ::= ARE | $empty

    grp_406 ::= RECORD opt_407 | RECORDS opt_408

    list_409 ::= dataName | list_409 dataName

    opt_410 ::= IS | $empty

    grp_411 ::= dataName | integerLiteral

    opt_412 ::= LINES | $empty

    list_413 ::= $empty | list_413 linageAt

    opt_414 ::= WITH | $empty

    opt_415 ::= AT | $empty

    grp_416 ::= dataName | integerLiteral

    opt_417 ::= LINES | $empty

    opt_418 ::= AT | $empty

    grp_419 ::= dataName | integerLiteral

    opt_420 ::= LINES | $empty

    opt_421 ::= AT | $empty

    grp_422 ::= dataName | integerLiteral

    opt_423 ::= MODE | $empty

    opt_424 ::= IS | $empty

    opt_425 ::= IS | $empty

    opt_427 ::= IS | $empty

    opt_428 ::= ARE | $empty

    grp_426 ::= REPORT opt_427 | REPORTS opt_428

    list_429 ::= reportName | list_429 reportName

    list_430 ::= $empty | list_430 dataBaseSectionEntry

    list_431 ::= $empty | list_431 dataDescriptionEntry

    list_432 ::= $empty | list_432 dataDescriptionEntry

    grp_433 ::= communicationDescriptionEntry | dataDescriptionEntry

    list_434 ::= $empty | list_434 grp_433

    opt_435 ::= FOR | $empty

    opt_436 ::= INITIAL | $empty

    grp_438 ::= symbolicQueueClause | symbolicSubQueueClause | messageDateClause | messageTimeClause | symbolicSourceClause | textLengthClause | endKeyClause | statusKeyClause | messageCountClause

    grp_437 ::= grp_438 | dataDescName

    list_439 ::= $empty | list_439 grp_437

    opt_440 ::= FOR | $empty

    grp_441 ::= destinationCountClause | textLengthClause | statusKeyClause | destinationTableClause | errorKeyClause | symbolicDestinationClause

    list_442 ::= $empty | list_442 grp_441

    opt_443 ::= FOR | $empty

    grp_445 ::= messageDateClause | messageTimeClause | symbolicTerminalClause | textLengthClause | endKeyClause | statusKeyClause

    grp_444 ::= grp_445 | dataDescName

    list_446 ::= $empty | list_446 grp_444

    opt_447 ::= IS | $empty

    list_448 ::= indexName | list_448 indexName

    seq_449 ::= INDEXED BY list_448

    opt_450 ::= seq_449 | $empty

    opt_451 ::= IS | $empty

    opt_452 ::= IS | $empty

    opt_453 ::= MESSAGE | $empty

    opt_454 ::= IS | $empty

    opt_455 ::= IS | $empty

    opt_456 ::= IS | $empty

    opt_457 ::= IS | $empty

    opt_458 ::= SYMBOLIC | $empty

    opt_459 ::= IS | $empty

    opt_460 ::= SYMBOLIC | $empty

    opt_461 ::= IS | $empty

    opt_462 ::= SYMBOLIC | $empty

    opt_463 ::= IS | $empty

    opt_464 ::= SYMBOLIC | $empty

    opt_465 ::= IS | $empty

    opt_466 ::= SYMBOLIC | $empty

    grp_467 ::= SUB_QUEUE_1 | SUB_QUEUE_2 | SUB_QUEUE_3

    opt_468 ::= IS | $empty

    opt_469 ::= IS | $empty

    seq_470 ::= LD localName DOT_FS

    opt_471 ::= seq_470 | $empty

    list_472 ::= $empty | list_472 dataDescriptionEntry

    list_473 ::= $empty | list_473 screenDescriptionEntry

    grp_474 ::= FILLER | screenName

    opt_475 ::= grp_474 | $empty

    grp_477 ::= screenDescriptionFromClause | screenDescriptionUsingClause

    grp_476 ::= screenDescriptionBlankClause | screenDescriptionBellClause | screenDescriptionBlinkClause | screenDescriptionEraseClause | screenDescriptionLightClause | screenDescriptionGridClause | screenDescriptionReverseVideoClause | screenDescriptionUnderlineClause | screenDescriptionSizeClause | screenDescriptionLineClause | screenDescriptionColumnClause | screenDescriptionForegroundColorClause | screenDescriptionBackgroundColorClause | screenDescriptionControlClause | screenDescriptionValueClause | screenDescriptionPictureClause | grp_477 | screenDescriptionUsageClause | screenDescriptionBlankWhenZeroClause | screenDescriptionJustifiedClause | screenDescriptionSignClause | screenDescriptionAutoClause | screenDescriptionSecureClause | screenDescriptionRequiredClause | screenDescriptionPromptClause | screenDescriptionFullClause | screenDescriptionZeroFillClause

    list_478 ::= $empty | list_478 grp_476

    grp_479 ::= SCREEN | LINE

    grp_480 ::= EOL | EOS

    opt_481 ::= IS | $empty

    grp_482 ::= identifier | integerLiteral

    opt_484 ::= NUMBER | $empty

    opt_485 ::= IS | $empty

    grp_486 ::= PLUS | PLUSCHAR | MINUSCHAR

    grp_483 ::= opt_484 opt_485 grp_486

    opt_487 ::= grp_483 | $empty

    grp_488 ::= identifier | integerLiteral

    grp_489 ::= COLUMN | COL

    opt_491 ::= NUMBER | $empty

    opt_492 ::= IS | $empty

    grp_493 ::= PLUS | PLUSCHAR | MINUSCHAR

    grp_490 ::= opt_491 opt_492 grp_493

    opt_494 ::= grp_490 | $empty

    grp_495 ::= identifier | integerLiteral

    grp_496 ::= FOREGROUND_COLOR | FOREGROUND_COLOUR

    opt_497 ::= IS | $empty

    grp_498 ::= identifier | integerLiteral

    grp_499 ::= BACKGROUND_COLOR | BACKGROUND_COLOUR

    opt_500 ::= IS | $empty

    grp_501 ::= identifier | integerLiteral

    opt_502 ::= IS | $empty

    opt_503 ::= IS | $empty

    seq_504 ::= VALUE opt_503

    grp_505 ::= PICTURE | PIC

    opt_506 ::= IS | $empty

    grp_507 ::= identifier | literal

    opt_508 ::= screenDescriptionToClause | $empty

    opt_509 ::= IS | $empty

    seq_510 ::= USAGE opt_509

    grp_511 ::= DISPLAY | DISPLAY_1

    opt_512 ::= WHEN | $empty

    grp_513 ::= JUSTIFIED | JUST

    opt_514 ::= RIGHT | $empty

    opt_515 ::= IS | $empty

    seq_516 ::= SIGN opt_515

    opt_517 ::= seq_516 | $empty

    grp_518 ::= LEADING | TRAILING

    opt_519 ::= CHARACTER | $empty

    seq_520 ::= SEPARATE opt_519

    opt_521 ::= seq_520 | $empty

    opt_522 ::= CHARACTER | $empty

    opt_523 ::= IS | $empty

    grp_524 ::= identifier | literal

    opt_525 ::= screenDescriptionPromptOccursClause | $empty

    opt_526 ::= TIMES | $empty

    list_527 ::= $empty | list_527 reportDescription

    list_528 ::= reportGroupDescriptionEntry | list_528 reportGroupDescriptionEntry

    opt_529 ::= reportDescriptionGlobalClause | $empty

    opt_530 ::= reportDescriptionHeadingClause | $empty

    opt_531 ::= reportDescriptionFirstDetailClause | $empty

    opt_532 ::= reportDescriptionLastDetailClause | $empty

    opt_533 ::= reportDescriptionFootingClause | $empty

    seq_534 ::= reportDescriptionPageLimitClause opt_530 opt_531 opt_532 opt_533

    opt_535 ::= seq_534 | $empty

    opt_536 ::= IS | $empty

    opt_538 ::= IS | $empty

    opt_539 ::= ARE | $empty

    grp_537 ::= LIMIT opt_538 | LIMITS opt_539

    opt_540 ::= grp_537 | $empty

    grp_541 ::= LINE | LINES

    opt_542 ::= grp_541 | $empty

    opt_543 ::= reportGroupLineNumberClause | $empty

    opt_544 ::= reportGroupNextGroupClause | $empty

    opt_545 ::= reportGroupUsageClause | $empty

    opt_546 ::= dataName | $empty

    opt_547 ::= reportGroupLineNumberClause | $empty

    opt_548 ::= dataName | $empty

    grp_550 ::= reportGroupSourceClause | reportGroupValueClause | reportGroupSumClause | reportGroupResetClause

    grp_549 ::= reportGroupPictureClause | reportGroupUsageClause | reportGroupSignClause | reportGroupJustifiedClause | reportGroupBlankWhenZeroClause | reportGroupLineNumberClause | reportGroupColumnNumberClause | grp_550 | reportGroupIndicateClause

    list_551 ::= $empty | list_551 grp_549

    opt_552 ::= WHEN | $empty

    opt_553 ::= NUMBER | $empty

    opt_554 ::= IS | $empty

    opt_555 ::= INDICATE | $empty

    grp_556 ::= JUSTIFIED | JUST

    opt_557 ::= RIGHT | $empty

    opt_558 ::= LINE | $empty

    opt_559 ::= NUMBER | $empty

    opt_560 ::= IS | $empty

    grp_561 ::= reportGroupLineNumberNextPage | reportGroupLineNumberPlus

    opt_562 ::= ON | $empty

    seq_563 ::= opt_562 NEXT PAGE

    opt_564 ::= seq_563 | $empty

    opt_565 ::= IS | $empty

    grp_566 ::= integerLiteral | reportGroupNextGroupNextPage | reportGroupNextGroupPlus

    grp_567 ::= PICTURE | PIC

    opt_568 ::= IS | $empty

    opt_569 ::= ON | $empty

    grp_570 ::= FINAL | dataName

    opt_571 ::= IS | $empty

    grp_572 ::= LEADING | TRAILING

    opt_573 ::= CHARACTER | $empty

    opt_574 ::= IS | $empty

    opt_575 ::= COMMACHAR | $empty

    seq_576 ::= opt_575 identifier

    list_577 ::= $empty | list_577 seq_576

    opt_578 ::= COMMACHAR | $empty

    seq_579 ::= opt_578 dataName

    list_580 ::= $empty | list_580 seq_579

    seq_581 ::= UPON dataName list_580

    opt_582 ::= seq_581 | $empty

    opt_583 ::= IS | $empty

    grp_584 ::= reportGroupTypeReportHeading | reportGroupTypePageHeading | reportGroupTypeControlHeading | reportGroupTypeDetail | reportGroupTypeControlFooting | reportGroupTypePageFooting | reportGroupTypeReportFooting

    grp_585 ::= CONTROL HEADING | CH

    grp_586 ::= FINAL | dataName

    grp_587 ::= CONTROL FOOTING | CF

    grp_588 ::= FINAL | dataName

    opt_589 ::= IS | $empty

    seq_590 ::= USAGE opt_589

    opt_591 ::= seq_590 | $empty

    grp_592 ::= DISPLAY | DISPLAY_1

    opt_593 ::= IS | $empty

    list_594 ::= $empty | list_594 libraryDescriptionEntry

    opt_595 ::= libraryAttributeClauseFormat1 | $empty

    opt_596 ::= libraryEntryProcedureClauseFormat1 | $empty

    opt_597 ::= libraryIsGlobalClause | $empty

    opt_598 ::= libraryIsCommonClause | $empty

    grp_599 ::= libraryAttributeClauseFormat2 | libraryEntryProcedureClauseFormat2

    list_600 ::= $empty | list_600 grp_599

    opt_602 ::= IS | $empty

    grp_603 ::= DONTCARE | PRIVATE | SHAREDBYRUNUNIT | SHAREDBYALL

    grp_601 ::= SHARING opt_602 grp_603

    opt_604 ::= grp_601 | $empty

    opt_605 ::= libraryAttributeFunction | $empty

    opt_607 ::= IS | $empty

    grp_608 ::= BYFUNCTION | BYTITLE

    grp_606 ::= LIBACCESS opt_607 grp_608

    opt_609 ::= grp_606 | $empty

    opt_610 ::= libraryAttributeParameter | $empty

    opt_611 ::= libraryAttributeTitle | $empty

    opt_612 ::= IS | $empty

    opt_613 ::= IS | $empty

    opt_614 ::= libraryEntryProcedureForClause | $empty

    opt_615 ::= libraryEntryProcedureForClause | $empty

    opt_616 ::= libraryEntryProcedureWithClause | $empty

    opt_617 ::= libraryEntryProcedureUsingClause | $empty

    opt_618 ::= libraryEntryProcedureGivingClause | $empty

    list_619 ::= libraryEntryProcedureUsingName | list_619 libraryEntryProcedureUsingName

    list_620 ::= libraryEntryProcedureWithName | list_620 libraryEntryProcedureWithName

    opt_621 ::= IS | $empty

    opt_622 ::= IS | $empty

    grp_623 ::= INTEGERLITERAL | LEVEL_NUMBER_77

    grp_624 ::= FILLER | dataName

    opt_625 ::= grp_624 | $empty

    grp_626 ::= dataRedefinesClause | dataIntegerStringClause | dataExternalClause | dataGlobalClause | dataTypeDefClause | dataThreadLocalClause | dataPictureClause | dataCommonOwnLocalClause | dataTypeClause | dataUsingClause | dataUsageClause | dataValueClause | dataReceivedByClause | dataOccursClause | dataSignClause | dataSynchronizedClause | dataJustifiedClause | dataBlankWhenZeroClause | dataWithLowerBoundsClause | dataAlignedClause | dataRecordAreaClause

    list_627 ::= $empty | list_627 grp_626

    list_628 ::= EXECSQLLINE | list_628 EXECSQLLINE

    opt_629 ::= DOT_FS | $empty

    opt_630 ::= WHEN | $empty

    grp_631 ::= ZERO | ZEROS | ZEROES

    opt_632 ::= IS | $empty

    seq_633 ::= BY literal

    opt_634 ::= seq_633 | $empty

    opt_635 ::= IS | $empty

    grp_636 ::= JUSTIFIED | JUST

    opt_637 ::= RIGHT | $empty

    opt_638 ::= dataOccursTo | $empty

    opt_639 ::= TIMES | $empty

    opt_640 ::= ON | $empty

    seq_641 ::= DEPENDING opt_640 qualifiedDataName

    opt_642 ::= seq_641 | $empty

    list_643 ::= $empty | list_643 dataOccursSort

    opt_644 ::= BY | $empty

    opt_645 ::= LOCAL | $empty

    list_646 ::= indexName | list_646 indexName

    seq_647 ::= INDEXED opt_644 opt_645 list_646

    opt_648 ::= seq_647 | $empty

    grp_649 ::= ASCENDING | DESCENDING

    opt_650 ::= KEY | $empty

    opt_651 ::= IS | $empty

    list_652 ::= qualifiedDataName | list_652 qualifiedDataName

    grp_653 ::= PICTURE | PIC

    opt_654 ::= IS | $empty

    list_655 ::= pictureChars | list_655 pictureChars

    opt_656 ::= pictureCardinality | $empty

    seq_657 ::= list_655 opt_656

    list_658 ::= seq_657 | list_658 seq_657

    opt_659 ::= RECEIVED | $empty

    opt_660 ::= BY | $empty

    grp_661 ::= CONTENT | REFERENCE | REF

    grp_663 ::= THROUGH | THRU

    grp_662 ::= grp_663 qualifiedDataName

    opt_664 ::= grp_662 | $empty

    opt_665 ::= IS | $empty

    seq_666 ::= SIGN opt_665

    opt_667 ::= seq_666 | $empty

    grp_668 ::= LEADING | TRAILING

    opt_669 ::= CHARACTER | $empty

    seq_670 ::= SEPARATE opt_669

    opt_671 ::= seq_670 | $empty

    grp_672 ::= SYNCHRONIZED | SYNC

    grp_673 ::= LEFT | RIGHT

    opt_674 ::= grp_673 | $empty

    opt_675 ::= IS | $empty

    opt_676 ::= IS | $empty

    grp_677 ::= SHORT_DATE | LONG_DATE | NUMERIC_DATE | NUMERIC_TIME | LONG_TIME

    opt_678 ::= IS | $empty

    opt_679 ::= IS | $empty

    seq_680 ::= USAGE opt_679

    opt_681 ::= seq_680 | $empty

    grp_683 ::= TRUNCATED | EXTENDED

    opt_684 ::= grp_683 | $empty

    grp_682 ::= BINARY opt_684 | BIT | COMP | COMP_1 | COMP_2 | COMP_3 | COMP_4 | COMP_5 | COMPUTATIONAL | COMPUTATIONAL_1 | COMPUTATIONAL_2 | COMPUTATIONAL_3 | COMPUTATIONAL_4 | COMPUTATIONAL_5 | CONTROL_POINT | DATE | DISPLAY | DISPLAY_1 | DOUBLE | EVENT | FUNCTION_POINTER | INDEX | KANJI | LOCK | NATIONAL | PACKED_DECIMAL | POINTER | PROCEDURE_POINTER | REAL | TASK

    grp_685 ::= LANGUAGE | CONVENTION

    opt_686 ::= OF | $empty

    grp_687 ::= cobolWord | dataName

    opt_689 ::= IS | $empty

    opt_690 ::= ARE | $empty

    grp_688 ::= VALUE opt_689 | VALUES opt_690

    opt_691 ::= grp_688 | $empty

    opt_692 ::= COMMACHAR | $empty

    seq_693 ::= opt_692 dataValueInterval

    list_694 ::= $empty | list_694 seq_693

    opt_695 ::= dataValueIntervalTo | $empty

    grp_696 ::= THROUGH | THRU

    opt_697 ::= WITH | $empty

    opt_698 ::= procedureDivisionUsingClause | $empty

    opt_699 ::= procedureDivisionGivingClause | $empty

    opt_700 ::= procedureDeclaratives | $empty

    grp_701 ::= USING | CHAINING

    list_702 ::= procedureDivisionUsingParameter | list_702 procedureDivisionUsingParameter

    grp_703 ::= GIVING | RETURNING

    opt_704 ::= BY | $empty

    seq_705 ::= opt_704 REFERENCE

    opt_706 ::= seq_705 | $empty

    list_707 ::= procedureDivisionByReference | list_707 procedureDivisionByReference

    opt_709 ::= OPTIONAL | $empty

    grp_710 ::= identifier | fileName

    grp_708 ::= opt_709 grp_710

    opt_711 ::= BY | $empty

    list_712 ::= procedureDivisionByValue | list_712 procedureDivisionByValue

    list_713 ::= procedureDeclarative | list_713 procedureDeclarative

    opt_714 ::= integerLiteral | $empty

    list_715 ::= $empty | list_715 procedureSection

    list_716 ::= $empty | list_716 sentence

    list_717 ::= $empty | list_717 paragraph

    list_719 ::= $empty | list_719 sentence

    grp_718 ::= alteredGoTo | list_719

    list_720 ::= $empty | list_720 statement

    grp_721 ::= acceptFromDateStatement | acceptFromEscapeKeyStatement | acceptFromMnemonicStatement | acceptMessageCountStatement

    opt_722 ::= grp_721 | $empty

    opt_723 ::= onExceptionClause | $empty

    opt_724 ::= notOnExceptionClause | $empty

    opt_725 ::= END_ACCEPT | $empty

    opt_727 ::= YYYYMMDD | $empty

    opt_728 ::= YYYYDDD | $empty

    opt_729 ::= MMDDYYYY | $empty

    grp_726 ::= DATE opt_727 | DAY opt_728 | DAY_OF_WEEK | TIME | TIMER | TODAYS_DATE opt_729 | TODAYS_NAME | YEAR | YYYYMMDD | YYYYDDD

    opt_730 ::= MESSAGE | $empty

    grp_731 ::= addToStatement | addToGivingStatement | addCorrespondingStatement

    opt_732 ::= onSizeErrorPhrase | $empty

    opt_733 ::= notOnSizeErrorPhrase | $empty

    opt_734 ::= END_ADD | $empty

    list_735 ::= addFrom | list_735 addFrom

    list_736 ::= addTo | list_736 addTo

    list_737 ::= addFrom | list_737 addFrom

    list_738 ::= addToGiving | list_738 addToGiving

    seq_739 ::= TO list_738

    opt_740 ::= seq_739 | $empty

    list_741 ::= addGiving | list_741 addGiving

    grp_742 ::= CORRESPONDING | CORR

    opt_743 ::= ROUNDED | $empty

    opt_744 ::= ROUNDED | $empty

    opt_745 ::= TO | $empty

    list_746 ::= alterProceedTo | list_746 alterProceedTo

    seq_747 ::= PROCEED TO

    opt_748 ::= seq_747 | $empty

    grp_749 ::= identifier | literal

    opt_750 ::= callUsingPhrase | $empty

    opt_751 ::= callGivingPhrase | $empty

    opt_752 ::= onOverflowPhrase | $empty

    opt_753 ::= onExceptionClause | $empty

    opt_754 ::= notOnExceptionClause | $empty

    opt_755 ::= END_CALL | $empty

    list_756 ::= callUsingParameter | list_756 callUsingParameter

    opt_757 ::= BY | $empty

    seq_758 ::= opt_757 REFERENCE

    opt_759 ::= seq_758 | $empty

    list_760 ::= callByReference | list_760 callByReference

    grp_762 ::= ADDRESS OF | INTEGER | STRING

    opt_763 ::= grp_762 | $empty

    grp_761 ::= opt_763 identifier | literal | fileName

    opt_764 ::= BY | $empty

    list_765 ::= callByValue | list_765 callByValue

    opt_767 ::= OF | $empty

    grp_766 ::= ADDRESS OF | LENGTH opt_767

    opt_768 ::= grp_766 | $empty

    grp_769 ::= identifier | literal

    opt_770 ::= BY | $empty

    list_771 ::= callByContent | list_771 callByContent

    opt_773 ::= OF | $empty

    grp_772 ::= ADDRESS OF | LENGTH opt_773

    opt_774 ::= grp_772 | $empty

    grp_775 ::= GIVING | RETURNING

    list_776 ::= cancelCall | list_776 cancelCall

    grp_777 ::= BYTITLE | BYFUNCTION

    list_778 ::= closeFile | list_778 closeFile

    grp_779 ::= closeReelUnitStatement | closeRelativeStatement | closePortFileIOStatement

    opt_780 ::= grp_779 | $empty

    grp_781 ::= REEL | UNIT

    opt_782 ::= FOR | $empty

    seq_783 ::= opt_782 REMOVAL

    opt_784 ::= seq_783 | $empty

    opt_786 ::= WITH | $empty

    grp_787 ::= NO REWIND | LOCK

    grp_785 ::= opt_786 grp_787

    opt_788 ::= grp_785 | $empty

    opt_789 ::= WITH | $empty

    grp_790 ::= NO REWIND | LOCK

    opt_792 ::= WITH | $empty

    grp_791 ::= opt_792 NO WAIT | WITH WAIT

    list_793 ::= closePortFileIOUsing | list_793 closePortFileIOUsing

    seq_794 ::= USING list_793

    opt_795 ::= seq_794 | $empty

    opt_796 ::= OF | $empty

    grp_797 ::= ABORT | ORDERLY

    grp_798 ::= identifier | integerLiteral

    opt_799 ::= OF | $empty

    grp_800 ::= identifier | integerLiteral

    list_801 ::= computeStore | list_801 computeStore

    grp_802 ::= EQUALCHAR | EQUAL

    opt_803 ::= onSizeErrorPhrase | $empty

    opt_804 ::= notOnSizeErrorPhrase | $empty

    opt_805 ::= END_COMPUTE | $empty

    opt_806 ::= ROUNDED | $empty

    opt_807 ::= RECORD | $empty

    opt_808 ::= invalidKeyPhrase | $empty

    opt_809 ::= notInvalidKeyPhrase | $empty

    opt_810 ::= END_DELETE | $empty

    opt_812 ::= TERMINAL | $empty

    grp_811 ::= INPUT opt_812 | I_O TERMINAL | OUTPUT

    opt_813 ::= WITH | $empty

    grp_814 ::= identifier | literal

    list_815 ::= displayOperand | list_815 displayOperand

    opt_816 ::= displayAt | $empty

    opt_817 ::= displayUpon | $empty

    opt_818 ::= displayWith | $empty

    grp_819 ::= identifier | literal

    grp_820 ::= mnemonicName | environmentName

    opt_821 ::= WITH | $empty

    grp_822 ::= identifier | literal

    grp_823 ::= divideIntoStatement | divideIntoGivingStatement | divideByGivingStatement

    opt_824 ::= divideRemainder | $empty

    opt_825 ::= onSizeErrorPhrase | $empty

    opt_826 ::= notOnSizeErrorPhrase | $empty

    opt_827 ::= END_DIVIDE | $empty

    list_828 ::= divideInto | list_828 divideInto

    grp_829 ::= identifier | literal

    opt_830 ::= divideGivingPhrase | $empty

    grp_831 ::= identifier | literal

    opt_832 ::= divideGivingPhrase | $empty

    list_833 ::= divideGiving | list_833 divideGiving

    opt_834 ::= ROUNDED | $empty

    opt_835 ::= ROUNDED | $empty

    opt_837 ::= TERMINAL | $empty

    grp_836 ::= INPUT opt_837 | I_O TERMINAL | OUTPUT

    opt_838 ::= WITH | $empty

    grp_839 ::= literal | identifier

    list_840 ::= identifier | list_840 identifier

    seq_841 ::= USING list_840

    opt_842 ::= seq_841 | $empty

    list_843 ::= $empty | list_843 evaluateAlsoSelect

    list_844 ::= evaluateWhenPhrase | list_844 evaluateWhenPhrase

    opt_845 ::= evaluateWhenOther | $empty

    opt_846 ::= END_EVALUATE | $empty

    list_847 ::= evaluateWhen | list_847 evaluateWhen

    list_848 ::= $empty | list_848 statement

    list_849 ::= $empty | list_849 evaluateAlsoCondition

    opt_850 ::= NOT | $empty

    opt_851 ::= evaluateThrough | $empty

    grp_852 ::= THROUGH | THRU

    list_853 ::= $empty | list_853 statement

    list_854 ::= EXECCICSLINE | list_854 EXECCICSLINE

    list_855 ::= EXECSQLLINE | list_855 EXECSQLLINE

    list_856 ::= EXECSQLIMSLINE | list_856 EXECSQLIMSLINE

    opt_857 ::= NAMED | $empty

    opt_858 ::= CHANGED | $empty

    list_859 ::= exhibitOperand | list_859 exhibitOperand

    opt_860 ::= PROGRAM | $empty

    opt_861 ::= TO | $empty

    grp_862 ::= goToStatementSimple | goToDependingOnStatement

    list_863 ::= procedureName | list_863 procedureName

    opt_864 ::= ON | $empty

    seq_865 ::= DEPENDING opt_864 identifier

    opt_866 ::= seq_865 | $empty

    opt_867 ::= ifElse | $empty

    opt_868 ::= END_IF | $empty

    opt_869 ::= THEN | $empty

    list_871 ::= $empty | list_871 statement

    grp_870 ::= NEXT SENTENCE | list_871

    list_873 ::= $empty | list_873 statement

    grp_872 ::= NEXT SENTENCE | list_873

    list_874 ::= identifier | list_874 identifier

    opt_875 ::= initializeReplacingPhrase | $empty

    list_876 ::= initializeReplacingBy | list_876 initializeReplacingBy

    grp_877 ::= ALPHABETIC | ALPHANUMERIC | ALPHANUMERIC_EDITED | NATIONAL | NATIONAL_EDITED | NUMERIC | NUMERIC_EDITED | DBCS | EGCS

    opt_878 ::= DATA | $empty

    grp_879 ::= identifier | literal

    list_880 ::= reportName | list_880 reportName

    grp_881 ::= inspectTallyingPhrase | inspectReplacingPhrase | inspectTallyingReplacingPhrase | inspectConvertingPhrase

    list_882 ::= inspectFor | list_882 inspectFor

    grp_883 ::= inspectReplacingCharacters | inspectReplacingAllLeadings

    list_884 ::= grp_883 | list_884 grp_883

    list_885 ::= inspectFor | list_885 inspectFor

    list_886 ::= inspectReplacingPhrase | list_886 inspectReplacingPhrase

    grp_887 ::= identifier | literal

    list_888 ::= $empty | list_888 inspectBeforeAfter

    grp_889 ::= inspectCharacters | inspectAllLeadings

    list_890 ::= grp_889 | list_890 grp_889

    list_891 ::= $empty | list_891 inspectBeforeAfter

    list_892 ::= $empty | list_892 inspectBeforeAfter

    grp_893 ::= ALL | LEADING

    list_894 ::= inspectAllLeading | list_894 inspectAllLeading

    grp_895 ::= ALL | LEADING | FIRST

    list_896 ::= inspectReplacingAllLeading | list_896 inspectReplacingAllLeading

    grp_897 ::= identifier | literal

    list_898 ::= $empty | list_898 inspectBeforeAfter

    grp_899 ::= identifier | literal

    list_900 ::= $empty | list_900 inspectBeforeAfter

    grp_901 ::= identifier | literal

    grp_902 ::= identifier | literal

    grp_903 ::= BEFORE | AFTER

    opt_904 ::= INITIAL | $empty

    grp_905 ::= identifier | literal

    list_906 ::= mergeOnKeyClause | list_906 mergeOnKeyClause

    opt_907 ::= mergeCollatingSequencePhrase | $empty

    list_908 ::= $empty | list_908 mergeUsing

    opt_909 ::= mergeOutputProcedurePhrase | $empty

    list_910 ::= $empty | list_910 mergeGivingPhrase

    opt_911 ::= ON | $empty

    grp_912 ::= ASCENDING | DESCENDING

    opt_913 ::= KEY | $empty

    list_914 ::= qualifiedDataName | list_914 qualifiedDataName

    opt_915 ::= COLLATING | $empty

    opt_916 ::= IS | $empty

    list_917 ::= alphabetName | list_917 alphabetName

    opt_918 ::= mergeCollatingAlphanumeric | $empty

    opt_919 ::= mergeCollatingNational | $empty

    opt_920 ::= FOR | $empty

    opt_921 ::= FOR | $empty

    opt_922 ::= IS | $empty

    list_923 ::= fileName | list_923 fileName

    opt_924 ::= IS | $empty

    opt_925 ::= mergeOutputThrough | $empty

    grp_926 ::= THROUGH | THRU

    list_927 ::= mergeGiving | list_927 mergeGiving

    grp_928 ::= LOCK | SAVE | NO REWIND | CRUNCH | RELEASE | WITH REMOVE CRUNCH

    opt_929 ::= grp_928 | $empty

    opt_930 ::= ALL | $empty

    grp_931 ::= moveToStatement | moveCorrespondingToStatement

    list_932 ::= identifier | list_932 identifier

    grp_933 ::= CORRESPONDING | CORR

    list_934 ::= identifier | list_934 identifier

    grp_935 ::= identifier | literal

    grp_936 ::= multiplyRegular | multiplyGiving

    opt_937 ::= onSizeErrorPhrase | $empty

    opt_938 ::= notOnSizeErrorPhrase | $empty

    opt_939 ::= END_MULTIPLY | $empty

    list_940 ::= multiplyRegularOperand | list_940 multiplyRegularOperand

    opt_941 ::= ROUNDED | $empty

    list_942 ::= multiplyGivingResult | list_942 multiplyGivingResult

    opt_943 ::= ROUNDED | $empty

    grp_944 ::= openInputStatement | openOutputStatement | openIOStatement | openExtendStatement

    list_945 ::= grp_944 | list_945 grp_944

    list_946 ::= openInput | list_946 openInput

    opt_948 ::= WITH | $empty

    grp_947 ::= REVERSED | opt_948 NO REWIND

    opt_949 ::= grp_947 | $empty

    list_950 ::= openOutput | list_950 openOutput

    opt_951 ::= WITH | $empty

    seq_952 ::= opt_951 NO REWIND

    opt_953 ::= seq_952 | $empty

    list_954 ::= fileName | list_954 fileName

    list_955 ::= fileName | list_955 fileName

    grp_956 ::= performInlineStatement | performProcedureStatement

    opt_957 ::= performType | $empty

    list_958 ::= $empty | list_958 statement

    grp_960 ::= THROUGH | THRU

    grp_959 ::= grp_960 procedureName

    opt_961 ::= grp_959 | $empty

    opt_962 ::= performType | $empty

    grp_963 ::= identifier | integerLiteral

    opt_964 ::= performTestClause | $empty

    opt_965 ::= performTestClause | $empty

    list_966 ::= $empty | list_966 performAfter

    grp_967 ::= identifier | literal

    grp_968 ::= identifier | literal | arithmeticExpression

    grp_969 ::= identifier | literal | arithmeticExpression

    opt_970 ::= WITH | $empty

    grp_971 ::= BEFORE | AFTER

    list_972 ::= cdName | list_972 cdName

    opt_973 ::= NEXT | $empty

    opt_974 ::= RECORD | $empty

    opt_975 ::= readInto | $empty

    opt_976 ::= readWith | $empty

    opt_977 ::= readKey | $empty

    opt_978 ::= invalidKeyPhrase | $empty

    opt_979 ::= notInvalidKeyPhrase | $empty

    opt_980 ::= atEndPhrase | $empty

    opt_981 ::= notAtEndPhrase | $empty

    opt_982 ::= END_READ | $empty

    opt_983 ::= WITH | $empty

    grp_985 ::= KEPT | NO

    grp_984 ::= grp_985 LOCK | WAIT

    opt_986 ::= IS | $empty

    grp_987 ::= receiveFromStatement | receiveIntoStatement

    opt_988 ::= onExceptionClause | $empty

    opt_989 ::= notOnExceptionClause | $empty

    opt_990 ::= END_RECEIVE | $empty

    grp_991 ::= receiveBefore | receiveWith | receiveThread | receiveSize | receiveStatus

    list_992 ::= $empty | list_992 grp_991

    grp_993 ::= MESSAGE | SEGMENT

    opt_994 ::= INTO | $empty

    opt_995 ::= receiveNoData | $empty

    opt_996 ::= receiveWithData | $empty

    list_997 ::= $empty | list_997 statement

    list_998 ::= $empty | list_998 statement

    opt_999 ::= TIME | $empty

    grp_1000 ::= numericLiteral | identifier

    opt_1001 ::= WITH | $empty

    opt_1002 ::= IN | $empty

    opt_1003 ::= IN | $empty

    grp_1004 ::= numericLiteral | identifier

    opt_1005 ::= IN | $empty

    seq_1006 ::= FROM qualifiedDataName

    opt_1007 ::= seq_1006 | $empty

    opt_1008 ::= RECORD | $empty

    opt_1009 ::= returnInto | $empty

    opt_1010 ::= notAtEndPhrase | $empty

    opt_1011 ::= END_RETURN | $empty

    opt_1012 ::= rewriteFrom | $empty

    opt_1013 ::= invalidKeyPhrase | $empty

    opt_1014 ::= notInvalidKeyPhrase | $empty

    opt_1015 ::= END_REWRITE | $empty

    opt_1016 ::= ALL | $empty

    opt_1017 ::= searchVarying | $empty

    opt_1018 ::= atEndPhrase | $empty

    list_1019 ::= searchWhen | list_1019 searchWhen

    opt_1020 ::= END_SEARCH | $empty

    list_1022 ::= $empty | list_1022 statement

    grp_1021 ::= NEXT SENTENCE | list_1022

    grp_1023 ::= sendStatementSync | sendStatementAsync

    opt_1024 ::= onExceptionClause | $empty

    opt_1025 ::= notOnExceptionClause | $empty

    grp_1026 ::= identifier | literal

    opt_1027 ::= sendFromPhrase | $empty

    opt_1028 ::= sendWithPhrase | $empty

    opt_1029 ::= sendReplacingPhrase | $empty

    opt_1030 ::= sendAdvancingPhrase | $empty

    grp_1031 ::= TOP | BOTTOM

    grp_1032 ::= EGI | EMI | ESI | identifier

    opt_1033 ::= LINE | $empty

    grp_1034 ::= BEFORE | AFTER

    opt_1035 ::= ADVANCING | $empty

    grp_1036 ::= sendAdvancingPage | sendAdvancingLines | sendAdvancingMnemonic

    grp_1037 ::= identifier | literal

    grp_1038 ::= LINE | LINES

    opt_1039 ::= grp_1038 | $empty

    list_1041 ::= setToStatement | list_1041 setToStatement

    grp_1040 ::= list_1041 | setUpDownByStatement

    list_1042 ::= setTo | list_1042 setTo

    list_1043 ::= setToValue | list_1043 setToValue

    list_1044 ::= setTo | list_1044 setTo

    grp_1045 ::= UP BY | DOWN BY

    grp_1046 ::= identifier | literal

    list_1047 ::= sortOnKeyClause | list_1047 sortOnKeyClause

    opt_1048 ::= sortDuplicatesPhrase | $empty

    opt_1049 ::= sortCollatingSequencePhrase | $empty

    opt_1050 ::= sortInputProcedurePhrase | $empty

    list_1051 ::= $empty | list_1051 sortUsing

    opt_1052 ::= sortOutputProcedurePhrase | $empty

    list_1053 ::= $empty | list_1053 sortGivingPhrase

    opt_1054 ::= ON | $empty

    grp_1055 ::= ASCENDING | DESCENDING

    opt_1056 ::= KEY | $empty

    list_1057 ::= qualifiedDataName | list_1057 qualifiedDataName

    opt_1058 ::= WITH | $empty

    opt_1059 ::= IN | $empty

    opt_1060 ::= ORDER | $empty

    opt_1061 ::= COLLATING | $empty

    opt_1062 ::= IS | $empty

    list_1063 ::= alphabetName | list_1063 alphabetName

    opt_1064 ::= sortCollatingAlphanumeric | $empty

    opt_1065 ::= sortCollatingNational | $empty

    opt_1066 ::= FOR | $empty

    opt_1067 ::= FOR | $empty

    opt_1068 ::= IS | $empty

    opt_1069 ::= IS | $empty

    opt_1070 ::= sortInputThrough | $empty

    grp_1071 ::= THROUGH | THRU

    list_1072 ::= fileName | list_1072 fileName

    opt_1073 ::= IS | $empty

    opt_1074 ::= sortOutputThrough | $empty

    grp_1075 ::= THROUGH | THRU

    list_1076 ::= sortGiving | list_1076 sortGiving

    grp_1077 ::= LOCK | SAVE | NO REWIND | CRUNCH | RELEASE | WITH REMOVE CRUNCH

    opt_1078 ::= grp_1077 | $empty

    opt_1079 ::= startKey | $empty

    opt_1080 ::= invalidKeyPhrase | $empty

    opt_1081 ::= notInvalidKeyPhrase | $empty

    opt_1082 ::= END_START | $empty

    opt_1083 ::= IS | $empty

    opt_1085 ::= TO | $empty

    opt_1086 ::= THAN | $empty

    opt_1087 ::= THAN | $empty

    opt_1088 ::= THAN | $empty

    opt_1089 ::= TO | $empty

    grp_1084 ::= EQUAL opt_1085 | EQUALCHAR | GREATER opt_1086 | MORETHANCHAR | NOT LESS opt_1087 | NOT LESSTHANCHAR | GREATER opt_1088 OR EQUAL opt_1089 | MORETHANOREQUAL

    grp_1090 ::= RUN | literal

    list_1091 ::= stringSendingPhrase | list_1091 stringSendingPhrase

    opt_1092 ::= stringWithPointerPhrase | $empty

    opt_1093 ::= onOverflowPhrase | $empty

    opt_1094 ::= notOnOverflowPhrase | $empty

    opt_1095 ::= END_STRING | $empty

    list_1096 ::= stringSending | list_1096 stringSending

    grp_1097 ::= stringDelimitedByPhrase | stringForPhrase

    opt_1098 ::= BY | $empty

    grp_1099 ::= SIZE | identifier | literal

    grp_1100 ::= identifier | literal

    opt_1101 ::= WITH | $empty

    grp_1102 ::= subtractFromStatement | subtractFromGivingStatement | subtractCorrespondingStatement

    opt_1103 ::= onSizeErrorPhrase | $empty

    opt_1104 ::= notOnSizeErrorPhrase | $empty

    opt_1105 ::= END_SUBTRACT | $empty

    list_1106 ::= subtractSubtrahend | list_1106 subtractSubtrahend

    list_1107 ::= subtractMinuend | list_1107 subtractMinuend

    list_1108 ::= subtractSubtrahend | list_1108 subtractSubtrahend

    list_1109 ::= subtractGiving | list_1109 subtractGiving

    grp_1110 ::= CORRESPONDING | CORR

    opt_1111 ::= ROUNDED | $empty

    opt_1112 ::= ROUNDED | $empty

    opt_1113 ::= ROUNDED | $empty

    opt_1114 ::= unstringWithPointerPhrase | $empty

    opt_1115 ::= unstringTallyingPhrase | $empty

    opt_1116 ::= onOverflowPhrase | $empty

    opt_1117 ::= notOnOverflowPhrase | $empty

    opt_1118 ::= END_UNSTRING | $empty

    list_1119 ::= $empty | list_1119 unstringOrAllPhrase

    seq_1120 ::= unstringDelimitedByPhrase list_1119

    opt_1121 ::= seq_1120 | $empty

    opt_1122 ::= BY | $empty

    opt_1123 ::= ALL | $empty

    grp_1124 ::= identifier | literal

    opt_1125 ::= ALL | $empty

    grp_1126 ::= identifier | literal

    list_1127 ::= unstringInto | list_1127 unstringInto

    opt_1128 ::= unstringDelimiterIn | $empty

    opt_1129 ::= unstringCountIn | $empty

    opt_1130 ::= IN | $empty

    opt_1131 ::= IN | $empty

    opt_1132 ::= WITH | $empty

    opt_1133 ::= IN | $empty

    grp_1134 ::= useAfterClause | useDebugClause

    opt_1135 ::= GLOBAL | $empty

    opt_1136 ::= STANDARD | $empty

    grp_1137 ::= EXCEPTION | ERROR

    opt_1138 ::= ON | $empty

    list_1139 ::= fileName | list_1139 fileName

    opt_1140 ::= FOR | $empty

    opt_1141 ::= ON | $empty

    list_1142 ::= useDebugOn | list_1142 useDebugOn

    opt_1143 ::= REFERENCES | $empty

    opt_1144 ::= OF | $empty

    opt_1145 ::= writeFromPhrase | $empty

    opt_1146 ::= writeAdvancingPhrase | $empty

    opt_1147 ::= writeAtEndOfPagePhrase | $empty

    opt_1148 ::= writeNotAtEndOfPagePhrase | $empty

    opt_1149 ::= invalidKeyPhrase | $empty

    opt_1150 ::= notInvalidKeyPhrase | $empty

    opt_1151 ::= END_WRITE | $empty

    grp_1152 ::= identifier | literal

    grp_1153 ::= BEFORE | AFTER

    opt_1154 ::= ADVANCING | $empty

    grp_1155 ::= writeAdvancingPage | writeAdvancingLines | writeAdvancingMnemonic

    grp_1156 ::= identifier | literal

    grp_1157 ::= LINE | LINES

    opt_1158 ::= grp_1157 | $empty

    opt_1159 ::= AT | $empty

    grp_1160 ::= END_OF_PAGE | EOP

    list_1161 ::= $empty | list_1161 statement

    opt_1162 ::= AT | $empty

    grp_1163 ::= END_OF_PAGE | EOP

    list_1164 ::= $empty | list_1164 statement

    opt_1165 ::= AT | $empty

    list_1166 ::= $empty | list_1166 statement

    opt_1167 ::= AT | $empty

    list_1168 ::= $empty | list_1168 statement

    opt_1169 ::= KEY | $empty

    list_1170 ::= $empty | list_1170 statement

    opt_1171 ::= KEY | $empty

    list_1172 ::= $empty | list_1172 statement

    opt_1173 ::= ON | $empty

    list_1174 ::= $empty | list_1174 statement

    opt_1175 ::= ON | $empty

    list_1176 ::= $empty | list_1176 statement

    opt_1177 ::= ON | $empty

    list_1178 ::= $empty | list_1178 statement

    opt_1179 ::= ON | $empty

    list_1180 ::= $empty | list_1180 statement

    opt_1181 ::= ON | $empty

    list_1182 ::= $empty | list_1182 statement

    opt_1183 ::= ON | $empty

    list_1184 ::= $empty | list_1184 statement

    list_1185 ::= $empty | list_1185 plusMinus

    grp_1186 ::= PLUSCHAR | MINUSCHAR

    list_1187 ::= $empty | list_1187 multDiv

    grp_1188 ::= ASTERISKCHAR | SLASHCHAR

    grp_1189 ::= PLUSCHAR | MINUSCHAR

    opt_1190 ::= grp_1189 | $empty

    list_1191 ::= $empty | list_1191 power

    list_1192 ::= $empty | list_1192 andOrCondition

    grp_1193 ::= AND | OR

    list_1195 ::= abbreviation | list_1195 abbreviation

    grp_1194 ::= combinableCondition | list_1195

    opt_1196 ::= NOT | $empty

    opt_1197 ::= IS | $empty

    opt_1198 ::= NOT | $empty

    grp_1199 ::= NUMERIC | ALPHABETIC | ALPHABETIC_LOWER | ALPHABETIC_UPPER | DBCS | KANJI | className

    list_1201 ::= $empty | list_1201 inData

    opt_1202 ::= inFile | $empty

    list_1203 ::= $empty | list_1203 conditionNameSubscriptReference

    list_1204 ::= $empty | list_1204 inMnemonic

    grp_1200 ::= list_1201 opt_1202 list_1203 | list_1204

    opt_1205 ::= COMMACHAR | $empty

    seq_1206 ::= opt_1205 subscript_

    list_1207 ::= $empty | list_1207 seq_1206

    opt_1208 ::= IS | $empty

    opt_1209 ::= NOT | $empty

    grp_1210 ::= POSITIVE | NEGATIVE | ZERO

    grp_1212 ::= AND | OR

    grp_1211 ::= grp_1212 arithmeticExpression

    list_1213 ::= grp_1211 | list_1213 grp_1211

    grp_1214 ::= IS | ARE

    opt_1215 ::= grp_1214 | $empty

    opt_1217 ::= NOT | $empty

    opt_1219 ::= THAN | $empty

    opt_1220 ::= THAN | $empty

    opt_1221 ::= TO | $empty

    grp_1218 ::= GREATER opt_1219 | MORETHANCHAR | LESS opt_1220 | LESSTHANCHAR | EQUAL opt_1221 | EQUALCHAR

    opt_1222 ::= THAN | $empty

    opt_1223 ::= TO | $empty

    opt_1224 ::= THAN | $empty

    opt_1225 ::= TO | $empty

    grp_1216 ::= opt_1217 grp_1218 | NOTEQUALCHAR | GREATER opt_1222 OR EQUAL opt_1223 | MORETHANOREQUAL | LESS opt_1224 OR EQUAL opt_1225 | LESSTHANOREQUAL

    opt_1226 ::= NOT | $empty

    opt_1227 ::= relationalOperator | $empty

    grp_1228 ::= arithmeticExpression | LPARENCHAR arithmeticExpression abbreviation RPARENCHAR

    opt_1229 ::= COMMACHAR | $empty

    seq_1230 ::= opt_1229 subscript_

    list_1231 ::= $empty | list_1231 seq_1230

    seq_1232 ::= LPARENCHAR subscript_ list_1231 RPARENCHAR

    list_1233 ::= $empty | list_1233 seq_1232

    opt_1234 ::= referenceModifier | $empty

    opt_1235 ::= COMMACHAR | $empty

    seq_1236 ::= opt_1235 argument

    list_1237 ::= $empty | list_1237 seq_1236

    seq_1238 ::= LPARENCHAR argument list_1237 RPARENCHAR

    list_1239 ::= $empty | list_1239 seq_1238

    opt_1240 ::= referenceModifier | $empty

    opt_1241 ::= length | $empty

    opt_1242 ::= integerLiteral | $empty

    opt_1243 ::= integerLiteral | $empty

    opt_1244 ::= integerLiteral | $empty

    opt_1245 ::= integerLiteral | $empty

    grp_1246 ::= dataName | conditionName

    list_1248 ::= qualifiedInData | list_1248 qualifiedInData

    opt_1249 ::= inFile | $empty

    grp_1247 ::= list_1248 opt_1249 | inFile

    opt_1250 ::= grp_1247 | $empty

    grp_1251 ::= IN | OF

    grp_1252 ::= IN | OF

    grp_1253 ::= IN | OF

    grp_1254 ::= IN | OF

    grp_1255 ::= IN | OF

    grp_1256 ::= IN | OF

    opt_1257 ::= inSection | $empty

    grp_1258 ::= cobolWord | literal

    grp_1259 ::= cobolWord | literal

    opt_1260 ::= OF | $empty

    list_1261 ::= COMMENTENTRYLINE | list_1261 COMMENTENTRYLINE

%End
