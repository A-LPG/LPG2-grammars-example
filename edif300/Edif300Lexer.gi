-- Real lexer for Edif300Parser (not token-stream soup). Keywords via Edif300KWLexer.
%Options list
%Options fp=Edif300Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.edif300
%options template=LexerTemplateF.gi
%options filter=Edif300KWLexer.gi

%Define
    $kw_lexer_class /.$Edif300KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    AMP
    AMPEQ
    ANDAND
    ARROW
    ARROWSTAR
    AT
    ATEQ
    BACKSLASH
    BACKTICK
    BANG
    BITCLEAR
    CARET
    CARETEQ
    CHAR_LITERAL
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    DECIMAL_LITERAL
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DQUOTE
    ELLIPSIS
    EQ
    EQEQ
    EQEQEQ
    FATARROW
    GT
    GTEQ
    HASH
    IDENTIFIER
    LBRACE
    LBRACKET
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MINUS
    MINUSEQ
    MINUSMINUS
    NOTEQ
    NOTEQEQ
    NUMBER
    OROR
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RBRACE
    RBRACKET
    RECEIVE
    RPAREN
    RSHIFT
    RSHIFTEQ
    SEMI
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SQUOTE
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STRING
    STRING_LITERAL
    TILDE
    UNDERSCORE
    URSHIFT
    URSHIFTEQ
    YIELDSTAR
    _ABSOLUTE
    _ACLOAD
    _ACLOADDISPLAY
    _ADDDISPLAY
    _AMPERE
    _AND
    _ANNOTATE
    _APPROVEDDATE
    _APPROVEDDATEDISPLAY
    _ARC
    _ASCII
    _ASSOCIATEDINTERCONNECTNAMEDISPLAY
    _AUTHOR
    _BACKGROUNDCOLOR
    _BASELINEJUSTIFY
    _BECOMES
    _BEHAVIORVIEW
    _BIDIRECTIONAL
    _BIDIRECTIONALPORT
    _BIDIRECTIONALPORTATTRIBUTES
    _BITORDER
    _BOLDSTYLE
    _BOOLEAN
    _BOOLEANCONSTANT
    _BOOLEANCONSTANTREF
    _BOOLEANMAP
    _BOOLEANPARAMETER
    _BOOLEANPARAMETERASSIGN
    _BOOLEANPARAMETERREF
    _BORDERPATTERN
    _BORDERPATTERNVISIBLE
    _BORDERWIDTH
    _BOTTOMJUSTIFY
    _CALCULATED
    _CANDELA
    _CAPLINEJUSTIFY
    _CELL
    _CELLHEADER
    _CELLNAMEDISPLAY
    _CELLPROPERTYDISPLAY
    _CELLPROPERTYDISPLAYOVERRIDE
    _CELLPROPERTYOVERRIDE
    _CELLREF
    _CELSIUS
    _CENTERJUSTIFY
    _CHARACTERENCODING
    _CHECKDATE
    _CHECKDATEDISPLAY
    _CIRCLE
    _CLUSTER
    _CLUSTERCONFIGURATION
    _CLUSTERCONFIGURATIONNAMECASESENSITIVE
    _CLUSTERCONFIGURATIONREF
    _CLUSTERHEADER
    _CLUSTERNAMECASESENSITIVE
    _CLUSTERPROPERTYDISPLAY
    _CLUSTERPROPERTYDISPLAYOVERRIDE
    _CLUSTERPROPERTYOVERRIDE
    _CLUSTERREF
    _COLOR
    _COMMENT
    _COMMENTGRAPHICS
    _COMPANYNAME
    _COMPANYNAMEDISPLAY
    _COMPLEMENTEDNAME
    _COMPLEMENTEDNAMEPART
    _COMPLEXGEOMETRY
    _COMPLEXNAME
    _COMPOUND
    _CONDITION
    _CONDITIONDISPLAY
    _CONNECTEDSIGNALINDEXGENERATOR
    _CONNECTEDSIGNALINDEXGENERATORDISPLAY
    _CONNECTIVITYBUS
    _CONNECTIVITYBUSJOINED
    _CONNECTIVITYBUSSLICE
    _CONNECTIVITYFRAMESTRUCTURE
    _CONNECTIVITYNET
    _CONNECTIVITYNETJOINED
    _CONNECTIVITYRIPPER
    _CONNECTIVITYRIPPERREF
    _CONNECTIVITYSTRUCTURE
    _CONNECTIVITYSUBBUS
    _CONNECTIVITYSUBNET
    _CONNECTIVITYTAGGENERATOR
    _CONNECTIVITYTAGGENERATORDISPLAY
    _CONNECTIVITYUNITS
    _CONNECTIVITYVIEW
    _CONNECTIVITYVIEWHEADER
    _CONSTANTVALUES
    _CONTRACT
    _CONTRACTDISPLAY
    _COPYRIGHT
    _COPYRIGHTDISPLAY
    _CORNERTYPE
    _COULOMB
    _CRITICALITY
    _CRITICALITYDISPLAY
    _CURRENTMAP
    _CURVE
    _DATAORIGIN
    _DATE
    _DCFANINLOAD
    _DCFANINLOADDISPLAY
    _DCFANOUTLOAD
    _DCFANOUTLOADDISPLAY
    _DCMAXFANIN
    _DCMAXFANINDISPLAY
    _DCMAXFANOUT
    _DCMAXFANOUTDISPLAY
    _DECIMALTOSTRING
    _DEFAULTCLUSTERCONFIGURATION
    _DEFAULTCONNECTION
    _DEGREE
    _DELAY
    _DERIVEDFROM
    _DESIGN
    _DESIGNATOR
    _DESIGNATORDISPLAY
    _DESIGNHEADER
    _DESIGNHIERARCHY
    _DESIGNHIERARCHYHEADER
    _DESIGNHIERARCHYNAMECASESENSITIVE
    _DESIGNNAMECASESENSITIVE
    _DESIGNUNITS
    _DIAGRAM
    _DIRECTIONALPORTATTRIBUTEOVERRIDE
    _DISPLAY
    _DISPLAYATTRIBUTES
    _DISPLAYNAME
    _DISPLAYNAMEOVERRIDE
    _DOCUMENTATION
    _DOCUMENTATIONHEADER
    _DOCUMENTATIONNAMECASESENSITIVE
    _DOCUMENTATIONUNITS
    _DOMINATES
    _DOT
    _DRAWINGDESCRIPTION
    _DRAWINGDESCRIPTIONDISPLAY
    _DRAWINGIDENTIFICATION
    _DRAWINGIDENTIFICATIONDISPLAY
    _DRAWINGSIZE
    _DRAWINGSIZEDISPLAY
    _DURATION
    _E
    _EDIF
    _EDIFHEADER
    _EDIFLEVEL
    _EDIFVERSION
    _ENDTYPE
    _ENGINEERINGDATE
    _ENGINEERINGDATEDISPLAY
    _EVENT
    _EXTEND
    _EXTERNAL
    _FAHRENHEIT
    _FALSE
    _FARAD
    _FIGURE
    _FIGUREGROUP
    _FIGUREGROUPNAMECASESENSITIVE
    _FIGUREGROUPOVERRIDE
    _FILLPATTERN
    _FILLPATTERNVISIBLE
    _FIXED
    _FONT
    _FONTCAPITALHEIGHT
    _FONTDEFINITIONS
    _FONTDESCENT
    _FONTHEIGHT
    _FONTPROPORTIONS
    _FONTREF
    _FONTS
    _FONTWIDTH
    _FORBIDDENEVENT
    _FORFRAME
    _FORFRAMEANNOTATE
    _FORFRAMEINDEX
    _FORFRAMEINDEXDISPLAY
    _FORFRAMEINDEXNAMECASESENSITIVE
    _FORFRAMEINDEXREF
    _FORFRAMEMEMBERREF
    _FORFRAMEREF
    _FRAMECONFIGURATION
    _FRAMENAMECASESENSITIVE
    _FRAMEREF
    _FROMBOTTOM
    _FROMLEFT
    _FROMRIGHT
    _FROMTOP
    _GENERATED
    _GEOMETRYMACRO
    _GEOMETRYMACROHEADER
    _GEOMETRYMACROREF
    _GEOMETRYMACROUNITS
    _GLOBALPORT
    _GLOBALPORTBUNDLE
    _GLOBALPORTDEFINITIONS
    _GLOBALPORTLIST
    _GLOBALPORTNAMECASESENSITIVE
    _GLOBALPORTNAMEDISPLAY
    _GLOBALPORTPROPERTYDISPLAY
    _GLOBALPORTREF
    _GLOBALPORTSCOPE
    _HENRY
    _HERTZ
    _HORIZONTALJUSTIFICATION
    _HOTSPOT
    _HOTSPOTCONNECTDIRECTION
    _HOTSPOTGRID
    _HOTSPOTNAMECASESENSITIVE
    _HOTSPOTNAMEDISPLAY
    _IEEESECTION
    _IEEESTANDARD
    _IFFRAME
    _IFFRAMEANNOTATE
    _IFFRAMEREF
    _IFFRAMESET
    _IGNORE
    _IMPLEMENTATIONNAMECASESENSITIVE
    _IMPLEMENTATIONNAMEDISPLAY
    _INDEXENDDISPLAY
    _INDEXNAMEDISPLAY
    _INDEXSTART
    _INDEXSTARTDISPLAY
    _INDEXSTEP
    _INDEXSTEPDISPLAY
    _INDEXVALUE
    _INPUT
    _INPUTPORT
    _INPUTPORTATTRIBUTES
    _INSTANCE
    _INSTANCECONFIGURATION
    _INSTANCEINDEXVALUE
    _INSTANCEMEMBERREF
    _INSTANCENAMECASESENSITIVE
    _INSTANCENAMEDISPLAY
    _INSTANCENAMEGENERATOR
    _INSTANCENAMEGENERATORDISPLAY
    _INSTANCEPORTATTRIBUTEDISPLAY
    _INSTANCEPORTATTRIBUTES
    _INSTANCEPROPERTYDISPLAY
    _INSTANCEPROPERTYOVERRIDE
    _INSTANCEREF
    _INSTANCEWIDTH
    _INSTANCEWIDTHDISPLAY
    _INTEGER
    _INTEGERCONSTANT
    _INTEGERCONSTANTREF
    _INTEGEREQUAL
    _INTEGERPARAMETER
    _INTEGERPARAMETERASSIGN
    _INTEGERPARAMETERREF
    _INTEGERPRODUCT
    _INTEGERQUOTIENT
    _INTEGERREMAINDER
    _INTEGERSUBTRACT
    _INTEGERSUM
    _INTERCONNECTANNOTATE
    _INTERCONNECTATTACHEDTEXT
    _INTERCONNECTDELAY
    _INTERCONNECTDELAYDISPLAY
    _INTERCONNECTHEADER
    _INTERCONNECTNAMECASESENSITIVE
    _INTERCONNECTNAMEDISPLAY
    _INTERCONNECTPROPERTYDISPLAY
    _INTERCONNECTREF
    _INTERCONNECTSET
    _INTERFACE
    _INTERFACEJOINED
    _INTERFACEUNITS
    _ISO8859
    _ISOLATED
    _ITALICSTYLE
    _JISX0201
    _JISX0208
    _JOINEDASSIGNAL
    _JOULE
    _K0KEYWORDLEVEL
    _K1KEYWORDALIAS
    _K1KEYWORDLEVEL
    _K2ACTUAL
    _K2BUILD
    _K2FORMAL
    _K2GENERATE
    _K2KEYWORDDEFINE
    _K2KEYWORDLEVEL
    _K2KEYWORDPARAMETERS
    _K2LITERAL
    _K2OPTIONAL
    _K2REQUIRED
    _K3BUILD
    _K3COLLECTOR
    _K3FOREACH
    _K3FORMAL
    _K3FORMALLIST
    _K3GENERATE
    _K3KEYWORDDEFINE
    _K3KEYWORDLEVEL
    _K3KEYWORDPARAMETERS
    _KELVIN
    _KEYWORDMAP
    _KILOGRAM
    _LEAF
    _LEAFOCCURRENCEANNOTATE
    _LEFTJUSTIFY
    _LESSTHAN
    _LESSTHANOREQUAL
    _LIBRARY
    _LIBRARYHEADER
    _LIBRARYNAMECASESENSITIVE
    _LIBRARYOBJECTNAMECASESENSITIVE
    _LIBRARYREF
    _LOADDELAY
    _LOCALPORTGROUP
    _LOCALPORTGROUPNAMECASESENSITIVE
    _LOCALPORTGROUPREF
    _LOGICALCONNECTIVITY
    _LOGICDEFINITIONS
    _LOGICLIST
    _LOGICMAPINPUT
    _LOGICMAPOUTPUT
    _LOGICMODELUNITS
    _LOGICMODELVIEW
    _LOGICONEOF
    _LOGICREF
    _LOGICVALUE
    _LSBTOMSB
    _MASKLAYOUTUNITS
    _MASKLAYOUTVIEW
    _MEASURED
    _METER
    _MIDDLEJUSTIFY
    _MINIMALWIDTH
    _MINIMUMSTRINGLENGTH
    _MINOMAX
    _MIXEDDIRECTION
    _MNM
    _MOLE
    _MSBTOLSB
    _MUSTJOIN
    _NAMEALIAS
    _NAMECASESENSITIVITY
    _NAMEDIMENSION
    _NAMEDIMENSIONSTRUCTURE
    _NAMEINFORMATION
    _NAMEPARTSEPARATOR
    _NAMESTRUCTURE
    _NARROWPORT
    _NARROWWIRE
    _NOHOTSPOTGRID
    _NOMINALHOTSPOTGRID
    _NONPERMUTABLE
    _NOT
    _NOTINHERITED
    _NUMBER
    _NUMBERPARAMETER
    _NUMBERPARAMETERASSIGN
    _NUMBERPARAMETERREF
    _NUMBERPOINT
    _OCCURRENCEANNOTATE
    _OCCURRENCEHIERARCHYANNOTATE
    _OFFSETEVENT
    _OHM
    _OPENSHAPE
    _OR
    _ORIGIN
    _ORIGINALBOUNDINGBOX
    _ORIGINALDRAWINGDATE
    _ORIGINALDRAWINGDATEDISPLAY
    _OTHERWISEFRAME
    _OTHERWISEFRAMEANNOTATE
    _OTHERWISEFRAMEREF
    _OUTPUT
    _OUTPUTPORT
    _OUTPUTPORTATTRIBUTES
    _OWNER
    _PAGE
    _PAGEANNOTATE
    _PAGEBORDER
    _PAGEBORDERTEMPLATE
    _PAGEBORDERTEMPLATEREF
    _PAGECOMMENTGRAPHICS
    _PAGEHEADER
    _PAGEIDENTIFICATION
    _PAGEIDENTIFICATIONDISPLAY
    _PAGENAMECASESENSITIVE
    _PAGEPROPERTYDISPLAY
    _PAGEREF
    _PAGESIZE
    _PAGETITLE
    _PAGETITLEBLOCK
    _PAGETITLEBLOCKATTRIBUTEDISPLAY
    _PAGETITLEBLOCKATTRIBUTES
    _PAGETITLEBLOCKTEMPLATE
    _PAGETITLEBLOCKTEMPLATEREF
    _PAGETITLEDISPLAY
    _PARAMETERDISPLAY
    _PARAMETERNAMECASESENSITIVE
    _PARAMETERNAMEDISPLAY
    _PATH
    _PATHDELAY
    _PATHWIDTH
    _PCBLAYOUTUNITS
    _PCBLAYOUTVIEW
    _PERMUTABLE
    _PHYSICALDEFAULTS
    _PHYSICALSCALING
    _PIXELPATTERN
    _PIXELROW
    _POINT
    _POINTLIST
    _POLYGON
    _PORT
    _PORTANNOTATE
    _PORTATTRIBUTEDISPLAY
    _PORTBUNDLE
    _PORTDELAY
    _PORTDELAYDISPLAY
    _PORTDELAYOVERRIDE
    _PORTINDEXVALUE
    _PORTINSTANCEREF
    _PORTJOINED
    _PORTLIST
    _PORTLOADDELAY
    _PORTLOADDELAYDISPLAY
    _PORTLOADDELAYOVERRIDE
    _PORTMEMBERREF
    _PORTNAMECASESENSITIVE
    _PORTNAMEDISPLAY
    _PORTNAMEGENERATOR
    _PORTNAMEGENERATORDISPLAY
    _PORTPROPERTYDISPLAY
    _PORTPROPERTYDISPLAYOVERRIDE
    _PORTPROPERTYOVERRIDE
    _PORTREF
    _PORTSET
    _PORTWIDTH
    _PREVIOUSVERSION
    _PRIMARYNAME
    _PROGRAM
    _PROPERTY
    _PROPERTYDISPLAY
    _PROPERTYDISPLAYOVERRIDE
    _PROPERTYINHERITANCECONTROL
    _PROPERTYNAMECASESENSITIVE
    _PROPERTYNAMEDISPLAY
    _PROPERTYOVERRIDE
    _PROPORTIONALFONT
    _PT
    _RADIAN
    _REASON
    _RECTANGLE
    _REMOVEDISPLAY
    _REPETITIONCOUNT
    _REPETITIONCOUNTDISPLAY
    _REPLACEDISPLAY
    _REQUIRED
    _RESOLVES
    _REVISION
    _REVISIONDISPLAY
    _RIGHTJUSTIFY
    _RIPPERHOTSPOT
    _RIPPERHOTSPOTREF
    _ROTATION
    _ROUND
    _SCALEX
    _SCALEY
    _SCHEMATICBUS
    _SCHEMATICBUSDETAILS
    _SCHEMATICBUSGRAPHICS
    _SCHEMATICBUSJOINED
    _SCHEMATICBUSSLICE
    _SCHEMATICCOMPLEXFIGURE
    _SCHEMATICFIGUREMACRO
    _SCHEMATICFIGUREMACROREF
    _SCHEMATICFORFRAMEBORDER
    _SCHEMATICFORFRAMEBORDERTEMPLATE
    _SCHEMATICFORFRAMEBORDERTEMPLATEREF
    _SCHEMATICFORFRAMEIMPLEMENTATION
    _SCHEMATICFORFRAMEIMPLEMENTATIONHEADER
    _SCHEMATICFRAMEIMPLEMENTATIONDETAILS
    _SCHEMATICGLOBALPORTATTRIBUTES
    _SCHEMATICGLOBALPORTIMPLEMENTATION
    _SCHEMATICGLOBALPORTIMPLEMENTATIONREF
    _SCHEMATICGLOBALPORTTEMPLATE
    _SCHEMATICGLOBALPORTTEMPLATEREF
    _SCHEMATICIFFRAMEBORDER
    _SCHEMATICIFFRAMEBORDERTEMPLATE
    _SCHEMATICIFFRAMEBORDERTEMPLATEREF
    _SCHEMATICIFFRAMEIMPLEMENTATION
    _SCHEMATICIFFRAMEIMPLEMENTATIONHEADER
    _SCHEMATICIMPLEMENTATION
    _SCHEMATICINSTANCEIMPLEMENTATION
    _SCHEMATICINSTANCEIMPLEMENTATIONREF
    _SCHEMATICINTERCONNECTATTRIBUTEDISPLAY
    _SCHEMATICINTERCONNECTHEADER
    _SCHEMATICINTERCONNECTTERMINATORIMPLEMENTATION
    _SCHEMATICINTERCONNECTTERMINATORIMPLEMENTATIONREF
    _SCHEMATICINTERCONNECTTERMINATORTEMPLATE
    _SCHEMATICINTERCONNECTTERMINATORTEMPLATEREF
    _SCHEMATICJUNCTIONIMPLEMENTATION
    _SCHEMATICJUNCTIONIMPLEMENTATIONREF
    _SCHEMATICJUNCTIONTEMPLATE
    _SCHEMATICJUNCTIONTEMPLATEREF
    _SCHEMATICMASTERPORTIMPLEMENTATION
    _SCHEMATICMASTERPORTIMPLEMENTATIONREF
    _SCHEMATICMASTERPORTTEMPLATE
    _SCHEMATICMASTERPORTTEMPLATEREF
    _SCHEMATICMETRIC
    _SCHEMATICNET
    _SCHEMATICNETDETAILS
    _SCHEMATICNETGRAPHICS
    _SCHEMATICNETJOINED
    _SCHEMATICOFFPAGECONNECTORIMPLEMENTATION
    _SCHEMATICOFFPAGECONNECTORIMPLEMENTATIONREF
    _SCHEMATICOFFPAGECONNECTORTEMPLATE
    _SCHEMATICOFFPAGECONNECTORTEMPLATEREF
    _SCHEMATICONPAGECONNECTORIMPLEMENTATION
    _SCHEMATICONPAGECONNECTORIMPLEMENTATIONREF
    _SCHEMATICONPAGECONNECTORTEMPLATE
    _SCHEMATICONPAGECONNECTORTEMPLATEREF
    _SCHEMATICOTHERWISEFRAMEBORDER
    _SCHEMATICOTHERWISEFRAMEBORDERTEMPLATE
    _SCHEMATICOTHERWISEFRAMEBORDERTEMPLATEREF
    _SCHEMATICOTHERWISEFRAMEIMPLEMENTATION
    _SCHEMATICOTHERWISEFRAMEIMPLEMENTATIONHEADER
    _SCHEMATICPORTACPOWER
    _SCHEMATICPORTACPOWERRECOMMENDEDFREQUENCY
    _SCHEMATICPORTACPOWERRECOMMENDEDVOLTAGERMS
    _SCHEMATICPORTANALOG
    _SCHEMATICPORTATTRIBUTES
    _SCHEMATICPORTCHASSISGROUND
    _SCHEMATICPORTCLOCK
    _SCHEMATICPORTDCPOWER
    _SCHEMATICPORTDCPOWERRECOMMENDEDVOLTAGE
    _SCHEMATICPORTEARTHGROUND
    _SCHEMATICPORTGROUND
    _SCHEMATICPORTNONLOGICAL
    _SCHEMATICPORTOPENCOLLECTOR
    _SCHEMATICPORTOPENEMITTER
    _SCHEMATICPORTPOWER
    _SCHEMATICPORTSTYLE
    _SCHEMATICPORTTHREESTATE
    _SCHEMATICREQUIREDDEFAULTS
    _SCHEMATICRIPPERIMPLEMENTATION
    _SCHEMATICRIPPERIMPLEMENTATIONREF
    _SCHEMATICRIPPERTEMPLATE
    _SCHEMATICRIPPERTEMPLATEREF
    _SCHEMATICSUBBUS
    _SCHEMATICSUBBUSSET
    _SCHEMATICSUBINTERCONNECTHEADER
    _SCHEMATICSUBNET
    _SCHEMATICSUBNETSET
    _SCHEMATICSYMBOL
    _SCHEMATICSYMBOLBORDER
    _SCHEMATICSYMBOLBORDERTEMPLATE
    _SCHEMATICSYMBOLBORDERTEMPLATEREF
    _SCHEMATICSYMBOLHEADER
    _SCHEMATICSYMBOLPORTIMPLEMENTATION
    _SCHEMATICSYMBOLPORTIMPLEMENTATIONREF
    _SCHEMATICSYMBOLPORTTEMPLATE
    _SCHEMATICSYMBOLPORTTEMPLATEREF
    _SCHEMATICSYMBOLREF
    _SCHEMATICTEMPLATEHEADER
    _SCHEMATICUNITS
    _SCHEMATICVIEW
    _SCHEMATICVIEWHEADER
    _SCHEMATICWIREAFFINITY
    _SCHEMATICWIRESTYLE
    _SECOND
    _SECTION
    _SECTIONTITLE
    _SEQUENCE
    _SETANGLE
    _SETCAPACITANCE
    _SETCURRENT
    _SETDISTANCE
    _SETFREQUENCY
    _SETTIME
    _SETVOLTAGE
    _SHAPE
    _SIEMENS
    _SIGNAL
    _SIGNALANNOTATE
    _SIGNALGROUP
    _SIGNALGROUPANNOTATE
    _SIGNALGROUPNAMECASESENSITIVE
    _SIGNALGROUPREF
    _SIGNALINDEXVALUE
    _SIGNALJOINED
    _SIGNALLIST
    _SIGNALMEMBERREF
    _SIGNALNAMECASESENSITIVE
    _SIGNALREF
    _SIGNALWIDTH
    _STATUS
    _STEP
    _STRING
    _STRINGCONCATENATE
    _STRINGCONSTANT
    _STRINGCONSTANTREF
    _STRINGEQUAL
    _STRINGLENGTH
    _STRINGPARAMETER
    _STRINGPARAMETERASSIGN
    _STRINGPARAMETERREF
    _STRINGPREFIX
    _STRINGSUFFIX
    _STRONG
    _SUBSTRING
    _SYMBOLICLAYOUTUNITS
    _SYMBOLICLAYOUTVIEW
    _TECHNOLOGY
    _TEXTHEIGHT
    _TIME
    _TIMEINTERVAL
    _TIMESTAMP
    _TIMING
    _TIMINGDISPLAY
    _TOPJUSTIFY
    _TOTALPAGES
    _TOTALPAGESDISPLAY
    _TRANSFORM
    _TRANSITION
    _TRUE
    _TRUNCATE
    _TYPEFACE
    _TYPEFACESUFFIX
    _UNCONFIGURED
    _UNCONSTRAINED
    _UNDEFINED
    _UNIT
    _UNITDEFINITIONS
    _UNITREF
    _UNRESTRICTED
    _UNSPECIFIED
    _UNSPECIFIEDDIRECTIONPORT
    _UNTYPED
    _UNUSED
    _USABLEAREA
    _USERDATA
    _VERSION
    _VERTICALJUSTIFICATION
    _VIEWGROUP
    _VIEWGROUPHEADER
    _VIEWGROUPNAMECASESENSITIVE
    _VIEWGROUPREF
    _VIEWNAMECASESENSITIVE
    _VIEWNAMEDISPLAY
    _VIEWPROPERTYDISPLAY
    _VIEWPROPERTYOVERRIDE
    _VIEWREF
    _VISIBLE
    _VOLT
    _VOLTAGEMAP
    _WATT
    _WEAK
    _WEAKJOINED
    _WEBER
    _WIDEPORT
    _WIDEWIRE
    _WRITTEN
    _XOR
    _YEAR
