-- AUTO-GENERATED from antlr/grammars-v4 hypertalk by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=HypertalkParser
%options package=lpg.grammars.hypertalk
%options template=btParserTemplateF.gi
%options import_terminals=HypertalkLexer.gi
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
    start_script
%End

%Rules
    start_script ::= script

    start_scriptlet ::= scriptlet

    script ::= $empty
           | handler script
           | function_ script
           | NEWLINE script

    scriptlet ::= statement
           | multilineScriptlet

    multilineScriptlet ::= statement NEWLINE multilineScriptlet
           | statement
           | NEWLINE multilineScriptlet

    handler ::= ON handlerName list_1 opt_2 END handlerName
           | ON handlerName parameterList list_3 opt_4 END handlerName

    function_ ::= FUNCTION ID list_5 opt_6 END ID
           | FUNCTION ID parameterList list_7 opt_8 END ID

    handlerName ::= ID
           | commandName

    parameterList ::= ID
           | parameterList COMMA ID

    statementList ::= statement list_9 statementList
           | statement list_10

    statement ::= commandStmnt
           | functionCall
           | messageStatement
           | expression
           | ifStatement
           | repeatStatement
           | globalStmnt
           | returnStmnt

    globalStmnt ::= GLOBAL parameterList

    returnStmnt ::= RETURN expression
           | RETURN

    ifStatement ::= IF expression thenStatement

    thenStatement ::= opt_11 THEN statement
           | opt_12 THEN statement opt_13 opt_14
           | opt_15 THEN list_16 opt_17 grp_18

    elseStatement ::= ELSE statement opt_21
           | ELSE list_22 opt_23 END IF

    repeatStatement ::= REPEAT repeatRange list_24 statementList END REPEAT
           | REPEAT repeatRange list_25 END REPEAT

    messageStatement ::= ID
           | ID listExpression

    commandStmnt ::= ADD expression TO expression
           | ANSWER expression WITH factor OR factor OR factor
           | ANSWER expression WITH factor OR factor
           | ANSWER expression WITH factor
           | ANSWER expression
           | ASK expression WITH expression
           | ASK expression
           | ASK FILE expression
           | ASK FILE expression WITH expression
           | BEEP
           | BEEP expression
           | CHOOSE toolExpression opt_26
           | CHOOSE TOOL toolExpression
           | CLICK AT listExpression
           | CLICK AT listExpression WITH listExpression
           | CLOSE FILE expression
           | CONVERT container TO convertible
           | CONVERT container FROM convertible TO convertible
           | CONVERT expression TO convertible
           | CONVERT expression FROM convertible TO convertible
           | CREATE MENU expression
           | DELETE expression
           | DIAL expression
           | DISABLE expression
           | DIVIDE expression BY expression
           | DO expression
           | DOMENU expression
           | DRAG FROM listExpression TO listExpression
           | DRAG FROM listExpression TO listExpression WITH listExpression
           | EDIT opt_27 SCRIPT of expression
           | ENABLE expression
           | EXIT handlerName
           | EXIT REPEAT
           | EXIT TO HYPERCARD
           | EXPORT PAINT TO FILE expression
           | FIND opt_28 opt_29 expression of expression of MARKED nt_cards
           | FIND opt_30 opt_31 expression of expression
           | FIND opt_32 opt_33 expression of MARKED nt_cards
           | FIND opt_34 opt_35 expression
           | GET expression
           | GO opt_36 expression WITH VISUAL expression
           | GO opt_37 expression remoteNavOption
           | GO BACK
           | GO BACK WITH VISUAL expression
           | HIDE expression
           | HIDE nt_card nt_picture
           | HIDE background nt_picture
           | HIDE nt_picture of expression
           | HIDE TITLEBAR
           | IMPORT PAINT FROM FILE expression
           | LOCK SCREEN
           | MULTIPLY expression BY expression
           | NEXT REPEAT
           | OPEN FILE expression
           | PASS handlerName
           | PLAY musicExpression
           | POP nt_card
           | PUSH nt_card
           | PUSH expression
           | PUT listExpression
           | PUT listExpression preposition expression
           | READ FROM FILE expression
           | READ FROM FILE expression FOR expression
           | READ FROM FILE expression AT expression FOR expression
           | READ FROM FILE expression UNTIL expression
           | RESET opt_38 MENUBAR
           | RESET PAINT
           | SELECT EMPTY
           | SELECT TEXT of expression
           | SELECT BEFORE TEXT of expression
           | SELECT AFTER TEXT of expression
           | SELECT expression
           | SELECT BEFORE expression
           | SELECT AFTER expression
           | SET property TO propertyValue
           | SEND listExpression TO expression
           | SHOW expression
           | SHOW nt_card nt_picture
           | SHOW background nt_picture
           | SHOW nt_picture of expression
           | SHOW TITLEBAR
           | SORT sortChunkType expression sortDirection sortStyle
           | SORT sortChunkType expression sortDirection sortStyle BY expression
           | SORT sortDirection sortStyle BY expression
           | SORT opt_39 STACK sortDirection sortStyle BY expression
           | SORT opt_40 nt_cards opt_42 sortDirection sortStyle BY expression
           | SORT opt_43 MARKED nt_cards opt_45 sortDirection sortStyle BY expression
           | SORT expression sortDirection sortStyle BY expression
           | SORT opt_46 nt_cards of expression sortDirection sortStyle BY expression
           | SORT opt_47 MARKED nt_cards of expression sortDirection sortStyle BY expression
           | SPEAK expression
           | SPEAK expression WITH grp_48 VOICE
           | SPEAK expression WITH VOICE expression
           | SUBTRACT expression FROM expression
           | TYPE expression
           | TYPE expression WITH grp_49
           | UNLOCK SCREEN
           | UNLOCK SCREEN WITH VISUAL expression
           | VISUAL expression
           | WAIT expression timeUnit
           | WAIT FOR expression timeUnit
           | WAIT UNTIL expression
           | WAIT WHILE expression
           | WRITE expression TO FILE expression
           | WRITE expression TO FILE expression AT grp_50
           | WRITE expression TO FILE expression AT expression

    remoteNavOption ::= IN_A NEW WINDOW
           | IN_A NEW WINDOW WITHOUT DIALOG
           | WITHOUT DIALOG

    convertible ::= conversionFormat
           | conversionFormat AND conversionFormat

    conversionFormat ::= seconds
           | DATEITEMS
           | length DATE
           | length TIME

    length ::= grp_51
           | grp_52
           | SHORT

    sortDirection ::= ASCENDING
           | DESCENDING

    sortChunkType ::= opt_53 nt_line of
           | opt_54 nt_item of
           | opt_55 nt_word of
           | opt_56 character of

    sortStyle ::= TEXT
           | NUMERIC
           | INTERNATIONAL
           | DATETIME

    repeatRange ::= duration
           | count
           | WITH ID EQ range
           | FOREVER

    duration ::= UNTIL expression
           | WHILE expression

    count ::= FOR expression TIMES
           | FOR expression
           | expression TIMES
           | expression

    range ::= expression DOWN TO expression
           | expression TO expression

    chunk ::= chunk chunk
           | ordinal character of
           | character expression TO expression of
           | character expression of
           | ordinal nt_word of
           | nt_word expression TO expression of
           | nt_word expression of
           | ordinal nt_item of
           | nt_item expression TO expression of
           | nt_item expression of
           | ordinal nt_line of
           | nt_line expression TO expression of
           | nt_line expression of

    menu ::= MENU factor
           | ordinal MENU

    menuItem ::= MENUITEM factor of menu
           | ordinal MENUITEM of menu

    property ::= partProperty
           | globalProperty

    globalProperty ::= opt_57 propertyName

    partProperty ::= opt_58 propertyName of factor
           | opt_59 length propertyName of factor

    part ::= message
           | nt_card PART factor
           | background PART factor
           | ME
           | buttonPart
           | fieldPart
           | bkgndPart
           | cardPart
           | stackPart
           | windowPart

    stackPart ::= opt_60 nt_stack
           | nt_stack factor

    buttonPart ::= opt_61 button ID factor
           | background button ID factor
           | opt_62 button factor
           | background button factor
           | ordinal opt_63 button
           | ordinal background button
           | buttonPart of cardPart

    fieldPart ::= nt_card field ID factor
           | opt_64 field ID factor
           | nt_card field factor
           | opt_65 field factor
           | ordinal nt_card field
           | ordinal opt_66 field
           | fieldPart of cardPart

    cardPart ::= opt_67 nt_card
           | nt_card ID factor
           | position nt_card
           | ordinal nt_card
           | nt_card factor
           | cardPart of bkgndPart
           | cardPart of stackPart

    bkgndPart ::= opt_68 background
           | background ID factor
           | background factor
           | ordinal background
           | position background
           | bkgndPart of stackPart

    windowPart ::= opt_69 nt_card WINDOW
           | opt_70 TOOL WINDOW
           | opt_71 PATTERN WINDOW
           | opt_72 MESSAGE WATCHER
           | opt_73 VARIABLE WATCHER
           | WINDOW expression
           | WINDOW ID expression

    listExpression ::= expression
           | expression COMMA listExpression

    expression ::= factor
           | NOT expression
           | MINUS expression
           | grp_74 expression
           | expression CARET expression
           | expression grp_75 expression
           | expression grp_76 expression
           | expression grp_77 expression
           | expression grp_78 expression
           | expression grp_79 expression
           | expression AND expression
           | expression OR expression

    factor ::= literal
           | MINUS literal
           | LPAREN expression RPAREN
           | effectExpression
           | functionCall
           | container
           | chunk factor

    container ::= ID
           | opt_80 SELECTION
           | TARGET
           | property
           | menu
           | menuItem
           | part
           | chunk container

    musicExpression ::= expression expression
           | expression TEMPO expression expression
           | expression TEMPO expression
           | expression

    toolExpression ::= TEXT
           | SELECT
           | FIELD
           | BUTTON
           | LINE
           | opt_82 grp_83
           | opt_84 grp_85
           | SPRAY opt_86
           | expression

    effectExpression ::= opt_87 effect
           | opt_88 effect TO image
           | opt_89 effect speed
           | opt_90 effect speed TO image

    functionCall ::= builtInFunc
           | ID LPAREN opt_91 RPAREN

    builtInFunc ::= THE zeroArgFunc
           | opt_92 singleArgFunc of factor
           | singleArgFunc LPAREN listExpression RPAREN
           | multiArgFunc LPAREN listExpression RPAREN

    zeroArgFunc ::= MOUSE
           | MOUSELOC
           | RESULT
           | grp_93
           | SHIFTKEY
           | OPTIONKEY
           | TICKS
           | seconds
           | length TIME
           | length DATE
           | TOOL
           | MOUSECLICK
           | NUMBER OF opt_94 PARTS
           | NUMBER OF background PARTS
           | NUMBER OF opt_95 button
           | NUMBER OF background button
           | NUMBER OF nt_card field
           | NUMBER OF opt_96 field
           | NUMBER OF nt_cards
           | NUMBER OF background
           | NUMBER OF MARKED nt_cards
           | NUMBER OF MENUS
           | NUMBER OF WINDOWS
           | MENUS
           | DISKSPACE
           | PARAMS
           | PARAMCOUNT
           | TARGET
           | SPEECH
           | VOICES
           | WINDOWS
           | STACKS

    singleArgFunc ::= AVERAGE
           | MIN
           | MAX
           | SUM
           | NUMBER OF opt_97 PARTS
           | NUMBER OF background PARTS
           | NUMBER OF opt_98 button
           | NUMBER OF background button
           | NUMBER OF nt_card field
           | NUMBER OF opt_99 field
           | NUMBER OF nt_cards
           | NUMBER OF background
           | NUMBER OF MARKED nt_cards
           | NUMBER OF character
           | NUMBER OF nt_word
           | NUMBER OF nt_item
           | NUMBER OF nt_line
           | NUMBER OF MENUITEMS
           | NUMBER
           | RANDOM
           | SQRT
           | TRUNC
           | SIN
           | COS
           | TAN
           | ATAN
           | EXP
           | EXP1
           | EXP2
           | LN
           | LN1
           | LOG2
           | ABS
           | CHARTONUM
           | NUMTOCHAR
           | VALUE
           | LENGTH
           | DISKSPACE
           | PARAM

    multiArgFunc ::= singleArgFunc
           | ANNUITY
           | COMPOUND
           | OFFSET

    literal ::= constant
           | modifierKey
           | nt_mouseState
           | knownType
           | findType
           | LITERAL

    preposition ::= BEFORE
           | AFTER
           | INTO

    constant ::= cardinalValue
           | EMPTY
           | PI
           | QUOTE
           | RETURN
           | SPACE
           | TAB
           | FORMFEED
           | LINEFEED
           | COMMA
           | COLON

    cardinalValue ::= ZERO
           | ONE
           | TWO
           | THREE
           | FOUR
           | FIVE
           | SIX
           | SEVEN
           | EIGHT
           | NINE
           | TEN

    ordinal ::= opt_100 ordinalValue

    ordinalValue ::= FIRST
           | SECOND
           | THIRD
           | FOURTH
           | FIFTH
           | SIXTH
           | SEVENTH
           | EIGHTH
           | NINTH
           | TENTH
           | grp_101
           | LAST
           | ANY

    nt_mouseState ::= UP
           | DOWN

    modifierKey ::= COMMANDKEY
           | CMDKEY
           | OPTIONKEY
           | SHIFTKEY

    knownType ::= NUMBER
           | INTEGER
           | POINT
           | RECT
           | RECTANGLE
           | DATE
           | LOGICAL
           | BOOLEAN
           | BOOL

    findType ::= WORD
           | CHARS
           | WHOLE
           | STRING

    propertyName ::= MARKED
           | SELECTEDTEXT
           | SELECTEDCHUNK
           | SELECTEDFIELD
           | SELECTEDLINE
           | NUMBER
           | ID
           | RECT
           | RECTANGLE
           | BOTTOM
           | LEFT
           | RIGHT
           | TOP
           | CENTER
           | SCROLL
           | SCRIPT
           | PATTERN

    propertyValue ::= PLAIN
           | MENU
           | BOTTOM
           | LEFT
           | RIGHT
           | TOP
           | CENTER
           | listExpression

    commandName ::= ANSWER
           | ASK
           | PUT
           | GET
           | SET
           | SEND
           | WAIT
           | SORT
           | GO
           | ENABLE
           | DISABLE
           | READ
           | WRITE
           | HIDE
           | SHOW
           | ADD
           | SUBTRACT
           | MULTIPLY
           | DIVIDE
           | CHOOSE
           | CLICK
           | DRAG
           | TYPE
           | LOCK
           | UNLOCK
           | PASS
           | DOMENU
           | VISUAL
           | RESET
           | CREATE
           | DELETE
           | PLAY
           | DIAL
           | BEEP
           | OPEN
           | CLOSE
           | SELECT
           | FIND
           | IMPORT
           | EXPORT

    nt_picture ::= PICTURE
           | PICT

    seconds ::= SECONDS
           | SECS
           | SECOND
           | SEC

    speed ::= FAST
           | grp_102
           | VERY FAST
           | VERY grp_103

    image ::= BLACK
           | CARD
           | grp_104
           | INVERSE
           | WHITE

    effect ::= DISSOLVE
           | BARN DOOR OPEN
           | BARN DOOR CLOSE
           | CHECKERBOARD
           | IRIS OPEN
           | IRIS CLOSE
           | PLAIN
           | PUSH UP
           | PUSH DOWN
           | PUSH LEFT
           | PUSH RIGHT
           | SCROLL DOWN
           | SCROLL UP
           | SCROLL LEFT
           | SCROLL RIGHT
           | SHRINK TO TOP
           | SHRINK TO CENTER
           | SHRINK TO BOTTOM
           | STRETCH FROM TOP
           | STRETCH FROM CENTER
           | STRETCH FROM BOTTOM
           | VENETIAN BLINDS
           | WIPE UP
           | WIPE DOWN
           | WIPE LEFT
           | WIPE RIGHT
           | ZOOM IN
           | ZOOM OUT
           | ZOOM OPEN
           | ZOOM CLOSE

    timeUnit ::= TICKS
           | TICK
           | seconds

    position ::= opt_105 NEXT
           | opt_106 grp_107
           | THIS

    message ::= opt_108 grp_109 grp_110

    nt_cards ::= CARDS
           | CDS

    nt_card ::= CARD
           | CD

    background ::= BACKGROUND
           | BACKGROUNDS
           | BKGND
           | BKGNDS
           | BG
           | BGS

    button ::= BUTTON
           | BUTTONS
           | BTN
           | BTNS

    field ::= FIELD
           | FIELDS
           | FLD
           | FLDS

    nt_stack ::= STACK

    character ::= CHARACTER
           | CHARACTERS
           | CHAR
           | CHARS

    nt_word ::= WORD
           | WORDS

    nt_line ::= LINE
           | LINES

    nt_item ::= ITEM
           | ITEMS

    of ::= OF
           | FROM
           | IN

    list_1 ::= NEWLINE | list_1 NEWLINE

    opt_2 ::= statementList | $empty

    list_3 ::= NEWLINE | list_3 NEWLINE

    opt_4 ::= statementList | $empty

    list_5 ::= NEWLINE | list_5 NEWLINE

    opt_6 ::= statementList | $empty

    list_7 ::= NEWLINE | list_7 NEWLINE

    opt_8 ::= statementList | $empty

    list_9 ::= NEWLINE | list_9 NEWLINE

    list_10 ::= NEWLINE | list_10 NEWLINE

    opt_11 ::= NEWLINE | $empty

    opt_12 ::= NEWLINE | $empty

    opt_13 ::= NEWLINE | $empty

    opt_14 ::= elseStatement | $empty

    opt_15 ::= NEWLINE | $empty

    list_16 ::= NEWLINE | list_16 NEWLINE

    opt_17 ::= statementList | $empty

    grp_18 ::= elseStatement | END IF

    list_19 ::= NEWLINE | list_19 NEWLINE

    seq_20 ::= list_19 END IF

    opt_21 ::= seq_20 | $empty

    list_22 ::= NEWLINE | list_22 NEWLINE

    opt_23 ::= statementList | $empty

    list_24 ::= NEWLINE | list_24 NEWLINE

    list_25 ::= NEWLINE | list_25 NEWLINE

    opt_26 ::= TOOL | $empty

    opt_27 ::= THE | $empty

    opt_28 ::= expression | $empty

    opt_29 ::= INTERNATIONAL | $empty

    opt_30 ::= expression | $empty

    opt_31 ::= INTERNATIONAL | $empty

    opt_32 ::= expression | $empty

    opt_33 ::= INTERNATIONAL | $empty

    opt_34 ::= expression | $empty

    opt_35 ::= INTERNATIONAL | $empty

    opt_36 ::= TO | $empty

    opt_37 ::= TO | $empty

    opt_38 ::= THE | $empty

    opt_39 ::= THIS | $empty

    opt_40 ::= THE | $empty

    seq_41 ::= of THIS STACK

    opt_42 ::= seq_41 | $empty

    opt_43 ::= THE | $empty

    seq_44 ::= of THIS STACK

    opt_45 ::= seq_44 | $empty

    opt_46 ::= THE | $empty

    opt_47 ::= THE | $empty

    grp_48 ::= MALE | FEMALE | NEUTER | ROBOTIC

    grp_49 ::= COMMANDKEY | CMDKEY

    grp_50 ::= EOF | END

    grp_51 ::= ENGLISH | LONG

    grp_52 ::= ABBREVIATED | ABBREV | ABBR

    opt_53 ::= THE | $empty

    opt_54 ::= THE | $empty

    opt_55 ::= THE | $empty

    opt_56 ::= THE | $empty

    opt_57 ::= THE | $empty

    opt_58 ::= THE | $empty

    opt_59 ::= THE | $empty

    opt_60 ::= THIS | $empty

    opt_61 ::= nt_card | $empty

    opt_62 ::= nt_card | $empty

    opt_63 ::= nt_card | $empty

    opt_64 ::= background | $empty

    opt_65 ::= background | $empty

    opt_66 ::= background | $empty

    opt_67 ::= THIS | $empty

    opt_68 ::= THIS | $empty

    opt_69 ::= THE | $empty

    opt_70 ::= THE | $empty

    opt_71 ::= THE | $empty

    opt_72 ::= THE | $empty

    opt_73 ::= THE | $empty

    grp_74 ::= THERE_IS_A | THERE_IS_AN | THERE_IS_NO | THERE_IS_NOT_A | THERE_IS_NOT_AN

    grp_75 ::= MOD | DIV | SLASH | STAR

    grp_76 ::= PLUS | MINUS

    grp_77 ::= ANDAND | AMP

    grp_78 ::= GTEQ | LTEQ | LIT_32797 | LIT_29740 | LT | GT | CONTAINS | IS_IN | IS_NOT_IN | IS_A | IS_AN | IS_NOT_A | IS_NOT_AN | IS_WITHIN | IS_NOT_WITHIN

    grp_79 ::= EQ | IS_NOT | IS | LTGT | LIT_87236

    opt_80 ::= THE | $empty

    grp_81 ::= REG | REGULAR

    opt_82 ::= grp_81 | $empty

    grp_83 ::= POLY | POLYGON

    opt_84 ::= ROUND | $empty

    grp_85 ::= RECT | RECTANGLE

    opt_86 ::= CAN | $empty

    opt_87 ::= EFFECT | $empty

    opt_88 ::= EFFECT | $empty

    opt_89 ::= EFFECT | $empty

    opt_90 ::= EFFECT | $empty

    opt_91 ::= listExpression | $empty

    opt_92 ::= THE | $empty

    grp_93 ::= COMMANDKEY | CMDKEY

    opt_94 ::= nt_card | $empty

    opt_95 ::= nt_card | $empty

    opt_96 ::= background | $empty

    opt_97 ::= nt_card | $empty

    opt_98 ::= nt_card | $empty

    opt_99 ::= background | $empty

    opt_100 ::= THE | $empty

    grp_101 ::= MID | MIDDLE

    grp_102 ::= SLOW | SLOWLY

    grp_103 ::= SLOW | SLOWLY

    grp_104 ::= GRAY | GREY

    opt_105 ::= THE | $empty

    opt_106 ::= THE | $empty

    grp_107 ::= PREV | PREVIOUS

    opt_108 ::= THE | $empty

    grp_109 ::= MESSAGE | MSG

    grp_110 ::= BOX | WINDOW

%End