%End

%Terminals
    CtlCharNotWS

    LF   CR   HT   FF

    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    _

    A    B    C    D    E    F    G    H    I    J    K    L    M
    N    O    P    Q    R    S    T    U    V    W    X    Y    Z

    0    1    2    3    4    5    6    7    8    9

    AfterASCII   ::= '\u0080..\ufffe'
    Space        ::= ' '
    LF           ::= NewLine
    CR           ::= Return
    HT           ::= HorizontalTab
    FF           ::= FormFeed
    DoubleQuote  ::= '"'
    SingleQuote  ::= "'"
    Percent      ::= '%'
    VerticalBar  ::= '|'
    Exclamation  ::= '!'
    AtSign       ::= '@'
    BackQuote    ::= '`'
    Tilde        ::= '~'
    Sharp        ::= '#'
    DollarSign   ::= '$'
    Ampersand    ::= '&'
    Caret        ::= '^'
    Colon        ::= ':'
    SemiColon    ::= ';'
    BackSlash    ::= '\'
    LeftBrace    ::= '{'
    RightBrace   ::= '}'
    LeftBracket  ::= '['
    RightBracket ::= ']'
    QuestionMark ::= '?'
    Comma        ::= ','
    Dot          ::= '.'
    LessThan     ::= '<'
    GreaterThan  ::= '>'
    Plus         ::= '+'
    Minus        ::= '-'
    Slash        ::= '/'
    Star         ::= '*'
    Equal        ::= '='
    LeftParen    ::= '('
    RightParen   ::= ')'
%End

%Start
    Token
%End

%Rules
    Token ::= identifier /. checkForKeyWord(); ./
            | number     /. makeToken($_NUMBER); ./
            | string     /. makeToken($_STRING_LITERAL); ./
            | LineComment /. skipToken(); ./
            | HashComment /. skipToken(); ./
            | white /. skipToken(); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'I' 'n' 't' 'e' 'r' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'T' 'e' 'r' 'm' 'i' 'n' 'a' 't' 'o' 'r' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' 'R' 'e' 'f' /. makeToken($__SCHEMATICINTERCONNECTTERMINATORIMPLEMENTATIONREF); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'I' 'n' 't' 'e' 'r' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'T' 'e' 'r' 'm' 'i' 'n' 'a' 't' 'o' 'r' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' /. makeToken($__SCHEMATICINTERCONNECTTERMINATORIMPLEMENTATION); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'O' 't' 'h' 'e' 'r' 'w' 'i' 's' 'e' 'F' 'r' 'a' 'm' 'e' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__SCHEMATICOTHERWISEFRAMEIMPLEMENTATIONHEADER); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'I' 'n' 't' 'e' 'r' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'T' 'e' 'r' 'm' 'i' 'n' 'a' 't' 'o' 'r' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' 'R' 'e' 'f' /. makeToken($__SCHEMATICINTERCONNECTTERMINATORTEMPLATEREF); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'O' 'f' 'f' 'P' 'a' 'g' 'e' 'C' 'o' 'n' 'n' 'e' 'c' 't' 'o' 'r' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' 'R' 'e' 'f' /. makeToken($__SCHEMATICOFFPAGECONNECTORIMPLEMENTATIONREF); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'O' 'n' 'P' 'a' 'g' 'e' 'C' 'o' 'n' 'n' 'e' 'c' 't' 'o' 'r' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' 'R' 'e' 'f' /. makeToken($__SCHEMATICONPAGECONNECTORIMPLEMENTATIONREF); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'P' 'o' 'r' 't' 'A' 'c' 'P' 'o' 'w' 'e' 'r' 'R' 'e' 'c' 'o' 'm' 'm' 'e' 'n' 'd' 'e' 'd' 'V' 'o' 'l' 't' 'a' 'g' 'e' 'R' 'm' 's' /. makeToken($__SCHEMATICPORTACPOWERRECOMMENDEDVOLTAGERMS); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'O' 't' 'h' 'e' 'r' 'w' 'i' 's' 'e' 'F' 'r' 'a' 'm' 'e' 'B' 'o' 'r' 'd' 'e' 'r' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' 'R' 'e' 'f' /. makeToken($__SCHEMATICOTHERWISEFRAMEBORDERTEMPLATEREF); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'P' 'o' 'r' 't' 'A' 'c' 'P' 'o' 'w' 'e' 'r' 'R' 'e' 'c' 'o' 'm' 'm' 'e' 'n' 'd' 'e' 'd' 'F' 'r' 'e' 'q' 'u' 'e' 'n' 'c' 'y' /. makeToken($__SCHEMATICPORTACPOWERRECOMMENDEDFREQUENCY); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'I' 'n' 't' 'e' 'r' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'T' 'e' 'r' 'm' 'i' 'n' 'a' 't' 'o' 'r' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' /. makeToken($__SCHEMATICINTERCONNECTTERMINATORTEMPLATE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'O' 'f' 'f' 'P' 'a' 'g' 'e' 'C' 'o' 'n' 'n' 'e' 'c' 't' 'o' 'r' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' /. makeToken($__SCHEMATICOFFPAGECONNECTORIMPLEMENTATION); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'O' 'n' 'P' 'a' 'g' 'e' 'C' 'o' 'n' 'n' 'e' 'c' 't' 'o' 'r' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' /. makeToken($__SCHEMATICONPAGECONNECTORIMPLEMENTATION); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'P' 'o' 'r' 't' 'D' 'c' 'P' 'o' 'w' 'e' 'r' 'R' 'e' 'c' 'o' 'm' 'm' 'e' 'n' 'd' 'e' 'd' 'V' 'o' 'l' 't' 'a' 'g' 'e' /. makeToken($__SCHEMATICPORTDCPOWERRECOMMENDEDVOLTAGE); ./
            | '(' 'c' 'l' 'u' 's' 't' 'e' 'r' 'C' 'o' 'n' 'f' 'i' 'g' 'u' 'r' 'a' 't' 'i' 'o' 'n' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__CLUSTERCONFIGURATIONNAMECASESENSITIVE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'F' 'o' 'r' 'F' 'r' 'a' 'm' 'e' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__SCHEMATICFORFRAMEIMPLEMENTATIONHEADER); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'I' 'n' 't' 'e' 'r' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'A' 't' 't' 'r' 'i' 'b' 'u' 't' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__SCHEMATICINTERCONNECTATTRIBUTEDISPLAY); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'O' 't' 'h' 'e' 'r' 'w' 'i' 's' 'e' 'F' 'r' 'a' 'm' 'e' 'B' 'o' 'r' 'd' 'e' 'r' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' /. makeToken($__SCHEMATICOTHERWISEFRAMEBORDERTEMPLATE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'O' 't' 'h' 'e' 'r' 'w' 'i' 's' 'e' 'F' 'r' 'a' 'm' 'e' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' /. makeToken($__SCHEMATICOTHERWISEFRAMEIMPLEMENTATION); ./
            | '(' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'e' 'd' 'S' 'i' 'g' 'n' 'a' 'l' 'I' 'n' 'd' 'e' 'x' 'G' 'e' 'n' 'e' 'r' 'a' 't' 'o' 'r' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__CONNECTEDSIGNALINDEXGENERATORDISPLAY); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'G' 'l' 'o' 'b' 'a' 'l' 'P' 'o' 'r' 't' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' 'R' 'e' 'f' /. makeToken($__SCHEMATICGLOBALPORTIMPLEMENTATIONREF); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'I' 'f' 'F' 'r' 'a' 'm' 'e' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__SCHEMATICIFFRAMEIMPLEMENTATIONHEADER); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'M' 'a' 's' 't' 'e' 'r' 'P' 'o' 'r' 't' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' 'R' 'e' 'f' /. makeToken($__SCHEMATICMASTERPORTIMPLEMENTATIONREF); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'O' 'f' 'f' 'P' 'a' 'g' 'e' 'C' 'o' 'n' 'n' 'e' 'c' 't' 'o' 'r' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' 'R' 'e' 'f' /. makeToken($__SCHEMATICOFFPAGECONNECTORTEMPLATEREF); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'S' 'y' 'm' 'b' 'o' 'l' 'P' 'o' 'r' 't' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' 'R' 'e' 'f' /. makeToken($__SCHEMATICSYMBOLPORTIMPLEMENTATIONREF); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'F' 'r' 'a' 'm' 'e' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' 'D' 'e' 't' 'a' 'i' 'l' 's' /. makeToken($__SCHEMATICFRAMEIMPLEMENTATIONDETAILS); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'O' 'n' 'P' 'a' 'g' 'e' 'C' 'o' 'n' 'n' 'e' 'c' 't' 'o' 'r' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' 'R' 'e' 'f' /. makeToken($__SCHEMATICONPAGECONNECTORTEMPLATEREF); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'F' 'o' 'r' 'F' 'r' 'a' 'm' 'e' 'B' 'o' 'r' 'd' 'e' 'r' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' 'R' 'e' 'f' /. makeToken($__SCHEMATICFORFRAMEBORDERTEMPLATEREF); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'I' 'n' 's' 't' 'a' 'n' 'c' 'e' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' 'R' 'e' 'f' /. makeToken($__SCHEMATICINSTANCEIMPLEMENTATIONREF); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'J' 'u' 'n' 'c' 't' 'i' 'o' 'n' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' 'R' 'e' 'f' /. makeToken($__SCHEMATICJUNCTIONIMPLEMENTATIONREF); ./
            | '(' 'a' 's' 's' 'o' 'c' 'i' 'a' 't' 'e' 'd' 'I' 'n' 't' 'e' 'r' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'N' 'a' 'm' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__ASSOCIATEDINTERCONNECTNAMEDISPLAY); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'G' 'l' 'o' 'b' 'a' 'l' 'P' 'o' 'r' 't' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' /. makeToken($__SCHEMATICGLOBALPORTIMPLEMENTATION); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'I' 'f' 'F' 'r' 'a' 'm' 'e' 'B' 'o' 'r' 'd' 'e' 'r' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' 'R' 'e' 'f' /. makeToken($__SCHEMATICIFFRAMEBORDERTEMPLATEREF); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'M' 'a' 's' 't' 'e' 'r' 'P' 'o' 'r' 't' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' /. makeToken($__SCHEMATICMASTERPORTIMPLEMENTATION); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'O' 'f' 'f' 'P' 'a' 'g' 'e' 'C' 'o' 'n' 'n' 'e' 'c' 't' 'o' 'r' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' /. makeToken($__SCHEMATICOFFPAGECONNECTORTEMPLATE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'S' 'y' 'm' 'b' 'o' 'l' 'P' 'o' 'r' 't' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' /. makeToken($__SCHEMATICSYMBOLPORTIMPLEMENTATION); ./
            | '(' 'd' 'e' 's' 'i' 'g' 'n' 'H' 'i' 'e' 'r' 'a' 'r' 'c' 'h' 'y' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__DESIGNHIERARCHYNAMECASESENSITIVE); ./
            | '(' 'd' 'i' 'r' 'e' 'c' 't' 'i' 'o' 'n' 'a' 'l' 'P' 'o' 'r' 't' 'A' 't' 't' 'r' 'i' 'b' 'u' 't' 'e' 'O' 'v' 'e' 'r' 'r' 'i' 'd' 'e' /. makeToken($__DIRECTIONALPORTATTRIBUTEOVERRIDE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'O' 'n' 'P' 'a' 'g' 'e' 'C' 'o' 'n' 'n' 'e' 'c' 't' 'o' 'r' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' /. makeToken($__SCHEMATICONPAGECONNECTORTEMPLATE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'R' 'i' 'p' 'p' 'e' 'r' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' 'R' 'e' 'f' /. makeToken($__SCHEMATICRIPPERIMPLEMENTATIONREF); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'S' 'y' 'm' 'b' 'o' 'l' 'B' 'o' 'r' 'd' 'e' 'r' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' 'R' 'e' 'f' /. makeToken($__SCHEMATICSYMBOLBORDERTEMPLATEREF); ./
            | '(' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'i' 'v' 'i' 't' 'y' 'T' 'a' 'g' 'G' 'e' 'n' 'e' 'r' 'a' 't' 'o' 'r' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__CONNECTIVITYTAGGENERATORDISPLAY); ./
            | '(' 'i' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__IMPLEMENTATIONNAMECASESENSITIVE); ./
            | '(' 'l' 'o' 'c' 'a' 'l' 'P' 'o' 'r' 't' 'G' 'r' 'o' 'u' 'p' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__LOCALPORTGROUPNAMECASESENSITIVE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'F' 'o' 'r' 'F' 'r' 'a' 'm' 'e' 'B' 'o' 'r' 'd' 'e' 'r' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' /. makeToken($__SCHEMATICFORFRAMEBORDERTEMPLATE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'F' 'o' 'r' 'F' 'r' 'a' 'm' 'e' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' /. makeToken($__SCHEMATICFORFRAMEIMPLEMENTATION); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'I' 'n' 's' 't' 'a' 'n' 'c' 'e' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' /. makeToken($__SCHEMATICINSTANCEIMPLEMENTATION); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'J' 'u' 'n' 'c' 't' 'i' 'o' 'n' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' /. makeToken($__SCHEMATICJUNCTIONIMPLEMENTATION); ./
            | '(' 'c' 'l' 'u' 's' 't' 'e' 'r' 'P' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'D' 'i' 's' 'p' 'l' 'a' 'y' 'O' 'v' 'e' 'r' 'r' 'i' 'd' 'e' /. makeToken($__CLUSTERPROPERTYDISPLAYOVERRIDE); ./
            | '(' 'd' 'o' 'c' 'u' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__DOCUMENTATIONNAMECASESENSITIVE); ./
            | '(' 'f' 'o' 'r' 'F' 'r' 'a' 'm' 'e' 'I' 'n' 'd' 'e' 'x' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__FORFRAMEINDEXNAMECASESENSITIVE); ./
            | '(' 'l' 'i' 'b' 'r' 'a' 'r' 'y' 'O' 'b' 'j' 'e' 'c' 't' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__LIBRARYOBJECTNAMECASESENSITIVE); ./
            | '(' 'p' 'a' 'g' 'e' 'T' 'i' 't' 'l' 'e' 'B' 'l' 'o' 'c' 'k' 'A' 't' 't' 'r' 'i' 'b' 'u' 't' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__PAGETITLEBLOCKATTRIBUTEDISPLAY); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'G' 'l' 'o' 'b' 'a' 'l' 'P' 'o' 'r' 't' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' 'R' 'e' 'f' /. makeToken($__SCHEMATICGLOBALPORTTEMPLATEREF); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'I' 'f' 'F' 'r' 'a' 'm' 'e' 'B' 'o' 'r' 'd' 'e' 'r' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' /. makeToken($__SCHEMATICIFFRAMEBORDERTEMPLATE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'I' 'f' 'F' 'r' 'a' 'm' 'e' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' /. makeToken($__SCHEMATICIFFRAMEIMPLEMENTATION); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'M' 'a' 's' 't' 'e' 'r' 'P' 'o' 'r' 't' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' 'R' 'e' 'f' /. makeToken($__SCHEMATICMASTERPORTTEMPLATEREF); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'S' 'u' 'b' 'I' 'n' 't' 'e' 'r' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__SCHEMATICSUBINTERCONNECTHEADER); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'S' 'y' 'm' 'b' 'o' 'l' 'P' 'o' 'r' 't' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' 'R' 'e' 'f' /. makeToken($__SCHEMATICSYMBOLPORTTEMPLATEREF); ./
            | '(' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'e' 'd' 'S' 'i' 'g' 'n' 'a' 'l' 'I' 'n' 'd' 'e' 'x' 'G' 'e' 'n' 'e' 'r' 'a' 't' 'o' 'r' /. makeToken($__CONNECTEDSIGNALINDEXGENERATOR); ./
            | '(' 'i' 'n' 't' 'e' 'r' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__INTERCONNECTNAMECASESENSITIVE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'G' 'l' 'o' 'b' 'a' 'l' 'P' 'o' 'r' 't' 'A' 't' 't' 'r' 'i' 'b' 'u' 't' 'e' 's' /. makeToken($__SCHEMATICGLOBALPORTATTRIBUTES); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'O' 't' 'h' 'e' 'r' 'w' 'i' 's' 'e' 'F' 'r' 'a' 'm' 'e' 'B' 'o' 'r' 'd' 'e' 'r' /. makeToken($__SCHEMATICOTHERWISEFRAMEBORDER); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'R' 'i' 'p' 'p' 'e' 'r' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' /. makeToken($__SCHEMATICRIPPERIMPLEMENTATION); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'S' 'y' 'm' 'b' 'o' 'l' 'B' 'o' 'r' 'd' 'e' 'r' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' /. makeToken($__SCHEMATICSYMBOLBORDERTEMPLATE); ./
            | '(' 'd' 'r' 'a' 'w' 'i' 'n' 'g' 'I' 'd' 'e' 'n' 't' 'i' 'f' 'i' 'c' 'a' 't' 'i' 'o' 'n' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__DRAWINGIDENTIFICATIONDISPLAY); ./
            | '(' 'f' 'i' 'g' 'u' 'r' 'e' 'G' 'r' 'o' 'u' 'p' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__FIGUREGROUPNAMECASESENSITIVE); ./
            | '(' 'i' 'n' 's' 't' 'a' 'n' 'c' 'e' 'N' 'a' 'm' 'e' 'G' 'e' 'n' 'e' 'r' 'a' 't' 'o' 'r' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__INSTANCENAMEGENERATORDISPLAY); ./
            | '(' 'i' 'n' 's' 't' 'a' 'n' 'c' 'e' 'P' 'o' 'r' 't' 'A' 't' 't' 'r' 'i' 'b' 'u' 't' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__INSTANCEPORTATTRIBUTEDISPLAY); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'J' 'u' 'n' 'c' 't' 'i' 'o' 'n' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' 'R' 'e' 'f' /. makeToken($__SCHEMATICJUNCTIONTEMPLATEREF); ./
            | '(' 's' 'i' 'g' 'n' 'a' 'l' 'G' 'r' 'o' 'u' 'p' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__SIGNALGROUPNAMECASESENSITIVE); ./
            | '(' 'b' 'i' 'd' 'i' 'r' 'e' 'c' 't' 'i' 'o' 'n' 'a' 'l' 'P' 'o' 'r' 't' 'A' 't' 't' 'r' 'i' 'b' 'u' 't' 'e' 's' /. makeToken($__BIDIRECTIONALPORTATTRIBUTES); ./
            | '(' 'c' 'e' 'l' 'l' 'P' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'D' 'i' 's' 'p' 'l' 'a' 'y' 'O' 'v' 'e' 'r' 'r' 'i' 'd' 'e' /. makeToken($__CELLPROPERTYDISPLAYOVERRIDE); ./
            | '(' 'd' 'e' 'f' 'a' 'u' 'l' 't' 'C' 'l' 'u' 's' 't' 'e' 'r' 'C' 'o' 'n' 'f' 'i' 'g' 'u' 'r' 'a' 't' 'i' 'o' 'n' /. makeToken($__DEFAULTCLUSTERCONFIGURATION); ./
            | '(' 'g' 'l' 'o' 'b' 'a' 'l' 'P' 'o' 'r' 't' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__GLOBALPORTNAMECASESENSITIVE); ./
            | '(' 'i' 'n' 't' 'e' 'r' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'P' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__INTERCONNECTPROPERTYDISPLAY); ./
            | '(' 'o' 'c' 'c' 'u' 'r' 'r' 'e' 'n' 'c' 'e' 'H' 'i' 'e' 'r' 'a' 'r' 'c' 'h' 'y' 'A' 'n' 'n' 'o' 't' 'a' 't' 'e' /. makeToken($__OCCURRENCEHIERARCHYANNOTATE); ./
            | '(' 'p' 'o' 'r' 't' 'P' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'D' 'i' 's' 'p' 'l' 'a' 'y' 'O' 'v' 'e' 'r' 'r' 'i' 'd' 'e' /. makeToken($__PORTPROPERTYDISPLAYOVERRIDE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'G' 'l' 'o' 'b' 'a' 'l' 'P' 'o' 'r' 't' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' /. makeToken($__SCHEMATICGLOBALPORTTEMPLATE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'I' 'n' 't' 'e' 'r' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__SCHEMATICINTERCONNECTHEADER); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'M' 'a' 's' 't' 'e' 'r' 'P' 'o' 'r' 't' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' /. makeToken($__SCHEMATICMASTERPORTTEMPLATE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'S' 'y' 'm' 'b' 'o' 'l' 'P' 'o' 'r' 't' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' /. makeToken($__SCHEMATICSYMBOLPORTTEMPLATE); ./
            | '(' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'i' 'v' 'i' 't' 'y' 'F' 'r' 'a' 'm' 'e' 'S' 't' 'r' 'u' 'c' 't' 'u' 'r' 'e' /. makeToken($__CONNECTIVITYFRAMESTRUCTURE); ./
            | '(' 'o' 'r' 'i' 'g' 'i' 'n' 'a' 'l' 'D' 'r' 'a' 'w' 'i' 'n' 'g' 'D' 'a' 't' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__ORIGINALDRAWINGDATEDISPLAY); ./
            | '(' 'p' 'a' 'r' 'a' 'm' 'e' 't' 'e' 'r' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__PARAMETERNAMECASESENSITIVE); ./
            | '(' 'p' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'I' 'n' 'h' 'e' 'r' 'i' 't' 'a' 'n' 'c' 'e' 'C' 'o' 'n' 't' 'r' 'o' 'l' /. makeToken($__PROPERTYINHERITANCECONTROL); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'P' 'o' 'r' 't' 'C' 'h' 'a' 's' 's' 'i' 's' 'G' 'r' 'o' 'u' 'n' 'd' /. makeToken($__SCHEMATICPORTCHASSISGROUND); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'P' 'o' 'r' 't' 'O' 'p' 'e' 'n' 'C' 'o' 'l' 'l' 'e' 'c' 't' 'o' 'r' /. makeToken($__SCHEMATICPORTOPENCOLLECTOR); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'R' 'i' 'p' 'p' 'e' 'r' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' 'R' 'e' 'f' /. makeToken($__SCHEMATICRIPPERTEMPLATEREF); ./
            | '(' 'v' 'i' 'e' 'w' 'G' 'r' 'o' 'u' 'p' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__VIEWGROUPNAMECASESENSITIVE); ./
            | '(' 'd' 'r' 'a' 'w' 'i' 'n' 'g' 'D' 'e' 's' 'c' 'r' 'i' 'p' 't' 'i' 'o' 'n' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__DRAWINGDESCRIPTIONDISPLAY); ./
            | '(' 'g' 'l' 'o' 'b' 'a' 'l' 'P' 'o' 'r' 't' 'P' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__GLOBALPORTPROPERTYDISPLAY); ./
            | '(' 'i' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' 'N' 'a' 'm' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__IMPLEMENTATIONNAMEDISPLAY); ./
            | '(' 'i' 'n' 's' 't' 'a' 'n' 'c' 'e' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__INSTANCENAMECASESENSITIVE); ./
            | '(' 'p' 'a' 'g' 'e' 'I' 'd' 'e' 'n' 't' 'i' 'f' 'i' 'c' 'a' 't' 'i' 'o' 'n' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__PAGEIDENTIFICATIONDISPLAY); ./
            | '(' 'p' 'a' 'g' 'e' 'T' 'i' 't' 'l' 'e' 'B' 'l' 'o' 'c' 'k' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' 'R' 'e' 'f' /. makeToken($__PAGETITLEBLOCKTEMPLATEREF); ./
            | '(' 'p' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__PROPERTYNAMECASESENSITIVE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'J' 'u' 'n' 'c' 't' 'i' 'o' 'n' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' /. makeToken($__SCHEMATICJUNCTIONTEMPLATE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'R' 'e' 'q' 'u' 'i' 'r' 'e' 'd' 'D' 'e' 'f' 'a' 'u' 'l' 't' 's' /. makeToken($__SCHEMATICREQUIREDDEFAULTS); ./
            | '(' 'c' 'l' 'u' 's' 't' 'e' 'r' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__CLUSTERNAMECASESENSITIVE); ./
            | '(' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'i' 'v' 'i' 't' 'y' 'T' 'a' 'g' 'G' 'e' 'n' 'e' 'r' 'a' 't' 'o' 'r' /. makeToken($__CONNECTIVITYTAGGENERATOR); ./
            | '(' 'h' 'o' 't' 's' 'p' 'o' 't' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__HOTSPOTNAMECASESENSITIVE); ./
            | '(' 'i' 'n' 's' 't' 'a' 'n' 'c' 'e' 'P' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'O' 'v' 'e' 'r' 'r' 'i' 'd' 'e' /. makeToken($__INSTANCEPROPERTYOVERRIDE); ./
            | '(' 'i' 'n' 't' 'e' 'r' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'A' 't' 't' 'a' 'c' 'h' 'e' 'd' 'T' 'e' 'x' 't' /. makeToken($__INTERCONNECTATTACHEDTEXT); ./
            | '(' 'i' 'n' 't' 'e' 'r' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'D' 'e' 'l' 'a' 'y' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__INTERCONNECTDELAYDISPLAY); ./
            | '(' 'l' 'i' 'b' 'r' 'a' 'r' 'y' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__LIBRARYNAMECASESENSITIVE); ./
            | '(' 'p' 'a' 'g' 'e' 'T' 'i' 't' 'l' 'e' 'B' 'l' 'o' 'c' 'k' 'A' 't' 't' 'r' 'i' 'b' 'u' 't' 'e' 's' /. makeToken($__PAGETITLEBLOCKATTRIBUTES); ./
            | '(' 'p' 'o' 'r' 't' 'N' 'a' 'm' 'e' 'G' 'e' 'n' 'e' 'r' 'a' 't' 'o' 'r' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__PORTNAMEGENERATORDISPLAY); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'P' 'o' 'r' 't' 'E' 'a' 'r' 't' 'h' 'G' 'r' 'o' 'u' 'n' 'd' /. makeToken($__SCHEMATICPORTEARTHGROUND); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'P' 'o' 'r' 't' 'O' 'p' 'e' 'n' 'E' 'm' 'i' 't' 't' 'e' 'r' /. makeToken($__SCHEMATICPORTOPENEMITTER); ./
            | '(' 'u' 'n' 's' 'p' 'e' 'c' 'i' 'f' 'i' 'e' 'd' 'D' 'i' 'r' 'e' 'c' 't' 'i' 'o' 'n' 'P' 'o' 'r' 't' /. makeToken($__UNSPECIFIEDDIRECTIONPORT); ./
            | '(' 'c' 'l' 'u' 's' 't' 'e' 'r' 'C' 'o' 'n' 'f' 'i' 'g' 'u' 'r' 'a' 't' 'i' 'o' 'n' 'R' 'e' 'f' /. makeToken($__CLUSTERCONFIGURATIONREF); ./
            | '(' 'c' 'l' 'u' 's' 't' 'e' 'r' 'P' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'O' 'v' 'e' 'r' 'r' 'i' 'd' 'e' /. makeToken($__CLUSTERPROPERTYOVERRIDE); ./
            | '(' 'd' 'e' 's' 'i' 'g' 'n' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__DESIGNNAMECASESENSITIVE); ./
            | '(' 'h' 'o' 'r' 'i' 'z' 'o' 'n' 't' 'a' 'l' 'J' 'u' 's' 't' 'i' 'f' 'i' 'c' 'a' 't' 'i' 'o' 'n' /. makeToken($__HORIZONTALJUSTIFICATION); ./
            | '(' 'h' 'o' 't' 's' 'p' 'o' 't' 'C' 'o' 'n' 'n' 'e' 'c' 't' 'D' 'i' 'r' 'e' 'c' 't' 'i' 'o' 'n' /. makeToken($__HOTSPOTCONNECTDIRECTION); ./
            | '(' 'i' 'n' 's' 't' 'a' 'n' 'c' 'e' 'P' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__INSTANCEPROPERTYDISPLAY); ./
            | '(' 'i' 'n' 't' 'e' 'r' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'N' 'a' 'm' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__INTERCONNECTNAMEDISPLAY); ./
            | '(' 'p' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'D' 'i' 's' 'p' 'l' 'a' 'y' 'O' 'v' 'e' 'r' 'r' 'i' 'd' 'e' /. makeToken($__PROPERTYDISPLAYOVERRIDE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'F' 'i' 'g' 'u' 'r' 'e' 'M' 'a' 'c' 'r' 'o' 'R' 'e' 'f' /. makeToken($__SCHEMATICFIGUREMACROREF); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'F' 'o' 'r' 'F' 'r' 'a' 'm' 'e' 'B' 'o' 'r' 'd' 'e' 'r' /. makeToken($__SCHEMATICFORFRAMEBORDER); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'I' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' /. makeToken($__SCHEMATICIMPLEMENTATION); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'P' 'o' 'r' 't' 'A' 't' 't' 'r' 'i' 'b' 'u' 't' 'e' 's' /. makeToken($__SCHEMATICPORTATTRIBUTES); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'P' 'o' 'r' 't' 'N' 'o' 'n' 'L' 'o' 'g' 'i' 'c' 'a' 'l' /. makeToken($__SCHEMATICPORTNONLOGICAL); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'P' 'o' 'r' 't' 'T' 'h' 'r' 'e' 'e' 'S' 't' 'a' 't' 'e' /. makeToken($__SCHEMATICPORTTHREESTATE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'R' 'i' 'p' 'p' 'e' 'r' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' /. makeToken($__SCHEMATICRIPPERTEMPLATE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__SCHEMATICTEMPLATEHEADER); ./
            | '(' 's' 'i' 'g' 'n' 'a' 'l' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__SIGNALNAMECASESENSITIVE); ./
            | '(' 'b' 'o' 'o' 'l' 'e' 'a' 'n' 'P' 'a' 'r' 'a' 'm' 'e' 't' 'e' 'r' 'A' 's' 's' 'i' 'g' 'n' /. makeToken($__BOOLEANPARAMETERASSIGN); ./
            | '(' 'c' 'l' 'u' 's' 't' 'e' 'r' 'P' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__CLUSTERPROPERTYDISPLAY); ./
            | '(' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'i' 'v' 'i' 't' 'y' 'V' 'i' 'e' 'w' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__CONNECTIVITYVIEWHEADER); ./
            | '(' 'e' 'n' 'g' 'i' 'n' 'e' 'e' 'r' 'i' 'n' 'g' 'D' 'a' 't' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__ENGINEERINGDATEDISPLAY); ./
            | '(' 'f' 'r' 'a' 'm' 'e' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__FRAMENAMECASESENSITIVE); ./
            | '(' 'i' 'n' 's' 't' 'a' 'n' 'c' 'e' 'P' 'o' 'r' 't' 'A' 't' 't' 'r' 'i' 'b' 'u' 't' 'e' 's' /. makeToken($__INSTANCEPORTATTRIBUTES); ./
            | '(' 'i' 'n' 't' 'e' 'g' 'e' 'r' 'P' 'a' 'r' 'a' 'm' 'e' 't' 'e' 'r' 'A' 's' 's' 'i' 'g' 'n' /. makeToken($__INTEGERPARAMETERASSIGN); ./
            | '(' 'l' 'e' 'a' 'f' 'O' 'c' 'c' 'u' 'r' 'r' 'e' 'n' 'c' 'e' 'A' 'n' 'n' 'o' 't' 'a' 't' 'e' /. makeToken($__LEAFOCCURRENCEANNOTATE); ./
            | '(' 'n' 'a' 'm' 'e' 'D' 'i' 'm' 'e' 'n' 's' 'i' 'o' 'n' 'S' 't' 'r' 'u' 'c' 't' 'u' 'r' 'e' /. makeToken($__NAMEDIMENSIONSTRUCTURE); ./
            | '(' 'o' 't' 'h' 'e' 'r' 'w' 'i' 's' 'e' 'F' 'r' 'a' 'm' 'e' 'A' 'n' 'n' 'o' 't' 'a' 't' 'e' /. makeToken($__OTHERWISEFRAMEANNOTATE); ./
            | '(' 'p' 'a' 'g' 'e' 'T' 'i' 't' 'l' 'e' 'B' 'l' 'o' 'c' 'k' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' /. makeToken($__PAGETITLEBLOCKTEMPLATE); ./
            | '(' 'r' 'e' 'p' 'e' 't' 'i' 't' 'i' 'o' 'n' 'C' 'o' 'u' 'n' 't' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__REPETITIONCOUNTDISPLAY); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'C' 'o' 'm' 'p' 'l' 'e' 'x' 'F' 'i' 'g' 'u' 'r' 'e' /. makeToken($__SCHEMATICCOMPLEXFIGURE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'I' 'f' 'F' 'r' 'a' 'm' 'e' 'B' 'o' 'r' 'd' 'e' 'r' /. makeToken($__SCHEMATICIFFRAMEBORDER); ./
            | '(' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'i' 'v' 'i' 't' 'y' 'B' 'u' 's' 'J' 'o' 'i' 'n' 'e' 'd' /. makeToken($__CONNECTIVITYBUSJOINED); ./
            | '(' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'i' 'v' 'i' 't' 'y' 'N' 'e' 't' 'J' 'o' 'i' 'n' 'e' 'd' /. makeToken($__CONNECTIVITYNETJOINED); ./
            | '(' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'i' 'v' 'i' 't' 'y' 'R' 'i' 'p' 'p' 'e' 'r' 'R' 'e' 'f' /. makeToken($__CONNECTIVITYRIPPERREF); ./
            | '(' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'i' 'v' 'i' 't' 'y' 'S' 't' 'r' 'u' 'c' 't' 'u' 'r' 'e' /. makeToken($__CONNECTIVITYSTRUCTURE); ./
            | '(' 'd' 'e' 's' 'i' 'g' 'n' 'H' 'i' 'e' 'r' 'a' 'r' 'c' 'h' 'y' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__DESIGNHIERARCHYHEADER); ./
            | '(' 'd' 'r' 'a' 'w' 'i' 'n' 'g' 'I' 'd' 'e' 'n' 't' 'i' 'f' 'i' 'c' 'a' 't' 'i' 'o' 'n' /. makeToken($__DRAWINGIDENTIFICATION); ./
            | '(' 'g' 'l' 'o' 'b' 'a' 'l' 'P' 'o' 'r' 't' 'D' 'e' 'f' 'i' 'n' 'i' 't' 'i' 'o' 'n' 's' /. makeToken($__GLOBALPORTDEFINITIONS); ./
            | '(' 'g' 'l' 'o' 'b' 'a' 'l' 'P' 'o' 'r' 't' 'N' 'a' 'm' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__GLOBALPORTNAMEDISPLAY); ./
            | '(' 'i' 'n' 's' 't' 'a' 'n' 'c' 'e' 'C' 'o' 'n' 'f' 'i' 'g' 'u' 'r' 'a' 't' 'i' 'o' 'n' /. makeToken($__INSTANCECONFIGURATION); ./
            | '(' 'i' 'n' 's' 't' 'a' 'n' 'c' 'e' 'N' 'a' 'm' 'e' 'G' 'e' 'n' 'e' 'r' 'a' 't' 'o' 'r' /. makeToken($__INSTANCENAMEGENERATOR); ./
            | '(' 'n' 'u' 'm' 'b' 'e' 'r' 'P' 'a' 'r' 'a' 'm' 'e' 't' 'e' 'r' 'A' 's' 's' 'i' 'g' 'n' /. makeToken($__NUMBERPARAMETERASSIGN); ./
            | '(' 'p' 'a' 'g' 'e' 'B' 'o' 'r' 'd' 'e' 'r' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' 'R' 'e' 'f' /. makeToken($__PAGEBORDERTEMPLATEREF); ./
            | '(' 'p' 'a' 'g' 'e' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__PAGENAMECASESENSITIVE); ./
            | '(' 'p' 'o' 'r' 't' 'L' 'o' 'a' 'd' 'D' 'e' 'l' 'a' 'y' 'O' 'v' 'e' 'r' 'r' 'i' 'd' 'e' /. makeToken($__PORTLOADDELAYOVERRIDE); ./
            | '(' 'p' 'o' 'r' 't' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__PORTNAMECASESENSITIVE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'S' 'y' 'm' 'b' 'o' 'l' 'B' 'o' 'r' 'd' 'e' 'r' /. makeToken($__SCHEMATICSYMBOLBORDER); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'S' 'y' 'm' 'b' 'o' 'l' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__SCHEMATICSYMBOLHEADER); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'W' 'i' 'r' 'e' 'A' 'f' 'f' 'i' 'n' 'i' 't' 'y' /. makeToken($__SCHEMATICWIREAFFINITY); ./
            | '(' 's' 't' 'r' 'i' 'n' 'g' 'P' 'a' 'r' 'a' 'm' 'e' 't' 'e' 'r' 'A' 's' 's' 'i' 'g' 'n' /. makeToken($__STRINGPARAMETERASSIGN); ./
            | '(' 'v' 'e' 'r' 't' 'i' 'c' 'a' 'l' 'J' 'u' 's' 't' 'i' 'f' 'i' 'c' 'a' 't' 'i' 'o' 'n' /. makeToken($__VERTICALJUSTIFICATION); ./
            | '(' 'v' 'i' 'e' 'w' 'N' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'e' /. makeToken($__VIEWNAMECASESENSITIVE); ./
            | '(' 'b' 'o' 'r' 'd' 'e' 'r' 'P' 'a' 't' 't' 'e' 'r' 'n' 'V' 'i' 's' 'i' 'b' 'l' 'e' /. makeToken($__BORDERPATTERNVISIBLE); ./
            | '(' 'c' 'e' 'l' 'l' 'P' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'O' 'v' 'e' 'r' 'r' 'i' 'd' 'e' /. makeToken($__CELLPROPERTYOVERRIDE); ./
            | '(' 'c' 'l' 'u' 's' 't' 'e' 'r' 'C' 'o' 'n' 'f' 'i' 'g' 'u' 'r' 'a' 't' 'i' 'o' 'n' /. makeToken($__CLUSTERCONFIGURATION); ./
            | '(' 'c' 'o' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'e' 'd' 'N' 'a' 'm' 'e' 'P' 'a' 'r' 't' /. makeToken($__COMPLEMENTEDNAMEPART); ./
            | '(' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'i' 'v' 'i' 't' 'y' 'B' 'u' 's' 'S' 'l' 'i' 'c' 'e' /. makeToken($__CONNECTIVITYBUSSLICE); ./
            | '(' 'f' 'o' 'r' 'F' 'r' 'a' 'm' 'e' 'I' 'n' 'd' 'e' 'x' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__FORFRAMEINDEXDISPLAY); ./
            | '(' 'i' 'n' 's' 't' 'a' 'n' 'c' 'e' 'W' 'i' 'd' 't' 'h' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__INSTANCEWIDTHDISPLAY); ./
            | '(' 'i' 'n' 't' 'e' 'r' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'A' 'n' 'n' 'o' 't' 'a' 't' 'e' /. makeToken($__INTERCONNECTANNOTATE); ./
            | '(' 'o' 'u' 't' 'p' 'u' 't' 'P' 'o' 'r' 't' 'A' 't' 't' 'r' 'i' 'b' 'u' 't' 'e' 's' /. makeToken($__OUTPUTPORTATTRIBUTES); ./
            | '(' 'p' 'a' 'r' 'a' 'm' 'e' 't' 'e' 'r' 'N' 'a' 'm' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__PARAMETERNAMEDISPLAY); ./
            | '(' 'p' 'o' 'r' 't' 'A' 't' 't' 'r' 'i' 'b' 'u' 't' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__PORTATTRIBUTEDISPLAY); ./
            | '(' 'p' 'o' 'r' 't' 'L' 'o' 'a' 'd' 'D' 'e' 'l' 'a' 'y' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__PORTLOADDELAYDISPLAY); ./
            | '(' 'p' 'o' 'r' 't' 'P' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'O' 'v' 'e' 'r' 'r' 'i' 'd' 'e' /. makeToken($__PORTPROPERTYOVERRIDE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'B' 'u' 's' 'G' 'r' 'a' 'p' 'h' 'i' 'c' 's' /. makeToken($__SCHEMATICBUSGRAPHICS); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'F' 'i' 'g' 'u' 'r' 'e' 'M' 'a' 'c' 'r' 'o' /. makeToken($__SCHEMATICFIGUREMACRO); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'N' 'e' 't' 'G' 'r' 'a' 'p' 'h' 'i' 'c' 's' /. makeToken($__SCHEMATICNETGRAPHICS); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'P' 'o' 'r' 't' 'A' 'c' 'P' 'o' 'w' 'e' 'r' /. makeToken($__SCHEMATICPORTACPOWER); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'P' 'o' 'r' 't' 'D' 'c' 'P' 'o' 'w' 'e' 'r' /. makeToken($__SCHEMATICPORTDCPOWER); ./
            | '(' 'v' 'i' 'e' 'w' 'P' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'O' 'v' 'e' 'r' 'r' 'i' 'd' 'e' /. makeToken($__VIEWPROPERTYOVERRIDE); ./
            | '(' 'a' 'p' 'p' 'r' 'o' 'v' 'e' 'd' 'D' 'a' 't' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__APPROVEDDATEDISPLAY); ./
            | '(' 'b' 'o' 'o' 'l' 'e' 'a' 'n' 'P' 'a' 'r' 'a' 'm' 'e' 't' 'e' 'r' 'R' 'e' 'f' /. makeToken($__BOOLEANPARAMETERREF); ./
            | '(' 'c' 'e' 'l' 'l' 'P' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__CELLPROPERTYDISPLAY); ./
            | '(' 'd' 'c' 'F' 'a' 'n' 'O' 'u' 't' 'L' 'o' 'a' 'd' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__DCFANOUTLOADDISPLAY); ./
            | '(' 'd' 'i' 's' 'p' 'l' 'a' 'y' 'N' 'a' 'm' 'e' 'O' 'v' 'e' 'r' 'r' 'i' 'd' 'e' /. makeToken($__DISPLAYNAMEOVERRIDE); ./
            | '(' 'd' 'o' 'c' 'u' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__DOCUMENTATIONHEADER); ./
            | '(' 'f' 'i' 'g' 'u' 'r' 'e' 'G' 'r' 'o' 'u' 'p' 'O' 'v' 'e' 'r' 'r' 'i' 'd' 'e' /. makeToken($__FIGUREGROUPOVERRIDE); ./
            | '(' 'g' 'e' 'o' 'm' 'e' 't' 'r' 'y' 'M' 'a' 'c' 'r' 'o' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__GEOMETRYMACROHEADER); ./
            | '(' 'i' 'n' 'p' 'u' 't' 'P' 'o' 'r' 't' 'A' 't' 't' 'r' 'i' 'b' 'u' 't' 'e' 's' /. makeToken($__INPUTPORTATTRIBUTES); ./
            | '(' 'i' 'n' 's' 't' 'a' 'n' 'c' 'e' 'N' 'a' 'm' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__INSTANCENAMEDISPLAY); ./
            | '(' 'i' 'n' 't' 'e' 'g' 'e' 'r' 'P' 'a' 'r' 'a' 'm' 'e' 't' 'e' 'r' 'R' 'e' 'f' /. makeToken($__INTEGERPARAMETERREF); ./
            | '(' 'k' '2' 'K' 'e' 'y' 'w' 'o' 'r' 'd' 'P' 'a' 'r' 'a' 'm' 'e' 't' 'e' 'r' 's' /. makeToken($__K2KEYWORDPARAMETERS); ./
            | '(' 'k' '3' 'K' 'e' 'y' 'w' 'o' 'r' 'd' 'P' 'a' 'r' 'a' 'm' 'e' 't' 'e' 'r' 's' /. makeToken($__K3KEYWORDPARAMETERS); ./
            | '(' 'l' 'o' 'g' 'i' 'c' 'a' 'l' 'C' 'o' 'n' 'n' 'e' 'c' 't' 'i' 'v' 'i' 't' 'y' /. makeToken($__LOGICALCONNECTIVITY); ./
            | '(' 'm' 'i' 'n' 'i' 'm' 'u' 'm' 'S' 't' 'r' 'i' 'n' 'g' 'L' 'e' 'n' 'g' 't' 'h' /. makeToken($__MINIMUMSTRINGLENGTH); ./
            | '(' 'n' 'a' 'm' 'e' 'C' 'a' 's' 'e' 'S' 'e' 'n' 's' 'i' 't' 'i' 'v' 'i' 't' 'y' /. makeToken($__NAMECASESENSITIVITY); ./
            | '(' 'o' 'r' 'i' 'g' 'i' 'n' 'a' 'l' 'B' 'o' 'u' 'n' 'd' 'i' 'n' 'g' 'B' 'o' 'x' /. makeToken($__ORIGINALBOUNDINGBOX); ./
            | '(' 'o' 'r' 'i' 'g' 'i' 'n' 'a' 'l' 'D' 'r' 'a' 'w' 'i' 'n' 'g' 'D' 'a' 't' 'e' /. makeToken($__ORIGINALDRAWINGDATE); ./
            | '(' 'p' 'a' 'g' 'e' 'C' 'o' 'm' 'm' 'e' 'n' 't' 'G' 'r' 'a' 'p' 'h' 'i' 'c' 's' /. makeToken($__PAGECOMMENTGRAPHICS); ./
            | '(' 'p' 'a' 'g' 'e' 'P' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__PAGEPROPERTYDISPLAY); ./
            | '(' 'p' 'o' 'r' 't' 'P' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__PORTPROPERTYDISPLAY); ./
            | '(' 'p' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'N' 'a' 'm' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__PROPERTYNAMEDISPLAY); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'B' 'u' 's' 'D' 'e' 't' 'a' 'i' 'l' 's' /. makeToken($__SCHEMATICBUSDETAILS); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'N' 'e' 't' 'D' 'e' 't' 'a' 'i' 'l' 's' /. makeToken($__SCHEMATICNETDETAILS); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'P' 'o' 'r' 't' 'A' 'n' 'a' 'l' 'o' 'g' /. makeToken($__SCHEMATICPORTANALOG); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'P' 'o' 'r' 't' 'G' 'r' 'o' 'u' 'n' 'd' /. makeToken($__SCHEMATICPORTGROUND); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'V' 'i' 'e' 'w' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__SCHEMATICVIEWHEADER); ./
            | '(' 's' 'i' 'g' 'n' 'a' 'l' 'G' 'r' 'o' 'u' 'p' 'A' 'n' 'n' 'o' 't' 'a' 't' 'e' /. makeToken($__SIGNALGROUPANNOTATE); ./
            | '(' 's' 'y' 'm' 'b' 'o' 'l' 'i' 'c' 'L' 'a' 'y' 'o' 'u' 't' 'U' 'n' 'i' 't' 's' /. makeToken($__SYMBOLICLAYOUTUNITS); ./
            | '(' 'v' 'i' 'e' 'w' 'P' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__VIEWPROPERTYDISPLAY); ./
            | '(' 'b' 'o' 'o' 'l' 'e' 'a' 'n' 'C' 'o' 'n' 's' 't' 'a' 'n' 't' 'R' 'e' 'f' /. makeToken($__BOOLEANCONSTANTREF); ./
            | '(' 'c' 'o' 'm' 'p' 'a' 'n' 'y' 'N' 'a' 'm' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__COMPANYNAMEDISPLAY); ./
            | '(' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'i' 'v' 'i' 't' 'y' 'R' 'i' 'p' 'p' 'e' 'r' /. makeToken($__CONNECTIVITYRIPPER); ./
            | '(' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'i' 'v' 'i' 't' 'y' 'S' 'u' 'b' 'B' 'u' 's' /. makeToken($__CONNECTIVITYSUBBUS); ./
            | '(' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'i' 'v' 'i' 't' 'y' 'S' 'u' 'b' 'N' 'e' 't' /. makeToken($__CONNECTIVITYSUBNET); ./
            | '(' 'c' 'r' 'i' 't' 'i' 'c' 'a' 'l' 'i' 't' 'y' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__CRITICALITYDISPLAY); ./
            | '(' 'd' 'c' 'F' 'a' 'n' 'I' 'n' 'L' 'o' 'a' 'd' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__DCFANINLOADDISPLAY); ./
            | '(' 'd' 'c' 'M' 'a' 'x' 'F' 'a' 'n' 'O' 'u' 't' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__DCMAXFANOUTDISPLAY); ./
            | '(' 'd' 'o' 'c' 'u' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' 'U' 'n' 'i' 't' 's' /. makeToken($__DOCUMENTATIONUNITS); ./
            | '(' 'd' 'r' 'a' 'w' 'i' 'n' 'g' 'D' 'e' 's' 'c' 'r' 'i' 'p' 't' 'i' 'o' 'n' /. makeToken($__DRAWINGDESCRIPTION); ./
            | '(' 'd' 'r' 'a' 'w' 'i' 'n' 'g' 'S' 'i' 'z' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__DRAWINGSIZEDISPLAY); ./
            | '(' 'f' 'i' 'l' 'l' 'P' 'a' 't' 't' 'e' 'r' 'n' 'V' 'i' 's' 'i' 'b' 'l' 'e' /. makeToken($__FILLPATTERNVISIBLE); ./
            | '(' 'f' 'r' 'a' 'm' 'e' 'C' 'o' 'n' 'f' 'i' 'g' 'u' 'r' 'a' 't' 'i' 'o' 'n' /. makeToken($__FRAMECONFIGURATION); ./
            | '(' 'g' 'e' 'o' 'm' 'e' 't' 'r' 'y' 'M' 'a' 'c' 'r' 'o' 'U' 'n' 'i' 't' 's' /. makeToken($__GEOMETRYMACROUNITS); ./
            | '(' 'h' 'o' 't' 's' 'p' 'o' 't' 'N' 'a' 'm' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__HOTSPOTNAMEDISPLAY); ./
            | '(' 'i' 'n' 's' 't' 'a' 'n' 'c' 'e' 'I' 'n' 'd' 'e' 'x' 'V' 'a' 'l' 'u' 'e' /. makeToken($__INSTANCEINDEXVALUE); ./
            | '(' 'i' 'n' 't' 'e' 'g' 'e' 'r' 'C' 'o' 'n' 's' 't' 'a' 'n' 't' 'R' 'e' 'f' /. makeToken($__INTEGERCONSTANTREF); ./
            | '(' 'i' 'n' 't' 'e' 'r' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__INTERCONNECTHEADER); ./
            | '(' 'n' 'o' 'm' 'i' 'n' 'a' 'l' 'H' 'o' 't' 's' 'p' 'o' 't' 'G' 'r' 'i' 'd' /. makeToken($__NOMINALHOTSPOTGRID); ./
            | '(' 'n' 'u' 'm' 'b' 'e' 'r' 'P' 'a' 'r' 'a' 'm' 'e' 't' 'e' 'r' 'R' 'e' 'f' /. makeToken($__NUMBERPARAMETERREF); ./
            | '(' 'o' 'c' 'c' 'u' 'r' 'r' 'e' 'n' 'c' 'e' 'A' 'n' 'n' 'o' 't' 'a' 't' 'e' /. makeToken($__OCCURRENCEANNOTATE); ./
            | '(' 'p' 'a' 'g' 'e' 'B' 'o' 'r' 'd' 'e' 'r' 'T' 'e' 'm' 'p' 'l' 'a' 't' 'e' /. makeToken($__PAGEBORDERTEMPLATE); ./
            | '(' 'p' 'a' 'g' 'e' 'I' 'd' 'e' 'n' 't' 'i' 'f' 'i' 'c' 'a' 't' 'i' 'o' 'n' /. makeToken($__PAGEIDENTIFICATION); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'B' 'u' 's' 'J' 'o' 'i' 'n' 'e' 'd' /. makeToken($__SCHEMATICBUSJOINED); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'N' 'e' 't' 'J' 'o' 'i' 'n' 'e' 'd' /. makeToken($__SCHEMATICNETJOINED); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'P' 'o' 'r' 't' 'C' 'l' 'o' 'c' 'k' /. makeToken($__SCHEMATICPORTCLOCK); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'P' 'o' 'r' 't' 'P' 'o' 'w' 'e' 'r' /. makeToken($__SCHEMATICPORTPOWER); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'P' 'o' 'r' 't' 'S' 't' 'y' 'l' 'e' /. makeToken($__SCHEMATICPORTSTYLE); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'S' 'u' 'b' 'B' 'u' 's' 'S' 'e' 't' /. makeToken($__SCHEMATICSUBBUSSET); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'S' 'u' 'b' 'N' 'e' 't' 'S' 'e' 't' /. makeToken($__SCHEMATICSUBNETSET); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'S' 'y' 'm' 'b' 'o' 'l' 'R' 'e' 'f' /. makeToken($__SCHEMATICSYMBOLREF); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'W' 'i' 'r' 'e' 'S' 't' 'y' 'l' 'e' /. makeToken($__SCHEMATICWIRESTYLE); ./
            | '(' 's' 't' 'r' 'i' 'n' 'g' 'P' 'a' 'r' 'a' 'm' 'e' 't' 'e' 'r' 'R' 'e' 'f' /. makeToken($__STRINGPARAMETERREF); ./
            | '(' 's' 'y' 'm' 'b' 'o' 'l' 'i' 'c' 'L' 'a' 'y' 'o' 'u' 't' 'V' 'i' 'e' 'w' /. makeToken($__SYMBOLICLAYOUTVIEW); ./
            | '(' 'b' 'i' 'd' 'i' 'r' 'e' 'c' 't' 'i' 'o' 'n' 'a' 'l' 'P' 'o' 'r' 't' /. makeToken($__BIDIRECTIONALPORT); ./
            | '(' 'c' 'h' 'a' 'r' 'a' 'c' 't' 'e' 'r' 'E' 'n' 'c' 'o' 'd' 'i' 'n' 'g' /. makeToken($__CHARACTERENCODING); ./
            | '(' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'i' 'v' 'i' 't' 'y' 'U' 'n' 'i' 't' 's' /. makeToken($__CONNECTIVITYUNITS); ./
            | '(' 'd' 'c' 'M' 'a' 'x' 'F' 'a' 'n' 'I' 'n' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__DCMAXFANINDISPLAY); ./
            | '(' 'd' 'e' 'f' 'a' 'u' 'l' 't' 'C' 'o' 'n' 'n' 'e' 'c' 't' 'i' 'o' 'n' /. makeToken($__DEFAULTCONNECTION); ./
            | '(' 'd' 'e' 's' 'i' 'g' 'n' 'a' 't' 'o' 'r' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__DESIGNATORDISPLAY); ./
            | '(' 'd' 'i' 's' 'p' 'l' 'a' 'y' 'A' 't' 't' 'r' 'i' 'b' 'u' 't' 'e' 's' /. makeToken($__DISPLAYATTRIBUTES); ./
            | '(' 'f' 'o' 'n' 't' 'C' 'a' 'p' 'i' 't' 'a' 'l' 'H' 'e' 'i' 'g' 'h' 't' /. makeToken($__FONTCAPITALHEIGHT); ./
            | '(' 'f' 'o' 'r' 'F' 'r' 'a' 'm' 'e' 'M' 'e' 'm' 'b' 'e' 'r' 'R' 'e' 'f' /. makeToken($__FORFRAMEMEMBERREF); ./
            | '(' 'i' 'n' 'd' 'e' 'x' 'S' 't' 'a' 'r' 't' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__INDEXSTARTDISPLAY); ./
            | '(' 'i' 'n' 's' 't' 'a' 'n' 'c' 'e' 'M' 'e' 'm' 'b' 'e' 'r' 'R' 'e' 'f' /. makeToken($__INSTANCEMEMBERREF); ./
            | '(' 'i' 'n' 't' 'e' 'r' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'D' 'e' 'l' 'a' 'y' /. makeToken($__INTERCONNECTDELAY); ./
            | '(' 'l' 'o' 'c' 'a' 'l' 'P' 'o' 'r' 't' 'G' 'r' 'o' 'u' 'p' 'R' 'e' 'f' /. makeToken($__LOCALPORTGROUPREF); ./
            | '(' 'n' 'a' 'm' 'e' 'P' 'a' 'r' 't' 'S' 'e' 'p' 'a' 'r' 'a' 't' 'o' 'r' /. makeToken($__NAMEPARTSEPARATOR); ./
            | '(' 'o' 't' 'h' 'e' 'r' 'w' 'i' 's' 'e' 'F' 'r' 'a' 'm' 'e' 'R' 'e' 'f' /. makeToken($__OTHERWISEFRAMEREF); ./
            | '(' 'p' 'o' 'r' 't' 'D' 'e' 'l' 'a' 'y' 'O' 'v' 'e' 'r' 'r' 'i' 'd' 'e' /. makeToken($__PORTDELAYOVERRIDE); ./
            | '(' 'p' 'o' 'r' 't' 'N' 'a' 'm' 'e' 'G' 'e' 'n' 'e' 'r' 'a' 't' 'o' 'r' /. makeToken($__PORTNAMEGENERATOR); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'B' 'u' 's' 'S' 'l' 'i' 'c' 'e' /. makeToken($__SCHEMATICBUSSLICE); ./
            | '(' 's' 't' 'r' 'i' 'n' 'g' 'C' 'o' 'n' 'c' 'a' 't' 'e' 'n' 'a' 't' 'e' /. makeToken($__STRINGCONCATENATE); ./
            | '(' 's' 't' 'r' 'i' 'n' 'g' 'C' 'o' 'n' 's' 't' 'a' 'n' 't' 'R' 'e' 'f' /. makeToken($__STRINGCONSTANTREF); ./
            | '(' 't' 'o' 't' 'a' 'l' 'P' 'a' 'g' 'e' 's' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__TOTALPAGESDISPLAY); ./
            | '(' 'b' 'o' 'o' 'l' 'e' 'a' 'n' 'P' 'a' 'r' 'a' 'm' 'e' 't' 'e' 'r' /. makeToken($__BOOLEANPARAMETER); ./
            | '(' 'c' 'h' 'e' 'c' 'k' 'D' 'a' 't' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__CHECKDATEDISPLAY); ./
            | '(' 'c' 'o' 'm' 'p' 'l' 'e' 'm' 'e' 'n' 't' 'e' 'd' 'N' 'a' 'm' 'e' /. makeToken($__COMPLEMENTEDNAME); ./
            | '(' 'c' 'o' 'n' 'd' 'i' 't' 'i' 'o' 'n' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__CONDITIONDISPLAY); ./
            | '(' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'i' 'v' 'i' 't' 'y' 'V' 'i' 'e' 'w' /. makeToken($__CONNECTIVITYVIEW); ./
            | '(' 'c' 'o' 'p' 'y' 'r' 'i' 'g' 'h' 't' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__COPYRIGHTDISPLAY); ./
            | '(' 'f' 'o' 'r' 'F' 'r' 'a' 'm' 'e' 'A' 'n' 'n' 'o' 't' 'a' 't' 'e' /. makeToken($__FORFRAMEANNOTATE); ./
            | '(' 'f' 'o' 'r' 'F' 'r' 'a' 'm' 'e' 'I' 'n' 'd' 'e' 'x' 'R' 'e' 'f' /. makeToken($__FORFRAMEINDEXREF); ./
            | '(' 'g' 'e' 'o' 'm' 'e' 't' 'r' 'y' 'M' 'a' 'c' 'r' 'o' 'R' 'e' 'f' /. makeToken($__GEOMETRYMACROREF); ./
            | '(' 'g' 'l' 'o' 'b' 'a' 'l' 'P' 'o' 'r' 't' 'B' 'u' 'n' 'd' 'l' 'e' /. makeToken($__GLOBALPORTBUNDLE); ./
            | '(' 'i' 'n' 'd' 'e' 'x' 'N' 'a' 'm' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__INDEXNAMEDISPLAY); ./
            | '(' 'i' 'n' 'd' 'e' 'x' 'S' 't' 'e' 'p' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__INDEXSTEPDISPLAY); ./
            | '(' 'i' 'n' 't' 'e' 'g' 'e' 'r' 'P' 'a' 'r' 'a' 'm' 'e' 't' 'e' 'r' /. makeToken($__INTEGERPARAMETER); ./
            | '(' 'i' 'n' 't' 'e' 'g' 'e' 'r' 'R' 'e' 'm' 'a' 'i' 'n' 'd' 'e' 'r' /. makeToken($__INTEGERREMAINDER); ./
            | '(' 'l' 'o' 'g' 'i' 'c' 'D' 'e' 'f' 'i' 'n' 'i' 't' 'i' 'o' 'n' 's' /. makeToken($__LOGICDEFINITIONS); ./
            | '(' 'p' 'a' 'g' 'e' 'T' 'i' 't' 'l' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__PAGETITLEDISPLAY); ./
            | '(' 'p' 'a' 'r' 'a' 'm' 'e' 't' 'e' 'r' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__PARAMETERDISPLAY); ./
            | '(' 'p' 'h' 'y' 's' 'i' 'c' 'a' 'l' 'D' 'e' 'f' 'a' 'u' 'l' 't' 's' /. makeToken($__PHYSICALDEFAULTS); ./
            | '(' 'p' 'o' 'r' 't' 'D' 'e' 'l' 'a' 'y' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__PORTDELAYDISPLAY); ./
            | '(' 'p' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'O' 'v' 'e' 'r' 'r' 'i' 'd' 'e' /. makeToken($__PROPERTYOVERRIDE); ./
            | '(' 'p' 'r' 'o' 'p' 'o' 'r' 't' 'i' 'o' 'n' 'a' 'l' 'F' 'o' 'n' 't' /. makeToken($__PROPORTIONALFONT); ./
            | '(' 'r' 'i' 'p' 'p' 'e' 'r' 'H' 'o' 't' 's' 'p' 'o' 't' 'R' 'e' 'f' /. makeToken($__RIPPERHOTSPOTREF); ./
            | '(' 's' 'i' 'g' 'n' 'a' 'l' 'I' 'n' 'd' 'e' 'x' 'V' 'a' 'l' 'u' 'e' /. makeToken($__SIGNALINDEXVALUE); ./
            | '(' 'b' 'a' 'c' 'k' 'g' 'r' 'o' 'u' 'n' 'd' 'C' 'o' 'l' 'o' 'r' /. makeToken($__BACKGROUNDCOLOR); ./
            | '(' 'b' 'a' 's' 'e' 'l' 'i' 'n' 'e' 'J' 'u' 's' 't' 'i' 'f' 'y' /. makeToken($__BASELINEJUSTIFY); ./
            | '(' 'b' 'o' 'o' 'l' 'e' 'a' 'n' 'C' 'o' 'n' 's' 't' 'a' 'n' 't' /. makeToken($__BOOLEANCONSTANT); ./
            | '(' 'c' 'e' 'l' 'l' 'N' 'a' 'm' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__CELLNAMEDISPLAY); ./
            | '(' 'c' 'o' 'm' 'm' 'e' 'n' 't' 'G' 'r' 'a' 'p' 'h' 'i' 'c' 's' /. makeToken($__COMMENTGRAPHICS); ./
            | '(' 'c' 'o' 'm' 'p' 'l' 'e' 'x' 'G' 'e' 'o' 'm' 'e' 't' 'r' 'y' /. makeToken($__COMPLEXGEOMETRY); ./
            | '(' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'i' 'v' 'i' 't' 'y' 'B' 'u' 's' /. makeToken($__CONNECTIVITYBUS); ./
            | '(' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'i' 'v' 'i' 't' 'y' 'N' 'e' 't' /. makeToken($__CONNECTIVITYNET); ./
            | '(' 'c' 'o' 'n' 't' 'r' 'a' 'c' 't' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__CONTRACTDISPLAY); ./
            | '(' 'd' 'e' 'c' 'i' 'm' 'a' 'l' 'T' 'o' 'S' 't' 'r' 'i' 'n' 'g' /. makeToken($__DECIMALTOSTRING); ./
            | '(' 'd' 'e' 's' 'i' 'g' 'n' 'H' 'i' 'e' 'r' 'a' 'r' 'c' 'h' 'y' /. makeToken($__DESIGNHIERARCHY); ./
            | '(' 'e' 'n' 'g' 'i' 'n' 'e' 'e' 'r' 'i' 'n' 'g' 'D' 'a' 't' 'e' /. makeToken($__ENGINEERINGDATE); ./
            | '(' 'f' 'o' 'n' 't' 'D' 'e' 'f' 'i' 'n' 'i' 't' 'i' 'o' 'n' 's' /. makeToken($__FONTDEFINITIONS); ./
            | '(' 'f' 'o' 'n' 't' 'P' 'r' 'o' 'p' 'o' 'r' 't' 'i' 'o' 'n' 's' /. makeToken($__FONTPROPORTIONS); ./
            | '(' 'g' 'l' 'o' 'b' 'a' 'l' 'P' 'o' 'r' 't' 'S' 'c' 'o' 'p' 'e' /. makeToken($__GLOBALPORTSCOPE); ./
            | '(' 'i' 'f' 'F' 'r' 'a' 'm' 'e' 'A' 'n' 'n' 'o' 't' 'a' 't' 'e' /. makeToken($__IFFRAMEANNOTATE); ./
            | '(' 'i' 'n' 'd' 'e' 'x' 'E' 'n' 'd' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__INDEXENDDISPLAY); ./
            | '(' 'i' 'n' 't' 'e' 'g' 'e' 'r' 'C' 'o' 'n' 's' 't' 'a' 'n' 't' /. makeToken($__INTEGERCONSTANT); ./
            | '(' 'i' 'n' 't' 'e' 'g' 'e' 'r' 'Q' 'u' 'o' 't' 'i' 'e' 'n' 't' /. makeToken($__INTEGERQUOTIENT); ./
            | '(' 'i' 'n' 't' 'e' 'g' 'e' 'r' 'S' 'u' 'b' 't' 'r' 'a' 'c' 't' /. makeToken($__INTEGERSUBTRACT); ./
            | '(' 'i' 'n' 't' 'e' 'r' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'R' 'e' 'f' /. makeToken($__INTERCONNECTREF); ./
            | '(' 'i' 'n' 't' 'e' 'r' 'c' 'o' 'n' 'n' 'e' 'c' 't' 'S' 'e' 't' /. makeToken($__INTERCONNECTSET); ./
            | '(' 'i' 'n' 't' 'e' 'r' 'f' 'a' 'c' 'e' 'J' 'o' 'i' 'n' 'e' 'd' /. makeToken($__INTERFACEJOINED); ./
            | '(' 'k' '2' 'K' 'e' 'y' 'w' 'o' 'r' 'd' 'D' 'e' 'f' 'i' 'n' 'e' /. makeToken($__K2KEYWORDDEFINE); ./
            | '(' 'k' '3' 'K' 'e' 'y' 'w' 'o' 'r' 'd' 'D' 'e' 'f' 'i' 'n' 'e' /. makeToken($__K3KEYWORDDEFINE); ./
            | '(' 'l' 'e' 's' 's' 'T' 'h' 'a' 'n' 'O' 'r' 'E' 'q' 'u' 'a' 'l' /. makeToken($__LESSTHANOREQUAL); ./
            | '(' 'l' 'o' 'g' 'i' 'c' 'M' 'o' 'd' 'e' 'l' 'U' 'n' 'i' 't' 's' /. makeToken($__LOGICMODELUNITS); ./
            | '(' 'm' 'a' 's' 'k' 'L' 'a' 'y' 'o' 'u' 't' 'U' 'n' 'i' 't' 's' /. makeToken($__MASKLAYOUTUNITS); ./
            | '(' 'n' 'a' 'm' 'e' 'I' 'n' 'f' 'o' 'r' 'm' 'a' 't' 'i' 'o' 'n' /. makeToken($__NAMEINFORMATION); ./
            | '(' 'n' 'u' 'm' 'b' 'e' 'r' 'P' 'a' 'r' 'a' 'm' 'e' 't' 'e' 'r' /. makeToken($__NUMBERPARAMETER); ./
            | '(' 'p' 'h' 'y' 's' 'i' 'c' 'a' 'l' 'S' 'c' 'a' 'l' 'i' 'n' 'g' /. makeToken($__PHYSICALSCALING); ./
            | '(' 'p' 'o' 'r' 't' 'I' 'n' 's' 't' 'a' 'n' 'c' 'e' 'R' 'e' 'f' /. makeToken($__PORTINSTANCEREF); ./
            | '(' 'p' 'o' 'r' 't' 'N' 'a' 'm' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__PORTNAMEDISPLAY); ./
            | '(' 'p' 'r' 'e' 'v' 'i' 'o' 'u' 's' 'V' 'e' 'r' 's' 'i' 'o' 'n' /. makeToken($__PREVIOUSVERSION); ./
            | '(' 'p' 'r' 'o' 'p' 'e' 'r' 't' 'y' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__PROPERTYDISPLAY); ./
            | '(' 'r' 'e' 'p' 'e' 't' 'i' 't' 'i' 'o' 'n' 'C' 'o' 'u' 'n' 't' /. makeToken($__REPETITIONCOUNT); ./
            | '(' 'r' 'e' 'v' 'i' 's' 'i' 'o' 'n' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__REVISIONDISPLAY); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'M' 'e' 't' 'r' 'i' 'c' /. makeToken($__SCHEMATICMETRIC); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'S' 'u' 'b' 'B' 'u' 's' /. makeToken($__SCHEMATICSUBBUS); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'S' 'u' 'b' 'N' 'e' 't' /. makeToken($__SCHEMATICSUBNET); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'S' 'y' 'm' 'b' 'o' 'l' /. makeToken($__SCHEMATICSYMBOL); ./
            | '(' 's' 'i' 'g' 'n' 'a' 'l' 'M' 'e' 'm' 'b' 'e' 'r' 'R' 'e' 'f' /. makeToken($__SIGNALMEMBERREF); ./
            | '(' 's' 't' 'r' 'i' 'n' 'g' 'P' 'a' 'r' 'a' 'm' 'e' 't' 'e' 'r' /. makeToken($__STRINGPARAMETER); ./
            | '(' 'u' 'n' 'i' 't' 'D' 'e' 'f' 'i' 'n' 'i' 't' 'i' 'o' 'n' 's' /. makeToken($__UNITDEFINITIONS); ./
            | '(' 'v' 'i' 'e' 'w' 'G' 'r' 'o' 'u' 'p' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__VIEWGROUPHEADER); ./
            | '(' 'v' 'i' 'e' 'w' 'N' 'a' 'm' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__VIEWNAMEDISPLAY); ./
            | '(' 'c' 'a' 'p' 'l' 'i' 'n' 'e' 'J' 'u' 's' 't' 'i' 'f' 'y' /. makeToken($__CAPLINEJUSTIFY); ./
            | '(' 'c' 'o' 'n' 's' 't' 'a' 'n' 't' 'V' 'a' 'l' 'u' 'e' 's' /. makeToken($__CONSTANTVALUES); ./
            | '(' 'f' 'o' 'r' 'b' 'i' 'd' 'd' 'e' 'n' 'E' 'v' 'e' 'n' 't' /. makeToken($__FORBIDDENEVENT); ./
            | '(' 'g' 'l' 'o' 'b' 'a' 'l' 'P' 'o' 'r' 't' 'L' 'i' 's' 't' /. makeToken($__GLOBALPORTLIST); ./
            | '(' 'i' 'n' 't' 'e' 'g' 'e' 'r' 'P' 'r' 'o' 'd' 'u' 'c' 't' /. makeToken($__INTEGERPRODUCT); ./
            | '(' 'i' 'n' 't' 'e' 'r' 'f' 'a' 'c' 'e' 'U' 'n' 'i' 't' 's' /. makeToken($__INTERFACEUNITS); ./
            | '(' 'j' 'o' 'i' 'n' 'e' 'd' 'A' 's' 'S' 'i' 'g' 'n' 'a' 'l' /. makeToken($__JOINEDASSIGNAL); ./
            | '(' 'k' '0' 'K' 'e' 'y' 'w' 'o' 'r' 'd' 'L' 'e' 'v' 'e' 'l' /. makeToken($__K0KEYWORDLEVEL); ./
            | '(' 'k' '1' 'K' 'e' 'y' 'w' 'o' 'r' 'd' 'A' 'l' 'i' 'a' 's' /. makeToken($__K1KEYWORDALIAS); ./
            | '(' 'k' '1' 'K' 'e' 'y' 'w' 'o' 'r' 'd' 'L' 'e' 'v' 'e' 'l' /. makeToken($__K1KEYWORDLEVEL); ./
            | '(' 'k' '2' 'K' 'e' 'y' 'w' 'o' 'r' 'd' 'L' 'e' 'v' 'e' 'l' /. makeToken($__K2KEYWORDLEVEL); ./
            | '(' 'k' '3' 'K' 'e' 'y' 'w' 'o' 'r' 'd' 'L' 'e' 'v' 'e' 'l' /. makeToken($__K3KEYWORDLEVEL); ./
            | '(' 'l' 'o' 'c' 'a' 'l' 'P' 'o' 'r' 't' 'G' 'r' 'o' 'u' 'p' /. makeToken($__LOCALPORTGROUP); ./
            | '(' 'l' 'o' 'g' 'i' 'c' 'M' 'a' 'p' 'O' 'u' 't' 'p' 'u' 't' /. makeToken($__LOGICMAPOUTPUT); ./
            | '(' 'l' 'o' 'g' 'i' 'c' 'M' 'o' 'd' 'e' 'l' 'V' 'i' 'e' 'w' /. makeToken($__LOGICMODELVIEW); ./
            | '(' 'm' 'a' 's' 'k' 'L' 'a' 'y' 'o' 'u' 't' 'V' 'i' 'e' 'w' /. makeToken($__MASKLAYOUTVIEW); ./
            | '(' 'm' 'i' 'x' 'e' 'd' 'D' 'i' 'r' 'e' 'c' 't' 'i' 'o' 'n' /. makeToken($__MIXEDDIRECTION); ./
            | '(' 'o' 't' 'h' 'e' 'r' 'w' 'i' 's' 'e' 'F' 'r' 'a' 'm' 'e' /. makeToken($__OTHERWISEFRAME); ./
            | '(' 'p' 'a' 'g' 'e' 'T' 'i' 't' 'l' 'e' 'B' 'l' 'o' 'c' 'k' /. makeToken($__PAGETITLEBLOCK); ./
            | '(' 'p' 'c' 'b' 'L' 'a' 'y' 'o' 'u' 't' 'U' 'n' 'i' 't' 's' /. makeToken($__PCBLAYOUTUNITS); ./
            | '(' 'p' 'o' 'r' 't' 'I' 'n' 'd' 'e' 'x' 'V' 'a' 'l' 'u' 'e' /. makeToken($__PORTINDEXVALUE); ./
            | '(' 'r' 'e' 'p' 'l' 'a' 'c' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__REPLACEDISPLAY); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'U' 'n' 'i' 't' 's' /. makeToken($__SCHEMATICUNITS); ./
            | '(' 's' 'e' 't' 'C' 'a' 'p' 'a' 'c' 'i' 't' 'a' 'n' 'c' 'e' /. makeToken($__SETCAPACITANCE); ./
            | '(' 's' 'i' 'g' 'n' 'a' 'l' 'A' 'n' 'n' 'o' 't' 'a' 't' 'e' /. makeToken($__SIGNALANNOTATE); ./
            | '(' 's' 'i' 'g' 'n' 'a' 'l' 'G' 'r' 'o' 'u' 'p' 'R' 'e' 'f' /. makeToken($__SIGNALGROUPREF); ./
            | '(' 's' 't' 'r' 'i' 'n' 'g' 'C' 'o' 'n' 's' 't' 'a' 'n' 't' /. makeToken($__STRINGCONSTANT); ./
            | '(' 't' 'y' 'p' 'e' 'f' 'a' 'c' 'e' 'S' 'u' 'f' 'f' 'i' 'x' /. makeToken($__TYPEFACESUFFIX); ./
            | '(' 'a' 'c' 'L' 'o' 'a' 'd' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__ACLOADDISPLAY); ./
            | '(' 'b' 'i' 'd' 'i' 'r' 'e' 'c' 't' 'i' 'o' 'n' 'a' 'l' /. makeToken($__BIDIRECTIONAL); ./
            | '(' 'b' 'o' 'r' 'd' 'e' 'r' 'P' 'a' 't' 't' 'e' 'r' 'n' /. makeToken($__BORDERPATTERN); ./
            | '(' 'b' 'o' 't' 't' 'o' 'm' 'J' 'u' 's' 't' 'i' 'f' 'y' /. makeToken($__BOTTOMJUSTIFY); ./
            | '(' 'c' 'e' 'n' 't' 'e' 'r' 'J' 'u' 's' 't' 'i' 'f' 'y' /. makeToken($__CENTERJUSTIFY); ./
            | '(' 'c' 'l' 'u' 's' 't' 'e' 'r' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__CLUSTERHEADER); ./
            | '(' 'd' 'o' 'c' 'u' 'm' 'e' 'n' 't' 'a' 't' 'i' 'o' 'n' /. makeToken($__DOCUMENTATION); ./
            | '(' 'f' 'o' 'r' 'F' 'r' 'a' 'm' 'e' 'I' 'n' 'd' 'e' 'x' /. makeToken($__FORFRAMEINDEX); ./
            | '(' 'g' 'e' 'o' 'm' 'e' 't' 'r' 'y' 'M' 'a' 'c' 'r' 'o' /. makeToken($__GEOMETRYMACRO); ./
            | '(' 'g' 'l' 'o' 'b' 'a' 'l' 'P' 'o' 'r' 't' 'R' 'e' 'f' /. makeToken($__GLOBALPORTREF); ./
            | '(' 'i' 'n' 's' 't' 'a' 'n' 'c' 'e' 'W' 'i' 'd' 't' 'h' /. makeToken($__INSTANCEWIDTH); ./
            | '(' 'l' 'i' 'b' 'r' 'a' 'r' 'y' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__LIBRARYHEADER); ./
            | '(' 'l' 'o' 'g' 'i' 'c' 'M' 'a' 'p' 'I' 'n' 'p' 'u' 't' /. makeToken($__LOGICMAPINPUT); ./
            | '(' 'm' 'i' 'd' 'd' 'l' 'e' 'J' 'u' 's' 't' 'i' 'f' 'y' /. makeToken($__MIDDLEJUSTIFY); ./
            | '(' 'n' 'a' 'm' 'e' 'D' 'i' 'm' 'e' 'n' 's' 'i' 'o' 'n' /. makeToken($__NAMEDIMENSION); ./
            | '(' 'n' 'a' 'm' 'e' 'S' 't' 'r' 'u' 'c' 't' 'u' 'r' 'e' /. makeToken($__NAMESTRUCTURE); ./
            | '(' 'n' 'o' 'H' 'o' 't' 's' 'p' 'o' 't' 'G' 'r' 'i' 'd' /. makeToken($__NOHOTSPOTGRID); ./
            | '(' 'n' 'o' 'n' 'P' 'e' 'r' 'm' 'u' 't' 'a' 'b' 'l' 'e' /. makeToken($__NONPERMUTABLE); ./
            | '(' 'p' 'c' 'b' 'L' 'a' 'y' 'o' 'u' 't' 'V' 'i' 'e' 'w' /. makeToken($__PCBLAYOUTVIEW); ./
            | '(' 'p' 'o' 'r' 't' 'L' 'o' 'a' 'd' 'D' 'e' 'l' 'a' 'y' /. makeToken($__PORTLOADDELAY); ./
            | '(' 'p' 'o' 'r' 't' 'M' 'e' 'm' 'b' 'e' 'r' 'R' 'e' 'f' /. makeToken($__PORTMEMBERREF); ./
            | '(' 'r' 'e' 'm' 'o' 'v' 'e' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__REMOVEDISPLAY); ./
            | '(' 'r' 'i' 'p' 'p' 'e' 'r' 'H' 'o' 't' 's' 'p' 'o' 't' /. makeToken($__RIPPERHOTSPOT); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'V' 'i' 'e' 'w' /. makeToken($__SCHEMATICVIEW); ./
            | '(' 't' 'i' 'm' 'i' 'n' 'g' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__TIMINGDISPLAY); ./
            | '(' 'u' 'n' 'c' 'o' 'n' 's' 't' 'r' 'a' 'i' 'n' 'e' 'd' /. makeToken($__UNCONSTRAINED); ./
            | '(' 'a' 'p' 'p' 'r' 'o' 'v' 'e' 'd' 'D' 'a' 't' 'e' /. makeToken($__APPROVEDDATE); ./
            | '(' 'b' 'e' 'h' 'a' 'v' 'i' 'o' 'r' 'V' 'i' 'e' 'w' /. makeToken($__BEHAVIORVIEW); ./
            | '(' 'd' 'c' 'F' 'a' 'n' 'O' 'u' 't' 'L' 'o' 'a' 'd' /. makeToken($__DCFANOUTLOAD); ./
            | '(' 'd' 'e' 's' 'i' 'g' 'n' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__DESIGNHEADER); ./
            | '(' 'i' 'e' 'e' 'e' 'S' 't' 'a' 'n' 'd' 'a' 'r' 'd' /. makeToken($__IEEESTANDARD); ./
            | '(' 'i' 'n' 't' 'e' 'g' 'e' 'r' 'E' 'q' 'u' 'a' 'l' /. makeToken($__INTEGEREQUAL); ./
            | '(' 'k' '3' 'F' 'o' 'r' 'm' 'a' 'l' 'L' 'i' 's' 't' /. makeToken($__K3FORMALLIST); ./
            | '(' 'm' 'i' 'n' 'i' 'm' 'a' 'l' 'W' 'i' 'd' 't' 'h' /. makeToken($__MINIMALWIDTH); ./
            | '(' 'n' 'o' 't' 'I' 'n' 'h' 'e' 'r' 'i' 't' 'e' 'd' /. makeToken($__NOTINHERITED); ./
            | '(' 'p' 'a' 'g' 'e' 'A' 'n' 'n' 'o' 't' 'a' 't' 'e' /. makeToken($__PAGEANNOTATE); ./
            | '(' 'p' 'i' 'x' 'e' 'l' 'P' 'a' 't' 't' 'e' 'r' 'n' /. makeToken($__PIXELPATTERN); ./
            | '(' 'p' 'o' 'r' 't' 'A' 'n' 'n' 'o' 't' 'a' 't' 'e' /. makeToken($__PORTANNOTATE); ./
            | '(' 'r' 'i' 'g' 'h' 't' 'J' 'u' 's' 't' 'i' 'f' 'y' /. makeToken($__RIGHTJUSTIFY); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'B' 'u' 's' /. makeToken($__SCHEMATICBUS); ./
            | '(' 's' 'c' 'h' 'e' 'm' 'a' 't' 'i' 'c' 'N' 'e' 't' /. makeToken($__SCHEMATICNET); ./
            | '(' 's' 'e' 'c' 't' 'i' 'o' 'n' 'T' 'i' 't' 'l' 'e' /. makeToken($__SECTIONTITLE); ./
            | '(' 's' 'e' 't' 'F' 'r' 'e' 'q' 'u' 'e' 'n' 'c' 'y' /. makeToken($__SETFREQUENCY); ./
            | '(' 's' 'i' 'g' 'n' 'a' 'l' 'J' 'o' 'i' 'n' 'e' 'd' /. makeToken($__SIGNALJOINED); ./
            | '(' 's' 't' 'r' 'i' 'n' 'g' 'L' 'e' 'n' 'g' 't' 'h' /. makeToken($__STRINGLENGTH); ./
            | '(' 's' 't' 'r' 'i' 'n' 'g' 'P' 'r' 'e' 'f' 'i' 'x' /. makeToken($__STRINGPREFIX); ./
            | '(' 's' 't' 'r' 'i' 'n' 'g' 'S' 'u' 'f' 'f' 'i' 'x' /. makeToken($__STRINGSUFFIX); ./
            | '(' 't' 'i' 'm' 'e' 'I' 'n' 't' 'e' 'r' 'v' 'a' 'l' /. makeToken($__TIMEINTERVAL); ./
            | '(' 'u' 'n' 'c' 'o' 'n' 'f' 'i' 'g' 'u' 'r' 'e' 'd' /. makeToken($__UNCONFIGURED); ./
            | '(' 'u' 'n' 'r' 'e' 's' 't' 'r' 'i' 'c' 't' 'e' 'd' /. makeToken($__UNRESTRICTED); ./
            | '(' 'v' 'i' 'e' 'w' 'G' 'r' 'o' 'u' 'p' 'R' 'e' 'f' /. makeToken($__VIEWGROUPREF); ./
            | '(' 'b' 'o' 'r' 'd' 'e' 'r' 'W' 'i' 'd' 't' 'h' /. makeToken($__BORDERWIDTH); ./
            | '(' 'c' 'o' 'm' 'p' 'a' 'n' 'y' 'N' 'a' 'm' 'e' /. makeToken($__COMPANYNAME); ./
            | '(' 'c' 'o' 'm' 'p' 'l' 'e' 'x' 'N' 'a' 'm' 'e' /. makeToken($__COMPLEXNAME); ./
            | '(' 'c' 'r' 'i' 't' 'i' 'c' 'a' 'l' 'i' 't' 'y' /. makeToken($__CRITICALITY); ./
            | '(' 'd' 'c' 'F' 'a' 'n' 'I' 'n' 'L' 'o' 'a' 'd' /. makeToken($__DCFANINLOAD); ./
            | '(' 'd' 'c' 'M' 'a' 'x' 'F' 'a' 'n' 'O' 'u' 't' /. makeToken($__DCMAXFANOUT); ./
            | '(' 'd' 'e' 'r' 'i' 'v' 'e' 'd' 'F' 'r' 'o' 'm' /. makeToken($__DERIVEDFROM); ./
            | '(' 'd' 'e' 's' 'i' 'g' 'n' 'U' 'n' 'i' 't' 's' /. makeToken($__DESIGNUNITS); ./
            | '(' 'd' 'i' 's' 'p' 'l' 'a' 'y' 'N' 'a' 'm' 'e' /. makeToken($__DISPLAYNAME); ./
            | '(' 'd' 'r' 'a' 'w' 'i' 'n' 'g' 'S' 'i' 'z' 'e' /. makeToken($__DRAWINGSIZE); ./
            | '(' 'e' 'd' 'i' 'f' 'V' 'e' 'r' 's' 'i' 'o' 'n' /. makeToken($__EDIFVERSION); ./
            | '(' 'f' 'i' 'g' 'u' 'r' 'e' 'G' 'r' 'o' 'u' 'p' /. makeToken($__FIGUREGROUP); ./
            | '(' 'f' 'i' 'l' 'l' 'P' 'a' 't' 't' 'e' 'r' 'n' /. makeToken($__FILLPATTERN); ./
            | '(' 'f' 'o' 'n' 't' 'D' 'e' 's' 'c' 'e' 'n' 't' /. makeToken($__FONTDESCENT); ./
            | '(' 'f' 'o' 'r' 'F' 'r' 'a' 'm' 'e' 'R' 'e' 'f' /. makeToken($__FORFRAMEREF); ./
            | '(' 'h' 'o' 't' 's' 'p' 'o' 't' 'G' 'r' 'i' 'd' /. makeToken($__HOTSPOTGRID); ./
            | '(' 'i' 'e' 'e' 'e' 'S' 'e' 'c' 't' 'i' 'o' 'n' /. makeToken($__IEEESECTION); ./
            | '(' 'i' 'n' 's' 't' 'a' 'n' 'c' 'e' 'R' 'e' 'f' /. makeToken($__INSTANCEREF); ./
            | '(' 'i' 't' 'a' 'l' 'i' 'c' 'S' 't' 'y' 'l' 'e' /. makeToken($__ITALICSTYLE); ./
            | '(' 'k' '3' 'C' 'o' 'l' 'l' 'e' 'c' 't' 'o' 'r' /. makeToken($__K3COLLECTOR); ./
            | '(' 'l' 'e' 'f' 't' 'J' 'u' 's' 't' 'i' 'f' 'y' /. makeToken($__LEFTJUSTIFY); ./
            | '(' 'n' 'u' 'm' 'b' 'e' 'r' 'P' 'o' 'i' 'n' 't' /. makeToken($__NUMBERPOINT); ./
            | '(' 'o' 'f' 'f' 's' 'e' 't' 'E' 'v' 'e' 'n' 't' /. makeToken($__OFFSETEVENT); ./
            | '(' 'p' 'r' 'i' 'm' 'a' 'r' 'y' 'N' 'a' 'm' 'e' /. makeToken($__PRIMARYNAME); ./
            | '(' 's' 'e' 't' 'D' 'i' 's' 't' 'a' 'n' 'c' 'e' /. makeToken($__SETDISTANCE); ./
            | '(' 's' 'i' 'g' 'n' 'a' 'l' 'G' 'r' 'o' 'u' 'p' /. makeToken($__SIGNALGROUP); ./
            | '(' 's' 'i' 'g' 'n' 'a' 'l' 'W' 'i' 'd' 't' 'h' /. makeToken($__SIGNALWIDTH); ./
            | '(' 's' 't' 'r' 'i' 'n' 'g' 'E' 'q' 'u' 'a' 'l' /. makeToken($__STRINGEQUAL); ./
            | '(' 'u' 'n' 's' 'p' 'e' 'c' 'i' 'f' 'i' 'e' 'd' /. makeToken($__UNSPECIFIED); ./
            | '(' 'a' 'd' 'd' 'D' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__ADDDISPLAY); ./
            | '(' 'b' 'o' 'o' 'l' 'e' 'a' 'n' 'M' 'a' 'p' /. makeToken($__BOOLEANMAP); ./
            | '(' 'c' 'a' 'l' 'c' 'u' 'l' 'a' 't' 'e' 'd' /. makeToken($__CALCULATED); ./
            | '(' 'c' 'e' 'l' 'l' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__CELLHEADER); ./
            | '(' 'c' 'l' 'u' 's' 't' 'e' 'r' 'R' 'e' 'f' /. makeToken($__CLUSTERREF); ./
            | '(' 'c' 'o' 'r' 'n' 'e' 'r' 'T' 'y' 'p' 'e' /. makeToken($__CORNERTYPE); ./
            | '(' 'c' 'u' 'r' 'r' 'e' 'n' 't' 'M' 'a' 'p' /. makeToken($__CURRENTMAP); ./
            | '(' 'd' 'a' 't' 'a' 'O' 'r' 'i' 'g' 'i' 'n' /. makeToken($__DATAORIGIN); ./
            | '(' 'd' 'c' 'M' 'a' 'x' 'F' 'a' 'n' 'I' 'n' /. makeToken($__DCMAXFANIN); ./
            | '(' 'd' 'e' 's' 'i' 'g' 'n' 'a' 't' 'o' 'r' /. makeToken($__DESIGNATOR); ./
            | '(' 'e' 'd' 'i' 'f' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__EDIFHEADER); ./
            | '(' 'f' 'a' 'h' 'r' 'e' 'n' 'h' 'e' 'i' 't' /. makeToken($__FAHRENHEIT); ./
            | '(' 'f' 'o' 'n' 't' 'H' 'e' 'i' 'g' 'h' 't' /. makeToken($__FONTHEIGHT); ./
            | '(' 'f' 'r' 'o' 'm' 'B' 'o' 't' 't' 'o' 'm' /. makeToken($__FROMBOTTOM); ./
            | '(' 'g' 'l' 'o' 'b' 'a' 'l' 'P' 'o' 'r' 't' /. makeToken($__GLOBALPORT); ./
            | '(' 'i' 'f' 'F' 'r' 'a' 'm' 'e' 'R' 'e' 'f' /. makeToken($__IFFRAMEREF); ./
            | '(' 'i' 'f' 'F' 'r' 'a' 'm' 'e' 'S' 'e' 't' /. makeToken($__IFFRAMESET); ./
            | '(' 'i' 'n' 'd' 'e' 'x' 'S' 't' 'a' 'r' 't' /. makeToken($__INDEXSTART); ./
            | '(' 'i' 'n' 'd' 'e' 'x' 'V' 'a' 'l' 'u' 'e' /. makeToken($__INDEXVALUE); ./
            | '(' 'i' 'n' 't' 'e' 'g' 'e' 'r' 'S' 'u' 'm' /. makeToken($__INTEGERSUM); ./
            | '(' 'k' '2' 'G' 'e' 'n' 'e' 'r' 'a' 't' 'e' /. makeToken($__K2GENERATE); ./
            | '(' 'k' '2' 'O' 'p' 't' 'i' 'o' 'n' 'a' 'l' /. makeToken($__K2OPTIONAL); ./
            | '(' 'k' '2' 'R' 'e' 'q' 'u' 'i' 'r' 'e' 'd' /. makeToken($__K2REQUIRED); ./
            | '(' 'k' '3' 'G' 'e' 'n' 'e' 'r' 'a' 't' 'e' /. makeToken($__K3GENERATE); ./
            | '(' 'k' 'e' 'y' 'w' 'o' 'r' 'd' 'M' 'a' 'p' /. makeToken($__KEYWORDMAP); ./
            | '(' 'l' 'i' 'b' 'r' 'a' 'r' 'y' 'R' 'e' 'f' /. makeToken($__LIBRARYREF); ./
            | '(' 'l' 'o' 'g' 'i' 'c' 'O' 'n' 'e' 'O' 'f' /. makeToken($__LOGICONEOF); ./
            | '(' 'l' 'o' 'g' 'i' 'c' 'V' 'a' 'l' 'u' 'e' /. makeToken($__LOGICVALUE); ./
            | '(' 'n' 'a' 'r' 'r' 'o' 'w' 'P' 'o' 'r' 't' /. makeToken($__NARROWPORT); ./
            | '(' 'n' 'a' 'r' 'r' 'o' 'w' 'W' 'i' 'r' 'e' /. makeToken($__NARROWWIRE); ./
            | '(' 'o' 'u' 't' 'p' 'u' 't' 'P' 'o' 'r' 't' /. makeToken($__OUTPUTPORT); ./
            | '(' 'p' 'a' 'g' 'e' 'B' 'o' 'r' 'd' 'e' 'r' /. makeToken($__PAGEBORDER); ./
            | '(' 'p' 'a' 'g' 'e' 'H' 'e' 'a' 'd' 'e' 'r' /. makeToken($__PAGEHEADER); ./
            | '(' 'p' 'e' 'r' 'm' 'u' 't' 'a' 'b' 'l' 'e' /. makeToken($__PERMUTABLE); ./
            | '(' 'p' 'o' 'r' 't' 'B' 'u' 'n' 'd' 'l' 'e' /. makeToken($__PORTBUNDLE); ./
            | '(' 'p' 'o' 'r' 't' 'J' 'o' 'i' 'n' 'e' 'd' /. makeToken($__PORTJOINED); ./
            | '(' 's' 'e' 't' 'C' 'u' 'r' 'r' 'e' 'n' 't' /. makeToken($__SETCURRENT); ./
            | '(' 's' 'e' 't' 'V' 'o' 'l' 't' 'a' 'g' 'e' /. makeToken($__SETVOLTAGE); ./
            | '(' 's' 'i' 'g' 'n' 'a' 'l' 'L' 'i' 's' 't' /. makeToken($__SIGNALLIST); ./
            | '(' 't' 'e' 'c' 'h' 'n' 'o' 'l' 'o' 'g' 'y' /. makeToken($__TECHNOLOGY); ./
            | '(' 't' 'e' 'x' 't' 'H' 'e' 'i' 'g' 'h' 't' /. makeToken($__TEXTHEIGHT); ./
            | '(' 't' 'o' 'p' 'J' 'u' 's' 't' 'i' 'f' 'y' /. makeToken($__TOPJUSTIFY); ./
            | '(' 't' 'o' 't' 'a' 'l' 'P' 'a' 'g' 'e' 's' /. makeToken($__TOTALPAGES); ./
            | '(' 't' 'r' 'a' 'n' 's' 'i' 't' 'i' 'o' 'n' /. makeToken($__TRANSITION); ./
            | '(' 'u' 's' 'a' 'b' 'l' 'e' 'A' 'r' 'e' 'a' /. makeToken($__USABLEAREA); ./
            | '(' 'v' 'o' 'l' 't' 'a' 'g' 'e' 'M' 'a' 'p' /. makeToken($__VOLTAGEMAP); ./
            | '(' 'w' 'e' 'a' 'k' 'J' 'o' 'i' 'n' 'e' 'd' /. makeToken($__WEAKJOINED); ./
            | '(' 'b' 'o' 'l' 'd' 'S' 't' 'y' 'l' 'e' /. makeToken($__BOLDSTYLE); ./
            | '(' 'c' 'h' 'e' 'c' 'k' 'D' 'a' 't' 'e' /. makeToken($__CHECKDATE); ./
            | '(' 'c' 'o' 'n' 'd' 'i' 't' 'i' 'o' 'n' /. makeToken($__CONDITION); ./
            | '(' 'c' 'o' 'p' 'y' 'r' 'i' 'g' 'h' 't' /. makeToken($__COPYRIGHT); ./
            | '(' 'd' 'o' 'm' 'i' 'n' 'a' 't' 'e' 's' /. makeToken($__DOMINATES); ./
            | '(' 'e' 'd' 'i' 'f' 'L' 'e' 'v' 'e' 'l' /. makeToken($__EDIFLEVEL); ./
            | '(' 'f' 'o' 'n' 't' 'W' 'i' 'd' 't' 'h' /. makeToken($__FONTWIDTH); ./
            | '(' 'f' 'r' 'o' 'm' 'R' 'i' 'g' 'h' 't' /. makeToken($__FROMRIGHT); ./
            | '(' 'g' 'e' 'n' 'e' 'r' 'a' 't' 'e' 'd' /. makeToken($__GENERATED); ./
            | '(' 'i' 'n' 'd' 'e' 'x' 'S' 't' 'e' 'p' /. makeToken($__INDEXSTEP); ./
            | '(' 'i' 'n' 'p' 'u' 't' 'P' 'o' 'r' 't' /. makeToken($__INPUTPORT); ./
            | '(' 'i' 'n' 't' 'e' 'r' 'f' 'a' 'c' 'e' /. makeToken($__INTERFACE); ./
            | '(' 'k' '2' 'L' 'i' 't' 'e' 'r' 'a' 'l' /. makeToken($__K2LITERAL); ./
            | '(' 'k' '3' 'F' 'o' 'r' 'E' 'a' 'c' 'h' /. makeToken($__K3FOREACH); ./
            | '(' 'l' 'o' 'a' 'd' 'D' 'e' 'l' 'a' 'y' /. makeToken($__LOADDELAY); ./
            | '(' 'l' 'o' 'g' 'i' 'c' 'L' 'i' 's' 't' /. makeToken($__LOGICLIST); ./
            | '(' 'n' 'a' 'm' 'e' 'A' 'l' 'i' 'a' 's' /. makeToken($__NAMEALIAS); ./
            | '(' 'o' 'p' 'e' 'n' 'S' 'h' 'a' 'p' 'e' /. makeToken($__OPENSHAPE); ./
            | '(' 'p' 'a' 'g' 'e' 'T' 'i' 't' 'l' 'e' /. makeToken($__PAGETITLE); ./
            | '(' 'p' 'a' 't' 'h' 'D' 'e' 'l' 'a' 'y' /. makeToken($__PATHDELAY); ./
            | '(' 'p' 'a' 't' 'h' 'W' 'i' 'd' 't' 'h' /. makeToken($__PATHWIDTH); ./
            | '(' 'p' 'o' 'i' 'n' 't' 'L' 'i' 's' 't' /. makeToken($__POINTLIST); ./
            | '(' 'p' 'o' 'r' 't' 'D' 'e' 'l' 'a' 'y' /. makeToken($__PORTDELAY); ./
            | '(' 'p' 'o' 'r' 't' 'W' 'i' 'd' 't' 'h' /. makeToken($__PORTWIDTH); ./
            | '(' 'r' 'e' 'c' 't' 'a' 'n' 'g' 'l' 'e' /. makeToken($__RECTANGLE); ./
            | '(' 's' 'i' 'g' 'n' 'a' 'l' 'R' 'e' 'f' /. makeToken($__SIGNALREF); ./
            | '(' 's' 'u' 'b' 's' 't' 'r' 'i' 'n' 'g' /. makeToken($__SUBSTRING); ./
            | '(' 't' 'i' 'm' 'e' 'S' 't' 'a' 'm' 'p' /. makeToken($__TIMESTAMP); ./
            | '(' 't' 'r' 'a' 'n' 's' 'f' 'o' 'r' 'm' /. makeToken($__TRANSFORM); ./
            | '(' 'u' 'n' 'd' 'e' 'f' 'i' 'n' 'e' 'd' /. makeToken($__UNDEFINED); ./
            | '(' 'v' 'i' 'e' 'w' 'G' 'r' 'o' 'u' 'p' /. makeToken($__VIEWGROUP); ./
            | '(' 'a' 'b' 's' 'o' 'l' 'u' 't' 'e' /. makeToken($__ABSOLUTE); ./
            | '(' 'a' 'n' 'n' 'o' 't' 'a' 't' 'e' /. makeToken($__ANNOTATE); ./
            | '(' 'b' 'i' 't' 'O' 'r' 'd' 'e' 'r' /. makeToken($__BITORDER); ./
            | '(' 'c' 'o' 'm' 'p' 'o' 'u' 'n' 'd' /. makeToken($__COMPOUND); ./
            | '(' 'c' 'o' 'n' 't' 'r' 'a' 'c' 't' /. makeToken($__CONTRACT); ./
            | '(' 'd' 'u' 'r' 'a' 't' 'i' 'o' 'n' /. makeToken($__DURATION); ./
            | '(' 'e' 'x' 't' 'e' 'r' 'n' 'a' 'l' /. makeToken($__EXTERNAL); ./
            | '(' 'f' 'o' 'r' 'F' 'r' 'a' 'm' 'e' /. makeToken($__FORFRAME); ./
            | '(' 'f' 'r' 'a' 'm' 'e' 'R' 'e' 'f' /. makeToken($__FRAMEREF); ./
            | '(' 'f' 'r' 'o' 'm' 'L' 'e' 'f' 't' /. makeToken($__FROMLEFT); ./
            | '(' 'i' 'n' 's' 't' 'a' 'n' 'c' 'e' /. makeToken($__INSTANCE); ./
            | '(' 'i' 's' 'o' 'l' 'a' 't' 'e' 'd' /. makeToken($__ISOLATED); ./
            | '(' 'j' 'i' 's' 'x' '0' '2' '0' '1' /. makeToken($__JISX0201); ./
            | '(' 'j' 'i' 's' 'x' '0' '2' '0' '8' /. makeToken($__JISX0208); ./
            | '(' 'k' '2' 'A' 'c' 't' 'u' 'a' 'l' /. makeToken($__K2ACTUAL); ./
            | '(' 'k' '2' 'F' 'o' 'r' 'm' 'a' 'l' /. makeToken($__K2FORMAL); ./
            | '(' 'k' '3' 'F' 'o' 'r' 'm' 'a' 'l' /. makeToken($__K3FORMAL); ./
            | '(' 'k' 'i' 'l' 'o' 'g' 'r' 'a' 'm' /. makeToken($__KILOGRAM); ./
            | '(' 'l' 'e' 's' 's' 'T' 'h' 'a' 'n' /. makeToken($__LESSTHAN); ./
            | '(' 'l' 'o' 'g' 'i' 'c' 'R' 'e' 'f' /. makeToken($__LOGICREF); ./
            | '(' 'l' 's' 'b' 'T' 'o' 'M' 's' 'b' /. makeToken($__LSBTOMSB); ./
            | '(' 'm' 'e' 'a' 's' 'u' 'r' 'e' 'd' /. makeToken($__MEASURED); ./
            | '(' 'm' 's' 'b' 'T' 'o' 'L' 's' 'b' /. makeToken($__MSBTOLSB); ./
            | '(' 'm' 'u' 's' 't' 'J' 'o' 'i' 'n' /. makeToken($__MUSTJOIN); ./
            | '(' 'p' 'a' 'g' 'e' 'S' 'i' 'z' 'e' /. makeToken($__PAGESIZE); ./
            | '(' 'p' 'i' 'x' 'e' 'l' 'R' 'o' 'w' /. makeToken($__PIXELROW); ./
            | '(' 'p' 'o' 'r' 't' 'L' 'i' 's' 't' /. makeToken($__PORTLIST); ./
            | '(' 'p' 'r' 'o' 'p' 'e' 'r' 't' 'y' /. makeToken($__PROPERTY); ./
            | '(' 'r' 'e' 'q' 'u' 'i' 'r' 'e' 'd' /. makeToken($__REQUIRED); ./
            | '(' 'r' 'e' 's' 'o' 'l' 'v' 'e' 's' /. makeToken($__RESOLVES); ./
            | '(' 'r' 'e' 'v' 'i' 's' 'i' 'o' 'n' /. makeToken($__REVISION); ./
            | '(' 'r' 'o' 't' 'a' 't' 'i' 'o' 'n' /. makeToken($__ROTATION); ./
            | '(' 's' 'e' 'q' 'u' 'e' 'n' 'c' 'e' /. makeToken($__SEQUENCE); ./
            | '(' 's' 'e' 't' 'A' 'n' 'g' 'l' 'e' /. makeToken($__SETANGLE); ./
            | '(' 't' 'r' 'u' 'n' 'c' 'a' 't' 'e' /. makeToken($__TRUNCATE); ./
            | '(' 't' 'y' 'p' 'e' 'f' 'a' 'c' 'e' /. makeToken($__TYPEFACE); ./
            | '(' 'u' 's' 'e' 'r' 'D' 'a' 't' 'a' /. makeToken($__USERDATA); ./
            | '(' 'w' 'i' 'd' 'e' 'P' 'o' 'r' 't' /. makeToken($__WIDEPORT); ./
            | '(' 'w' 'i' 'd' 'e' 'W' 'i' 'r' 'e' /. makeToken($__WIDEWIRE); ./
            | '(' 'b' 'e' 'c' 'o' 'm' 'e' 's' /. makeToken($__BECOMES); ./
            | '(' 'b' 'o' 'o' 'l' 'e' 'a' 'n' /. makeToken($__BOOLEAN); ./
            | '(' 'c' 'a' 'n' 'd' 'e' 'l' 'a' /. makeToken($__CANDELA); ./
            | '(' 'c' 'e' 'l' 'l' 'R' 'e' 'f' /. makeToken($__CELLREF); ./
            | '(' 'c' 'e' 'l' 's' 'i' 'u' 's' /. makeToken($__CELSIUS); ./
            | '(' 'c' 'l' 'u' 's' 't' 'e' 'r' /. makeToken($__CLUSTER); ./
            | '(' 'c' 'o' 'm' 'm' 'e' 'n' 't' /. makeToken($__COMMENT); ./
            | '(' 'c' 'o' 'u' 'l' 'o' 'm' 'b' /. makeToken($__COULOMB); ./
            | '(' 'd' 'i' 'a' 'g' 'r' 'a' 'm' /. makeToken($__DIAGRAM); ./
            | '(' 'd' 'i' 's' 'p' 'l' 'a' 'y' /. makeToken($__DISPLAY); ./
            | '(' 'e' 'n' 'd' 'T' 'y' 'p' 'e' /. makeToken($__ENDTYPE); ./
            | '(' 'f' 'o' 'n' 't' 'R' 'e' 'f' /. makeToken($__FONTREF); ./
            | '(' 'f' 'r' 'o' 'm' 'T' 'o' 'p' /. makeToken($__FROMTOP); ./
            | '(' 'h' 'o' 't' 's' 'p' 'o' 't' /. makeToken($__HOTSPOT); ./
            | '(' 'i' 'f' 'F' 'r' 'a' 'm' 'e' /. makeToken($__IFFRAME); ./
            | '(' 'i' 'n' 't' 'e' 'g' 'e' 'r' /. makeToken($__INTEGER); ./
            | '(' 'i' 's' 'o' '8' '8' '5' '9' /. makeToken($__ISO8859); ./
            | '(' 'k' '2' 'B' 'u' 'i' 'l' 'd' /. makeToken($__K2BUILD); ./
            | '(' 'k' '3' 'B' 'u' 'i' 'l' 'd' /. makeToken($__K3BUILD); ./
            | '(' 'l' 'i' 'b' 'r' 'a' 'r' 'y' /. makeToken($__LIBRARY); ./
            | '(' 'm' 'i' 'N' 'o' 'M' 'a' 'x' /. makeToken($__MINOMAX); ./
            | '(' 'p' 'a' 'g' 'e' 'R' 'e' 'f' /. makeToken($__PAGEREF); ./
            | '(' 'p' 'o' 'l' 'y' 'g' 'o' 'n' /. makeToken($__POLYGON); ./
            | '(' 'p' 'o' 'r' 't' 'R' 'e' 'f' /. makeToken($__PORTREF); ./
            | '(' 'p' 'o' 'r' 't' 'S' 'e' 't' /. makeToken($__PORTSET); ./
            | '(' 'p' 'r' 'o' 'g' 'r' 'a' 'm' /. makeToken($__PROGRAM); ./
            | '(' 's' 'e' 'c' 't' 'i' 'o' 'n' /. makeToken($__SECTION); ./
            | '(' 's' 'e' 't' 'T' 'i' 'm' 'e' /. makeToken($__SETTIME); ./
            | '(' 's' 'i' 'e' 'm' 'e' 'n' 's' /. makeToken($__SIEMENS); ./
            | '(' 'u' 'n' 'i' 't' 'R' 'e' 'f' /. makeToken($__UNITREF); ./
            | '(' 'u' 'n' 't' 'y' 'p' 'e' 'd' /. makeToken($__UNTYPED); ./
            | '(' 'v' 'e' 'r' 's' 'i' 'o' 'n' /. makeToken($__VERSION); ./
            | '(' 'v' 'i' 'e' 'w' 'R' 'e' 'f' /. makeToken($__VIEWREF); ./
            | '(' 'v' 'i' 's' 'i' 'b' 'l' 'e' /. makeToken($__VISIBLE); ./
            | '(' 'w' 'r' 'i' 't' 't' 'e' 'n' /. makeToken($__WRITTEN); ./
            | '(' 'a' 'c' 'L' 'o' 'a' 'd' /. makeToken($__ACLOAD); ./
            | '(' 'a' 'm' 'p' 'e' 'r' 'e' /. makeToken($__AMPERE); ./
            | '(' 'a' 'u' 't' 'h' 'o' 'r' /. makeToken($__AUTHOR); ./
            | '(' 'c' 'i' 'r' 'c' 'l' 'e' /. makeToken($__CIRCLE); ./
            | '(' 'd' 'e' 'g' 'r' 'e' 'e' /. makeToken($__DEGREE); ./
            | '(' 'd' 'e' 's' 'i' 'g' 'n' /. makeToken($__DESIGN); ./
            | '(' 'e' 'x' 't' 'e' 'n' 'd' /. makeToken($__EXTEND); ./
            | '(' 'f' 'i' 'g' 'u' 'r' 'e' /. makeToken($__FIGURE); ./
            | '(' 'i' 'g' 'n' 'o' 'r' 'e' /. makeToken($__IGNORE); ./
            | '(' 'k' 'e' 'l' 'v' 'i' 'n' /. makeToken($__KELVIN); ./
            | '(' 'n' 'u' 'm' 'b' 'e' 'r' /. makeToken($__NUMBER); ./
            | '(' 'o' 'r' 'i' 'g' 'i' 'n' /. makeToken($__ORIGIN); ./
            | '(' 'o' 'u' 't' 'p' 'u' 't' /. makeToken($__OUTPUT); ./
            | '(' 'r' 'a' 'd' 'i' 'a' 'n' /. makeToken($__RADIAN); ./
            | '(' 'r' 'e' 'a' 's' 'o' 'n' /. makeToken($__REASON); ./
            | '(' 's' 'c' 'a' 'l' 'e' 'X' /. makeToken($__SCALEX); ./
            | '(' 's' 'c' 'a' 'l' 'e' 'Y' /. makeToken($__SCALEY); ./
            | '(' 's' 'e' 'c' 'o' 'n' 'd' /. makeToken($__SECOND); ./
            | '(' 's' 'i' 'g' 'n' 'a' 'l' /. makeToken($__SIGNAL); ./
            | '(' 's' 't' 'a' 't' 'u' 's' /. makeToken($__STATUS); ./
            | '(' 's' 't' 'r' 'i' 'n' 'g' /. makeToken($__STRING); ./
            | '(' 's' 't' 'r' 'o' 'n' 'g' /. makeToken($__STRONG); ./
            | '(' 't' 'i' 'm' 'i' 'n' 'g' /. makeToken($__TIMING); ./
            | '(' 'u' 'n' 'u' 's' 'e' 'd' /. makeToken($__UNUSED); ./
            | '(' 'a' 's' 'c' 'i' 'i' /. makeToken($__ASCII); ./
            | '(' 'c' 'o' 'l' 'o' 'r' /. makeToken($__COLOR); ./
            | '(' 'c' 'u' 'r' 'v' 'e' /. makeToken($__CURVE); ./
            | '(' 'd' 'e' 'l' 'a' 'y' /. makeToken($__DELAY); ./
            | '(' 'e' 'v' 'e' 'n' 't' /. makeToken($__EVENT); ./
            | '(' 'f' 'a' 'l' 's' 'e' /. makeToken($__FALSE); ./
            | '(' 'f' 'a' 'r' 'a' 'd' /. makeToken($__FARAD); ./
            | '(' 'f' 'i' 'x' 'e' 'd' /. makeToken($__FIXED); ./
            | '(' 'f' 'o' 'n' 't' 's' /. makeToken($__FONTS); ./
            | '(' 'h' 'e' 'n' 'r' 'y' /. makeToken($__HENRY); ./
            | '(' 'h' 'e' 'r' 't' 'z' /. makeToken($__HERTZ); ./
            | '(' 'i' 'n' 'p' 'u' 't' /. makeToken($__INPUT); ./
            | '(' 'j' 'o' 'u' 'l' 'e' /. makeToken($__JOULE); ./
            | '(' 'm' 'e' 't' 'e' 'r' /. makeToken($__METER); ./
            | '(' 'o' 'w' 'n' 'e' 'r' /. makeToken($__OWNER); ./
            | '(' 'p' 'o' 'i' 'n' 't' /. makeToken($__POINT); ./
            | '(' 'r' 'o' 'u' 'n' 'd' /. makeToken($__ROUND); ./
            | '(' 's' 'h' 'a' 'p' 'e' /. makeToken($__SHAPE); ./
            | '(' 'w' 'e' 'b' 'e' 'r' /. makeToken($__WEBER); ./
            | 'y' 'i' 'e' 'l' 'd' '*' /. makeToken($_YIELDSTAR); ./
            | '(' 'c' 'e' 'l' 'l' /. makeToken($__CELL); ./
            | '(' 'd' 'a' 't' 'e' /. makeToken($__DATE); ./
            | '(' 'e' 'd' 'i' 'f' /. makeToken($__EDIF); ./
            | '(' 'f' 'o' 'n' 't' /. makeToken($__FONT); ./
            | '(' 'l' 'e' 'a' 'f' /. makeToken($__LEAF); ./
            | '(' 'm' 'o' 'l' 'e' /. makeToken($__MOLE); ./
            | '(' 'p' 'a' 'g' 'e' /. makeToken($__PAGE); ./
            | '(' 'p' 'a' 't' 'h' /. makeToken($__PATH); ./
            | '(' 'p' 'o' 'r' 't' /. makeToken($__PORT); ./
            | '(' 's' 't' 'e' 'p' /. makeToken($__STEP); ./
            | '(' 't' 'i' 'm' 'e' /. makeToken($__TIME); ./
            | '(' 't' 'r' 'u' 'e' /. makeToken($__TRUE); ./
            | '(' 'u' 'n' 'i' 't' /. makeToken($__UNIT); ./
            | '(' 'v' 'o' 'l' 't' /. makeToken($__VOLT); ./
            | '(' 'w' 'a' 't' 't' /. makeToken($__WATT); ./
            | '(' 'w' 'e' 'a' 'k' /. makeToken($__WEAK); ./
            | '(' 'y' 'e' 'a' 'r' /. makeToken($__YEAR); ./
            | '(' 'a' 'n' 'd' /. makeToken($__AND); ./
            | '(' 'a' 'r' 'c' /. makeToken($__ARC); ./
            | '(' 'd' 'o' 't' /. makeToken($__DOT); ./
            | '(' 'm' 'n' 'm' /. makeToken($__MNM); ./
            | '(' 'n' 'o' 't' /. makeToken($__NOT); ./
            | '(' 'o' 'h' 'm' /. makeToken($__OHM); ./
            | '(' 'x' 'o' 'r' /. makeToken($__XOR); ./
            | '>' '>' '>' '=' /. makeToken($_URSHIFTEQ); ./
            | '!' '=' '=' /. makeToken($_NOTEQEQ); ./
            | '(' 'o' 'r' /. makeToken($__OR); ./
            | '(' 'p' 't' /. makeToken($__PT); ./
            | '*' '*' '=' /. makeToken($_STARSTAREQ); ./
            | '-' '>' '*' /. makeToken($_ARROWSTAR); ./
            | '.' '.' '.' /. makeToken($_ELLIPSIS); ./
            | '/' '/' '=' /. makeToken($_SLASHSLASHEQ); ./
            | '<' '<' '=' /. makeToken($_LSHIFTEQ); ./
            | '=' '=' '=' /. makeToken($_EQEQEQ); ./
            | '>' '>' '=' /. makeToken($_RSHIFTEQ); ./
            | '>' '>' '>' /. makeToken($_URSHIFT); ./
            | '?' '?' '=' /. makeToken($_QUESTQUESTEQ); ./
            | '!' '=' /. makeToken($_NOTEQ); ./
            | '%' '=' /. makeToken($_PERCENTEQ); ./
            | '&' '&' /. makeToken($_ANDAND); ./
            | '&' '=' /. makeToken($_AMPEQ); ./
            | '&' '^' /. makeToken($_BITCLEAR); ./
            | '(' 'e' /. makeToken($__E); ./
            | '*' '*' /. makeToken($_STARSTAR); ./
            | '*' '=' /. makeToken($_STAREQ); ./
            | '+' '+' /. makeToken($_PLUSPLUS); ./
            | '+' '=' /. makeToken($_PLUSEQ); ./
            | '-' '-' /. makeToken($_MINUSMINUS); ./
            | '-' '=' /. makeToken($_MINUSEQ); ./
            | '-' '>' /. makeToken($_ARROW); ./
            | '.' '*' /. makeToken($_DOTSTAR); ./
            | '.' '.' /. makeToken($_DOTDOT); ./
            | '/' '/' /. makeToken($_SLASHSLASH); ./
            | '/' '=' /. makeToken($_SLASHEQ); ./
            | ':' ':' /. makeToken($_COLONCOLON); ./
            | ':' '=' /. makeToken($_COLONEQ); ./
            | '<' '-' /. makeToken($_RECEIVE); ./
            | '<' '<' /. makeToken($_LSHIFT); ./
            | '<' '=' /. makeToken($_LTEQ); ./
            | '<' '>' /. makeToken($_LTGT); ./
            | '=' '=' /. makeToken($_EQEQ); ./
            | '=' '>' /. makeToken($_FATARROW); ./
            | '>' '=' /. makeToken($_GTEQ); ./
            | '>' '>' /. makeToken($_RSHIFT); ./
            | '?' '.' /. makeToken($_QUESTDOT); ./
            | '?' '?' /. makeToken($_QUESTQUEST); ./
            | '@' '=' /. makeToken($_ATEQ); ./
            | '^' '=' /. makeToken($_CARETEQ); ./
            | '|' '=' /. makeToken($_PIPEEQ); ./
            | '|' '|' /. makeToken($_OROR); ./
            | '!' /. makeToken($_BANG); ./
            | '"' /. makeToken($_DQUOTE); ./
            | '#' /. makeToken($_HASH); ./
            | '%' /. makeToken($_PERCENT); ./
            | '&' /. makeToken($_AMP); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '*' /. makeToken($_STAR); ./
            | '+' /. makeToken($_PLUS); ./
            | ',' /. makeToken($_COMMA); ./
            | '-' /. makeToken($_MINUS); ./
            | '.' /. makeToken($_DOT); ./
            | '/' /. makeToken($_SLASH); ./
            | ':' /. makeToken($_COLON); ./
            | ';' /. makeToken($_SEMI); ./
            | '<' /. makeToken($_LT); ./
            | '=' /. makeToken($_EQ); ./
            | '>' /. makeToken($_GT); ./
            | '?' /. makeToken($_QUESTION); ./
            | '@' /. makeToken($_AT); ./
            | '[' /. makeToken($_LBRACKET); ./
            | '\' /. makeToken($_BACKSLASH); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '^' /. makeToken($_CARET); ./
            | '`' /. makeToken($_BACKTICK); ./
            | '{' /. makeToken($_LBRACE); ./
            | '|' /. makeToken($_PIPE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '~' /. makeToken($_TILDE); ./

    identifier -> Letter
                | identifier Letter
                | identifier Digit
                | identifier '-' Letter
                | identifier '-' Digit

    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _
            | AfterASCII
            | DollarSign

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    number ::= Digit
             | number Digit
             | number '_' Digit
             | number '.' Digit
             | number '.' Digits
             | '.' Digits

    Digits ::= Digit
             | Digits Digit

    string ::= '"' SLBody '"'
             | SingleQuote SLBodySQ SingleQuote

    SLBody -> $empty
            | SLBody NotDQ

    SLBodySQ -> $empty
              | SLBodySQ NotSQ

    NotDQ -> Letter | Digit | Space | HT | SingleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    NotSQ -> Letter | Digit | Space | HT | DoubleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    Escape ::= BackSlash EscapeChar
    EscapeChar -> DoubleQuote | SingleQuote | BackSlash | '/' | n | r | t | b | f

    LineComment ::= '/' '/' LineCommentBody
    HashComment ::= Sharp HashCommentBody
    HashCommentBody -> $empty
                     | HashCommentBody NotNL
    LineCommentBody -> $empty
                     | LineCommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | SpecialNotNL
    SpecialNotNL -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | DoubleQuote | SingleQuote | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash

    white -> WSChar
           | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
