-- AUTO-GENERATED from antlr/grammars-v4 edif300 by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack,ebnf
%Options fp=Edif300Parser
%options package=lpg.grammars.edif300
%options template=btParserTemplateF.gi
%options import_terminals=Edif300Lexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    goal
%End

%Rules
    goal ::= edif

    absolute ::= _ABSOLUTE integerExpression RPAREN

    acLoad ::= _ACLOAD capacitanceValue RPAREN

    acLoadDisplay ::= _ACLOADDISPLAY grp_1 RPAREN

    acLoadFactorCapacitance ::= capacitanceValue

    acLoadFactorTime ::= timeValue

    addDisplay ::= _ADDDISPLAY list_2 RPAREN

    ampere ::= _AMPERE unitExponent RPAREN

    and_ ::= _AND list_3 RPAREN

    angleValue ::= numberValue

    annotate ::= _ANNOTATE stringValue list_4 RPAREN

    approvedDate ::= _APPROVEDDATE date RPAREN

    approvedDateDisplay ::= _APPROVEDDATEDISPLAY grp_5 RPAREN

    arc ::= _ARC startPoint throughPoint endPoint RPAREN

    ascii ::= _ASCII RPAREN

    associatedInterconnectNameDisplay ::= _ASSOCIATEDINTERCONNECTNAMEDISPLAY grp_6 RPAREN

    attachmentPoint ::= pointValue

    author ::= _AUTHOR stringToken RPAREN

    backgroundColor ::= _BACKGROUNDCOLOR color RPAREN

    baselineJustify ::= _BASELINEJUSTIFY RPAREN

    becomes ::= _BECOMES grp_7 RPAREN

    behaviorView ::= _BEHAVIORVIEW viewNameDef list_9 RPAREN

    bidirectional ::= _BIDIRECTIONAL RPAREN

    bidirectionalPort ::= _BIDIRECTIONALPORT opt_10 RPAREN

    bidirectionalPortAttributes ::= _BIDIRECTIONALPORTATTRIBUTES list_12 RPAREN

    bitOrder ::= _BITORDER grp_13 RPAREN

    blue ::= scaledInteger

    boldStyle ::= _BOLDSTYLE RPAREN

    eboolean ::= _BOOLEAN booleanExpression RPAREN

    booleanConstant ::= _BOOLEANCONSTANT constantNameDef booleanToken RPAREN

    booleanConstantRef ::= _BOOLEANCONSTANTREF constantNameRef RPAREN

    booleanExpression ::= grp_14

    booleanMap ::= _BOOLEANMAP booleanValue RPAREN

    booleanParameter ::= _BOOLEANPARAMETER parameterNameDef list_16 RPAREN

    booleanParameterAssign ::= _BOOLEANPARAMETERASSIGN parameterNameRef booleanExpression RPAREN

    booleanParameterRef ::= _BOOLEANPARAMETERREF parameterNameRef RPAREN

    booleanToken ::= grp_17

    booleanValue ::= booleanToken

    borderPattern ::= _BORDERPATTERN pixelPattern RPAREN

    borderPatternVisible ::= _BORDERPATTERNVISIBLE booleanValue RPAREN

    borderWidth ::= _BORDERWIDTH grp_18 RPAREN

    bottomJustify ::= _BOTTOMJUSTIFY RPAREN

    calculated ::= _CALCULATED RPAREN

    candela ::= _CANDELA unitExponent RPAREN

    capacitanceValue ::= miNoMaxValue

    caplineJustify ::= _CAPLINEJUSTIFY RPAREN

    cell ::= _CELL libraryObjectNameDef cellHeader list_20 RPAREN

    cellHeader ::= _CELLHEADER list_22 RPAREN

    cellNameDisplay ::= _CELLNAMEDISPLAY list_24 RPAREN

    cellPropertyDisplay ::= _CELLPROPERTYDISPLAY propertyNameRef list_26 RPAREN

    cellPropertyDisplayOverride ::= _CELLPROPERTYDISPLAYOVERRIDE propertyNameRef grp_27 opt_28 RPAREN

    cellPropertyOverride ::= _CELLPROPERTYOVERRIDE propertyNameRef grp_29 list_31 RPAREN

    cellRef ::= _CELLREF libraryObjectNameRef opt_32 RPAREN

    celsius ::= _CELSIUS unitExponent RPAREN

    centerJustify ::= _CENTERJUSTIFY RPAREN

    characterEncoding ::= _CHARACTERENCODING grp_33 RPAREN

    checkDate ::= _CHECKDATE date RPAREN

    checkDateDisplay ::= _CHECKDATEDISPLAY grp_34 RPAREN

    circle ::= _CIRCLE pt1 pt2 RPAREN

    cluster ::= _CLUSTER clusterNameDef einterface clusterHeader list_36 RPAREN

    clusterConfiguration ::= _CLUSTERCONFIGURATION clusterConfigurationNameDef grp_37 list_39 RPAREN

    clusterConfigurationNameCaseSensitive ::= _CLUSTERCONFIGURATIONNAMECASESENSITIVE booleanToken RPAREN

    clusterConfigurationNameDef ::= nameDef

    clusterConfigurationNameRef ::= nameRef

    clusterConfigurationRef ::= _CLUSTERCONFIGURATIONREF clusterConfigurationNameRef RPAREN

    clusterHeader ::= _CLUSTERHEADER list_41 RPAREN

    clusterNameCaseSensitive ::= _CLUSTERNAMECASESENSITIVE booleanToken RPAREN

    clusterNameDef ::= nameDef

    clusterNameRef ::= nameRef

    clusterPropertyDisplay ::= _CLUSTERPROPERTYDISPLAY propertyNameRef list_43 RPAREN

    clusterPropertyDisplayOverride ::= _CLUSTERPROPERTYDISPLAYOVERRIDE propertyNameRef grp_44 opt_45 RPAREN

    clusterPropertyOverride ::= _CLUSTERPROPERTYOVERRIDE propertyNameRef grp_46 list_48 RPAREN

    clusterRef ::= _CLUSTERREF clusterNameRef opt_49 RPAREN

    color ::= _COLOR red green blue RPAREN

    comment ::= _COMMENT list_50 RPAREN

    commentGraphics ::= _COMMENTGRAPHICS list_52 RPAREN

    companyName ::= _COMPANYNAME stringToken RPAREN

    companyNameDisplay ::= _COMPANYNAMEDISPLAY grp_53 RPAREN

    complementedName ::= _COMPLEMENTEDNAME list_55 RPAREN

    complementedNamePart ::= _COMPLEMENTEDNAMEPART list_57 RPAREN

    complexGeometry ::= _COMPLEXGEOMETRY geometryMacroRef transform RPAREN

    complexName ::= _COMPLEXNAME list_59 RPAREN

    compound ::= _COMPOUND list_60 RPAREN

    condition ::= _CONDITION booleanExpression RPAREN

    conditionDisplay ::= _CONDITIONDISPLAY grp_61 RPAREN

    connectedSignalIndexGenerator ::= _CONNECTEDSIGNALINDEXGENERATOR integerExpression RPAREN

    connectedSignalIndexGeneratorDisplay ::= _CONNECTEDSIGNALINDEXGENERATORDISPLAY grp_62 RPAREN

    connectivityBus ::= _CONNECTIVITYBUS interconnectNameDef signalGroupRef interconnectHeader connectivityBusJoined list_64 RPAREN

    connectivityBusJoined ::= _CONNECTIVITYBUSJOINED portJoined list_65 RPAREN

    connectivityBusSlice ::= _CONNECTIVITYBUSSLICE interconnectNameDef signalGroupRef interconnectHeader connectivityBusJoined list_67 RPAREN

    connectivityFrameStructure ::= _CONNECTIVITYFRAMESTRUCTURE connectivityFrameStructureNameDef frameRef list_69 RPAREN

    connectivityFrameStructureNameDef ::= nameDef

    connectivityNet ::= _CONNECTIVITYNET interconnectNameDef signalRef interconnectHeader connectivityNetJoined list_71 RPAREN

    connectivityNetJoined ::= _CONNECTIVITYNETJOINED grp_72 list_73 RPAREN

    connectivityRipper ::= _CONNECTIVITYRIPPER connectivityRipperNameDef RPAREN

    connectivityRipperNameDef ::= nameDef

    connectivityRipperNameRef ::= nameRef

    connectivityRipperRef ::= _CONNECTIVITYRIPPERREF connectivityRipperNameRef RPAREN

    connectivityStructure ::= _CONNECTIVITYSTRUCTURE list_75 RPAREN

    connectivitySubBus ::= _CONNECTIVITYSUBBUS interconnectNameDef interconnectHeader connectivityBusJoined list_77 RPAREN

    connectivitySubNet ::= _CONNECTIVITYSUBNET interconnectNameDef interconnectHeader connectivityNetJoined list_79 RPAREN

    connectivityTagGenerator ::= _CONNECTIVITYTAGGENERATOR stringExpression RPAREN

    connectivityTagGeneratorDisplay ::= _CONNECTIVITYTAGGENERATORDISPLAY list_80 RPAREN

    connectivityUnits ::= _CONNECTIVITYUNITS opt_82 RPAREN

    connectivityView ::= _CONNECTIVITYVIEW viewNameDef connectivityViewHeader logicalConnectivity connectivityStructure list_84 RPAREN

    connectivityViewHeader ::= _CONNECTIVITYVIEWHEADER connectivityUnits list_86 RPAREN

    constantNameDef ::= nameDef

    constantNameRef ::= nameRef

    constantValues ::= _CONSTANTVALUES list_88 RPAREN

    contract ::= _CONTRACT stringToken RPAREN

    contractDisplay ::= _CONTRACTDISPLAY grp_89 RPAREN

    copyright ::= _COPYRIGHT year list_90 RPAREN

    copyrightDisplay ::= _COPYRIGHTDISPLAY grp_91 RPAREN

    cornerType ::= _CORNERTYPE grp_92 RPAREN

    coulomb ::= _COULOMB unitExponent RPAREN

    criticality ::= _CRITICALITY integerValue RPAREN

    criticalityDisplay ::= _CRITICALITYDISPLAY list_93 RPAREN

    currentMap ::= _CURRENTMAP currentValue RPAREN

    currentValue ::= miNoMaxValue

    curve ::= _CURVE list_95 RPAREN

    dataOrigin ::= _DATAORIGIN stringToken opt_96 RPAREN

    date ::= _DATE yearNumber monthNumber dayNumber RPAREN

    dayNumber ::= integerToken

    dcFanInLoad ::= _DCFANINLOAD numberValue RPAREN

    dcFanInLoadDisplay ::= _DCFANINLOADDISPLAY grp_97 RPAREN

    dcFanOutLoad ::= _DCFANOUTLOAD numberValue RPAREN

    dcFanOutLoadDisplay ::= _DCFANOUTLOADDISPLAY grp_98 RPAREN

    dcMaxFanIn ::= _DCMAXFANIN numberValue RPAREN

    dcMaxFanInDisplay ::= _DCMAXFANINDISPLAY grp_99 RPAREN

    dcMaxFanOut ::= _DCMAXFANOUT numberValue RPAREN

    dcMaxFanOutDisplay ::= _DCMAXFANOUTDISPLAY grp_100 RPAREN

    decimalToString ::= _DECIMALTOSTRING integerExpression opt_101 RPAREN

    defaultClusterConfiguration ::= _DEFAULTCLUSTERCONFIGURATION clusterConfigurationNameRef RPAREN

    defaultConnection ::= _DEFAULTCONNECTION globalPortRef RPAREN

    degree ::= _DEGREE unitExponent RPAREN

    delay ::= _DELAY timeDelay RPAREN

    denominator ::= integerValue

    derivation ::= grp_102

    derivedFrom ::= _DERIVEDFROM viewRef opt_103 RPAREN

    design ::= _DESIGN designNameDef cellRef designHeader list_105 RPAREN

    designator ::= _DESIGNATOR stringValue RPAREN

    designatorDisplay ::= _DESIGNATORDISPLAY grp_106 RPAREN

    designHeader ::= _DESIGNHEADER designUnits list_108 RPAREN

    designHierarchy ::= _DESIGNHIERARCHY designHierarchyNameDef clusterRef clusterConfigurationRef designHierarchyHeader opt_109 RPAREN

    designHierarchyHeader ::= _DESIGNHIERARCHYHEADER list_111 RPAREN

    designHierarchyNameCaseSensitive ::= _DESIGNHIERARCHYNAMECASESENSITIVE booleanToken RPAREN

    designHierarchyNameDef ::= nameDef

    designNameCaseSensitive ::= _DESIGNNAMECASESENSITIVE booleanToken RPAREN

    designNameDef ::= nameDef

    designUnits ::= _DESIGNUNITS list_113 RPAREN

    diagram ::= _DIAGRAM diagramNameDef list_115 RPAREN

    diagramNameDef ::= nameDef

    directionalPortAttributeOverride ::= _DIRECTIONALPORTATTRIBUTEOVERRIDE grp_116 RPAREN

    display ::= _DISPLAY list_118 transform RPAREN

    displayAttributes ::= _DISPLAYATTRIBUTES list_120 RPAREN

    displayName ::= _DISPLAYNAME stringToken RPAREN

    displayNameOverride ::= _DISPLAYNAMEOVERRIDE stringToken grp_121 RPAREN

    distanceValue ::= integerValue

    dividend ::= integerExpression

    divisor ::= integerExpression

    documentation ::= _DOCUMENTATION documentationNameDef documentationHeader list_122 RPAREN

    documentationHeader ::= _DOCUMENTATIONHEADER documentationUnits list_124 RPAREN

    documentationNameCaseSensitive ::= _DOCUMENTATIONNAMECASESENSITIVE booleanToken RPAREN

    documentationNameDef ::= nameDef

    documentationUnits ::= _DOCUMENTATIONUNITS list_126 RPAREN

    dominates ::= _DOMINATES list_127 RPAREN

    dot ::= _DOT pointValue RPAREN

    drawingDescription ::= _DRAWINGDESCRIPTION stringToken RPAREN

    drawingDescriptionDisplay ::= _DRAWINGDESCRIPTIONDISPLAY grp_128 RPAREN

    drawingIdentification ::= _DRAWINGIDENTIFICATION stringToken RPAREN

    drawingIdentificationDisplay ::= _DRAWINGIDENTIFICATIONDISPLAY grp_129 RPAREN

    drawingSize ::= _DRAWINGSIZE stringToken RPAREN

    drawingSizeDisplay ::= _DRAWINGSIZEDISPLAY grp_130 RPAREN

    duration ::= _DURATION timeValue RPAREN

    e ::= _E mantissa exponent RPAREN

    edif ::= _EDIF edifNameDef edifVersion edifHeader list_132 RPAREN

    edifHeader ::= _EDIFHEADER edifLevel keywordMap unitDefinitions fontDefinitions physicalDefaults list_134 RPAREN

    edifLevel ::= _EDIFLEVEL edifLevelValue RPAREN

    edifLevelValue ::= integerToken

    edifNameDef ::= nameDef

    edifVersion ::= _EDIFVERSION mark issue subIssue RPAREN

    endPoint ::= pointValue

    endType ::= _ENDTYPE grp_135 RPAREN

    engineeringDate ::= _ENGINEERINGDATE date RPAREN

    engineeringDateDisplay ::= _ENGINEERINGDATEDISPLAY grp_136 RPAREN

    event ::= _EVENT grp_137 list_139 RPAREN

    exponent ::= integerToken

    extend ::= _EXTEND RPAREN

    extendForFrameMemberDef ::= forFrameMemberRef

    extendFrameDef ::= frameNameRef

    extendInstanceDef ::= instanceNameRef

    extendInstanceMemberDef ::= instanceMemberRef

    extendInterconnectDef ::= interconnectNameRef

    extendPageDef ::= pageNameRef

    extendPortDef ::= portNameRef

    extendPortMemberDef ::= portMemberRef

    extendSignalDef ::= signalNameRef

    extendSignalGroupDef ::= signalGroupNameRef

    extendSignalMemberDef ::= signalMemberRef

    external_ ::= _EXTERNAL libraryNameDef libraryHeader list_141 RPAREN

    fahrenheit ::= _FAHRENHEIT unitExponent RPAREN

    efalse ::= _FALSE RPAREN

    farad ::= _FARAD unitExponent RPAREN

    figure ::= _FIGURE grp_142 list_144 RPAREN

    figureGroup ::= _FIGUREGROUP figureGroupNameDef list_146 RPAREN

    figureGroupNameCaseSensitive ::= _FIGUREGROUPNAMECASESENSITIVE booleanToken RPAREN

    figureGroupNameDef ::= nameDef

    figureGroupNameRef ::= nameRef

    figureGroupOverride ::= _FIGUREGROUPOVERRIDE figureGroupNameRef list_148 RPAREN

    fillPattern ::= _FILLPATTERN pixelPattern RPAREN

    fillPatternVisible ::= _FILLPATTERNVISIBLE booleanValue RPAREN

    firstIntegerExpression ::= integerExpression

    firstStringExpression ::= stringExpression

    fixed ::= _FIXED RPAREN

    font ::= _FONT fontNameDef typeface fontProportions list_150 RPAREN

    fontCapitalHeight ::= _FONTCAPITALHEIGHT lengthValue RPAREN

    fontDefinitions ::= _FONTDEFINITIONS opt_151 RPAREN

    fontDescent ::= _FONTDESCENT lengthValue RPAREN

    fontFamily ::= stringToken

    fontHeight ::= _FONTHEIGHT lengthValue RPAREN

    fontNameDef ::= nameDef

    fontNameRef ::= nameRef

    fontProportions ::= _FONTPROPORTIONS fontHeight fontDescent fontCapitalHeight fontWidth RPAREN

    fontRef ::= _FONTREF fontNameRef RPAREN

    fonts ::= _FONTS setDistance list_152 RPAREN

    fontWidth ::= _FONTWIDTH lengthValue RPAREN

    forbiddenEvent ::= _FORBIDDENEVENT timeInterval list_153 RPAREN

    forFrame ::= _FORFRAME frameNameDef repetitionCount forFrameIndex logicalConnectivity list_155 RPAREN

    forFrameAnnotate ::= _FORFRAMEANNOTATE extendForFrameMemberDef list_157 RPAREN

    forFrameIndex ::= _FORFRAMEINDEX indexNameDef list_159 RPAREN

    forFrameIndexDisplay ::= _FORFRAMEINDEXDISPLAY list_161 RPAREN

    forFrameIndexNameCaseSensitive ::= _FORFRAMEINDEXNAMECASESENSITIVE booleanToken RPAREN

    forFrameIndexRef ::= _FORFRAMEINDEXREF indexNameRef RPAREN

    forFrameMemberRef ::= _FORFRAMEMEMBERREF frameNameRef indexValue RPAREN

    forFrameRef ::= _FORFRAMEREF frameNameRef RPAREN

    frameConfiguration ::= _FRAMECONFIGURATION frameNameRef list_163 RPAREN

    frameNameCaseSensitive ::= _FRAMENAMECASESENSITIVE booleanToken RPAREN

    frameNameDef ::= nameDef

    frameNameRef ::= nameRef

    frameRef ::= _FRAMEREF frameNameRef RPAREN

    frequencyValue ::= miNoMaxValue

    fromBottom ::= _FROMBOTTOM RPAREN

    fromInteger ::= integerToken

    fromLeft ::= _FROMLEFT RPAREN

    fromRight ::= _FROMRIGHT RPAREN

    fromTop ::= _FROMTOP RPAREN

    generated ::= _GENERATED RPAREN

    geometryMacro ::= _GEOMETRYMACRO libraryObjectNameDef geometryMacroHeader list_165 RPAREN

    geometryMacroHeader ::= _GEOMETRYMACROHEADER geometryMacroUnits list_167 RPAREN

    geometryMacroRef ::= _GEOMETRYMACROREF libraryObjectNameRef opt_168 RPAREN

    geometryMacroUnits ::= _GEOMETRYMACROUNITS opt_169 RPAREN

    globalPort ::= _GLOBALPORT globalPortNameDef list_171 RPAREN

    globalPortBundle ::= _GLOBALPORTBUNDLE globalPortNameDef globalPortList list_173 RPAREN

    globalPortDefinitions ::= _GLOBALPORTDEFINITIONS list_175 RPAREN

    globalPortList ::= _GLOBALPORTLIST list_176 RPAREN

    globalPortNameCaseSensitive ::= _GLOBALPORTNAMECASESENSITIVE booleanToken RPAREN

    globalPortNameDef ::= nameDef

    globalPortNameDisplay ::= _GLOBALPORTNAMEDISPLAY list_178 RPAREN

    globalPortNameRef ::= nameRef

    globalPortPropertyDisplay ::= _GLOBALPORTPROPERTYDISPLAY propertyNameRef list_180 RPAREN

    globalPortRef ::= _GLOBALPORTREF globalPortNameRef RPAREN

    globalPortScope ::= _GLOBALPORTSCOPE globalPortNameRef RPAREN

    green ::= scaledInteger

    henry ::= _HENRY unitExponent RPAREN

    hertz ::= _HERTZ unitExponent RPAREN

    horizontalJustification ::= _HORIZONTALJUSTIFICATION grp_181 RPAREN

    hotspot ::= _HOTSPOT pointValue list_183 RPAREN

    hotspotConnectDirection ::= _HOTSPOTCONNECTDIRECTION list_185 RPAREN

    hotspotGrid ::= _HOTSPOTGRID lengthValue RPAREN

    hotspotNameCaseSensitive ::= _HOTSPOTNAMECASESENSITIVE booleanToken RPAREN

    hotspotNameDef ::= nameDef

    hotspotNameDisplay ::= _HOTSPOTNAMEDISPLAY list_187 RPAREN

    hotspotNameRef ::= nameRef

    hourNumber ::= integerToken

    ieeeDesignation ::= stringToken

    ieeeSection ::= _IEEESECTION list_188 RPAREN

    ieeeStandard ::= _IEEESTANDARD ieeeDesignation year list_190 RPAREN

    ifFrame ::= _IFFRAME frameNameDef condition logicalConnectivity list_192 RPAREN

    ifFrameAnnotate ::= _IFFRAMEANNOTATE extendFrameDef list_194 RPAREN

    ifFrameRef ::= _IFFRAMEREF frameNameRef RPAREN

    ifFrameSet ::= _IFFRAMESET list_195 RPAREN

    ignore ::= _IGNORE RPAREN

    implementationNameCaseSensitive ::= _IMPLEMENTATIONNAMECASESENSITIVE booleanToken RPAREN

    implementationNameDef ::= nameDef

    implementationNameDisplay ::= _IMPLEMENTATIONNAMEDISPLAY list_197 RPAREN

    implementationNameRef ::= nameRef

    indexEndDisplay ::= _INDEXENDDISPLAY grp_198 RPAREN

    indexNameDef ::= nameDef

    indexNameDisplay ::= _INDEXNAMEDISPLAY grp_199 RPAREN

    indexNameRef ::= nameRef

    indexStart ::= _INDEXSTART integerExpression RPAREN

    indexStartDisplay ::= _INDEXSTARTDISPLAY grp_200 RPAREN

    indexStep ::= _INDEXSTEP integerExpression RPAREN

    indexStepDisplay ::= _INDEXSTEPDISPLAY grp_201 RPAREN

    indexValue ::= _INDEXVALUE integerToken RPAREN

    input_ ::= _INPUT RPAREN

    inputPort ::= _INPUTPORT opt_202 RPAREN

    inputPortAttributes ::= _INPUTPORTATTRIBUTES list_204 RPAREN

    instance ::= _INSTANCE instanceNameDef clusterRef list_206 RPAREN

    instanceConfiguration ::= _INSTANCECONFIGURATION instanceNameRef clusterConfigurationRef RPAREN

    instanceIndexValue ::= _INSTANCEINDEXVALUE RPAREN

    instanceMemberRef ::= _INSTANCEMEMBERREF instanceNameRef indexValue RPAREN

    instanceNameCaseSensitive ::= _INSTANCENAMECASESENSITIVE booleanToken RPAREN

    instanceNameDef ::= nameDef

    instanceNameDisplay ::= _INSTANCENAMEDISPLAY list_208 RPAREN

    instanceNameGenerator ::= _INSTANCENAMEGENERATOR stringExpression RPAREN

    instanceNameGeneratorDisplay ::= _INSTANCENAMEGENERATORDISPLAY grp_209 RPAREN

    instanceNameRef ::= nameRef

    instancePortAttributeDisplay ::= _INSTANCEPORTATTRIBUTEDISPLAY symbolPortImplementationNameRef portRef list_211 RPAREN

    instancePortAttributes ::= _INSTANCEPORTATTRIBUTES extendPortDef list_213 RPAREN

    instancePropertyDisplay ::= _INSTANCEPROPERTYDISPLAY propertyNameRef list_214 opt_215 list_216 RPAREN

    instancePropertyOverride ::= _INSTANCEPROPERTYOVERRIDE propertyNameRef grp_217 list_219 RPAREN

    instanceRef ::= _INSTANCEREF instanceNameRef RPAREN

    instanceWidth ::= _INSTANCEWIDTH integerExpression RPAREN

    instanceWidthDisplay ::= _INSTANCEWIDTHDISPLAY grp_220 RPAREN

    integer ::= _INTEGER integerExpression RPAREN

    integerConstant ::= _INTEGERCONSTANT constantNameDef integerToken RPAREN

    integerConstantRef ::= _INTEGERCONSTANTREF constantNameRef RPAREN

    integerEqual ::= _INTEGEREQUAL firstIntegerExpression secondIntegerExpression RPAREN

    integerExpression ::= grp_221

    integerParameter ::= _INTEGERPARAMETER parameterNameDef list_223 RPAREN

    integerParameterAssign ::= _INTEGERPARAMETERASSIGN parameterNameRef integerExpression RPAREN

    integerParameterRef ::= _INTEGERPARAMETERREF parameterNameRef RPAREN

    integerProduct ::= _INTEGERPRODUCT list_224 RPAREN

    integerQuotient ::= _INTEGERQUOTIENT dividend divisor RPAREN

    integerRemainder ::= _INTEGERREMAINDER dividend divisor RPAREN

    integerSubtract ::= _INTEGERSUBTRACT minuend subtrahend RPAREN

    integerSum ::= _INTEGERSUM list_225 RPAREN

    integerValue ::= integerToken

    interconnectAnnotate ::= _INTERCONNECTANNOTATE extendInterconnectDef list_227 RPAREN

    interconnectAttachedText ::= _INTERCONNECTATTACHEDTEXT attachmentPoint list_229 RPAREN

    interconnectDelay ::= _INTERCONNECTDELAY interconnectDelayNameDef derivation delay list_231 RPAREN

    interconnectDelayDisplay ::= _INTERCONNECTDELAYDISPLAY interconnectDelayNameRef list_232 RPAREN

    interconnectDelayNameDef ::= nameDef

    interconnectDelayNameRef ::= nameRef

    interconnectHeader ::= _INTERCONNECTHEADER list_234 RPAREN

    interconnectNameCaseSensitive ::= _INTERCONNECTNAMECASESENSITIVE booleanToken RPAREN

    interconnectNameDef ::= nameDef

    interconnectNameDisplay ::= _INTERCONNECTNAMEDISPLAY list_236 RPAREN

    interconnectNameRef ::= nameRef

    interconnectPropertyDisplay ::= _INTERCONNECTPROPERTYDISPLAY propertyNameRef list_237 opt_238 list_239 RPAREN

    interconnectRef ::= _INTERCONNECTREF interconnectNameRef opt_240 RPAREN

    interconnectSet ::= _INTERCONNECTSET list_241 RPAREN

    einterface ::= _INTERFACE interfaceUnits list_243 RPAREN

    interfaceJoined ::= _INTERFACEJOINED list_244 RPAREN

    interfaceUnits ::= _INTERFACEUNITS list_246 RPAREN

    iso8859 ::= _ISO8859 iso8859Part RPAREN

    iso8859Part ::= integerToken

    isolated ::= _ISOLATED RPAREN

    issue ::= integerToken

    italicStyle ::= _ITALICSTYLE RPAREN

    jisx0201 ::= _JISX0201 RPAREN

    jisx0208 ::= _JISX0208 RPAREN

    joinedAsSignal ::= _JOINEDASSIGNAL RPAREN

    joule ::= _JOULE unitExponent RPAREN

    k0KeywordLevel ::= _K0KEYWORDLEVEL RPAREN

    k1KeywordAlias ::= _K1KEYWORDALIAS k1KeywordNameDef k1KeywordNameRef RPAREN

    k1KeywordLevel ::= _K1KEYWORDLEVEL list_247 RPAREN

    k1KeywordNameDef ::= IDENTIFIER

    k1KeywordNameRef ::= IDENTIFIER

    k2Actual ::= _K2ACTUAL k2FormalNameRef RPAREN

    k2Build ::= _K2BUILD k1KeywordNameRef list_249 RPAREN

    k2Formal ::= _K2FORMAL k2FormalNameDef grp_250 RPAREN

    k2FormalNameDef ::= IDENTIFIER

    k2FormalNameRef ::= IDENTIFIER

    k2Generate ::= _K2GENERATE list_252 RPAREN

    k2KeywordDefine ::= _K2KEYWORDDEFINE k1KeywordNameDef k2KeywordParameters k2Generate RPAREN

    k2KeywordLevel ::= _K2KEYWORDLEVEL list_254 RPAREN

    k2KeywordParameters ::= _K2KEYWORDPARAMETERS list_255 RPAREN

    k2Literal ::= _K2LITERAL list_257 RPAREN

    k2Optional ::= _K2OPTIONAL grp_258 RPAREN

    k2Required ::= _K2REQUIRED RPAREN

    k3Build ::= _K3BUILD k1KeywordNameRef list_260 RPAREN

    k3Collector ::= _K3COLLECTOR RPAREN

    k3ForEach ::= _K3FOREACH grp_261 list_263 RPAREN

    k3Formal ::= _K3FORMAL k2FormalNameDef grp_264 RPAREN

    k3FormalList ::= _K3FORMALLIST list_265 RPAREN

    k3Generate ::= _K3GENERATE list_267 RPAREN

    k3KeywordDefine ::= _K3KEYWORDDEFINE k1KeywordNameDef k3KeywordParameters k3Generate RPAREN

    k3KeywordLevel ::= _K3KEYWORDLEVEL list_269 RPAREN

    k3KeywordParameters ::= _K3KEYWORDPARAMETERS list_270 RPAREN

    kelvin ::= _KELVIN unitExponent RPAREN

    keywordMap ::= _KEYWORDMAP grp_271 list_272 RPAREN

    kilogram ::= _KILOGRAM unitExponent RPAREN

    leaf ::= _LEAF RPAREN

    leafOccurrenceAnnotate ::= _LEAFOCCURRENCEANNOTATE grp_273 list_275 RPAREN

    leftJustify ::= _LEFTJUSTIFY RPAREN

    lengthValue ::= distanceValue

    lessThan ::= _LESSTHAN list_276 RPAREN

    lessThanOrEqual ::= _LESSTHANOREQUAL list_277 RPAREN

    library_ ::= _LIBRARY libraryNameDef libraryHeader list_279 RPAREN

    libraryHeader ::= _LIBRARYHEADER edifLevel nameCaseSensitivity technology list_281 RPAREN

    libraryNameCaseSensitive ::= _LIBRARYNAMECASESENSITIVE booleanToken RPAREN

    libraryNameDef ::= nameDef

    libraryNameRef ::= nameRef

    libraryObjectNameCaseSensitive ::= _LIBRARYOBJECTNAMECASESENSITIVE booleanToken RPAREN

    libraryObjectNameDef ::= nameDef

    libraryObjectNameRef ::= nameRef

    libraryRef ::= _LIBRARYREF libraryNameRef RPAREN

    loadDelay ::= _LOADDELAY acLoadFactorTime acLoadFactorCapacitance RPAREN

    localPortGroup ::= _LOCALPORTGROUP localPortGroupNameDef portList list_283 RPAREN

    localPortGroupNameCaseSensitive ::= _LOCALPORTGROUPNAMECASESENSITIVE booleanToken RPAREN

    localPortGroupNameDef ::= nameDef

    localPortGroupNameRef ::= nameRef

    localPortGroupRef ::= _LOCALPORTGROUPREF localPortGroupNameRef RPAREN

    logicalConnectivity ::= _LOGICALCONNECTIVITY list_285 RPAREN

    logicDefinitions ::= _LOGICDEFINITIONS setVoltage setCurrent list_287 RPAREN

    logicList ::= _LOGICLIST list_289 RPAREN

    logicMapInput ::= _LOGICMAPINPUT list_290 RPAREN

    logicMapOutput ::= _LOGICMAPOUTPUT list_291 RPAREN

    logicModelUnits ::= _LOGICMODELUNITS list_293 RPAREN

    logicModelView ::= _LOGICMODELVIEW viewNameDef list_295 RPAREN

    logicNameDef ::= nameDef

    logicNameRef ::= nameRef

    logicOneOf ::= _LOGICONEOF list_297 RPAREN

    logicRef ::= _LOGICREF logicNameRef opt_298 RPAREN

    logicValue ::= _LOGICVALUE logicNameDef list_300 RPAREN

    lsbToMsb ::= _LSBTOMSB RPAREN

    mantissa ::= integerToken

    mark ::= integerToken

    maskLayoutUnits ::= _MASKLAYOUTUNITS list_302 RPAREN

    maskLayoutView ::= _MASKLAYOUTVIEW viewNameDef list_304 RPAREN

    measured ::= _MEASURED RPAREN

    meter ::= _METER unitExponent RPAREN

    middleJustify ::= _MIDDLEJUSTIFY RPAREN

    minimalWidth ::= _MINIMALWIDTH RPAREN

    minimumStringLength ::= _MINIMUMSTRINGLENGTH substringLength RPAREN

    miNoMax ::= _MINOMAX miNoMaxValue RPAREN

    miNoMaxValue ::= grp_305

    minuend ::= integerExpression

    minuteNumber ::= integerToken

    mixedDirection ::= _MIXEDDIRECTION RPAREN

    mnm ::= _MNM grp_306 grp_307 grp_308 RPAREN

    mole ::= _MOLE unitExponent RPAREN

    monthNumber ::= integerToken

    msbToLsb ::= _MSBTOLSB RPAREN

    mustJoin ::= _MUSTJOIN list_310 RPAREN

    nameAlias ::= _NAMEALIAS originalName list_312 RPAREN

    nameCaseSensitivity ::= _NAMECASESENSITIVITY list_314 RPAREN

    nameDef ::= IDENTIFIER

    nameDimension ::= _NAMEDIMENSION nameDimensionStructure opt_315 RPAREN

    nameDimensionStructure ::= _NAMEDIMENSIONSTRUCTURE list_317 RPAREN

    nameInformation ::= _NAMEINFORMATION primaryName list_318 RPAREN

    namePartSeparator ::= _NAMEPARTSEPARATOR stringToken RPAREN

    nameRef ::= IDENTIFIER

    nameStructure ::= _NAMESTRUCTURE grp_319 RPAREN

    narrowPort ::= _NARROWPORT RPAREN

    narrowWire ::= _NARROWWIRE RPAREN

    noHotspotGrid ::= _NOHOTSPOTGRID RPAREN

    nominalHotspotGrid ::= _NOMINALHOTSPOTGRID lengthValue RPAREN

    nonPermutable ::= _NONPERMUTABLE list_321 RPAREN

    not_ ::= _NOT booleanExpression RPAREN

    notInherited ::= _NOTINHERITED RPAREN

    number ::= _NUMBER numberExpression RPAREN

    numberExpression ::= grp_322

    numberOfBasicUnits ::= scaledInteger

    numberOfNewUnits ::= scaledInteger

    numberParameter ::= _NUMBERPARAMETER parameterNameDef list_324 RPAREN

    numberParameterAssign ::= _NUMBERPARAMETERASSIGN parameterNameRef numberExpression RPAREN

    numberParameterRef ::= _NUMBERPARAMETERREF parameterNameRef RPAREN

    numberPoint ::= _NUMBERPOINT xNumberValue yNumberValue RPAREN

    numberValue ::= scaledInteger

    numerator ::= integerValue

    occurrenceAnnotate ::= _OCCURRENCEANNOTATE grp_325 list_327 RPAREN

    occurrenceHierarchyAnnotate ::= _OCCURRENCEHIERARCHYANNOTATE list_329 RPAREN

    offsetEvent ::= _OFFSETEVENT event numberValue RPAREN

    ohm ::= _OHM unitExponent RPAREN

    openShape ::= _OPENSHAPE curve RPAREN

    or_ ::= _OR list_330 RPAREN

    origin ::= _ORIGIN pointValue RPAREN

    originalBoundingBox ::= _ORIGINALBOUNDINGBOX rectangle RPAREN

    originalDrawingDate ::= _ORIGINALDRAWINGDATE date RPAREN

    originalDrawingDateDisplay ::= _ORIGINALDRAWINGDATEDISPLAY grp_331 RPAREN

    originalName ::= stringToken

    otherwiseFrame ::= _OTHERWISEFRAME frameNameDef ifFrameSet logicalConnectivity list_333 RPAREN

    otherwiseFrameAnnotate ::= _OTHERWISEFRAMEANNOTATE extendFrameDef list_335 RPAREN

    otherwiseFrameRef ::= _OTHERWISEFRAMEREF frameNameRef RPAREN

    output ::= _OUTPUT RPAREN

    outputPort ::= _OUTPUTPORT opt_336 RPAREN

    outputPortAttributes ::= _OUTPUTPORTATTRIBUTES list_338 RPAREN

    owner ::= _OWNER stringValue RPAREN

    page ::= _PAGE pageNameDef pageHeader list_340 RPAREN

    pageAnnotate ::= _PAGEANNOTATE extendPageDef list_341 RPAREN

    pageBorder ::= _PAGEBORDER pageBorderTemplateRef transform list_343 RPAREN

    pageBorderTemplate ::= _PAGEBORDERTEMPLATE libraryObjectNameDef schematicTemplateHeader usableArea list_345 RPAREN

    pageBorderTemplateRef ::= _PAGEBORDERTEMPLATEREF libraryObjectNameRef opt_346 RPAREN

    pageCommentGraphics ::= _PAGECOMMENTGRAPHICS list_348 RPAREN

    pageHeader ::= _PAGEHEADER list_350 RPAREN

    pageIdentification ::= _PAGEIDENTIFICATION stringToken RPAREN

    pageIdentificationDisplay ::= _PAGEIDENTIFICATIONDISPLAY grp_351 RPAREN

    pageNameCaseSensitive ::= _PAGENAMECASESENSITIVE booleanToken RPAREN

    pageNameDef ::= nameDef

    pageNameRef ::= nameRef

    pagePropertyDisplay ::= _PAGEPROPERTYDISPLAY propertyNameRef list_353 RPAREN

    pageRef ::= _PAGEREF pageNameRef RPAREN

    pageSize ::= _PAGESIZE rectangle RPAREN

    pageTitle ::= _PAGETITLE stringToken RPAREN

    pageTitleBlock ::= _PAGETITLEBLOCK implementationNameDef pageTitleBlockTemplateRef transform list_355 RPAREN

    pageTitleBlockAttributeDisplay ::= _PAGETITLEBLOCKATTRIBUTEDISPLAY list_357 RPAREN

    pageTitleBlockAttributes ::= _PAGETITLEBLOCKATTRIBUTES list_359 RPAREN

    pageTitleBlockTemplate ::= _PAGETITLEBLOCKTEMPLATE libraryObjectNameDef schematicTemplateHeader list_361 RPAREN

    pageTitleBlockTemplateRef ::= _PAGETITLEBLOCKTEMPLATEREF libraryObjectNameRef opt_362 RPAREN

    pageTitleDisplay ::= _PAGETITLEDISPLAY grp_363 RPAREN

    parameterDisplay ::= _PARAMETERDISPLAY parameterNameRef grp_364 opt_365 RPAREN

    parameterNameCaseSensitive ::= _PARAMETERNAMECASESENSITIVE booleanToken RPAREN

    parameterNameDef ::= nameDef

    parameterNameDisplay ::= _PARAMETERNAMEDISPLAY grp_366 RPAREN

    parameterNameRef ::= nameRef

    path ::= _PATH pointList RPAREN

    pathDelay ::= _PATHDELAY delay list_367 RPAREN

    pathWidth ::= _PATHWIDTH grp_368 RPAREN

    pcbLayoutUnits ::= _PCBLAYOUTUNITS list_370 RPAREN

    pcbLayoutView ::= _PCBLAYOUTVIEW viewNameDef list_372 RPAREN

    permutable ::= _PERMUTABLE list_374 RPAREN

    physicalDefaults ::= _PHYSICALDEFAULTS opt_375 RPAREN

    physicalScaling ::= _PHYSICALSCALING list_377 RPAREN

    pixelPattern ::= _PIXELPATTERN rowSize list_378 RPAREN

    pixelRow ::= _PIXELROW list_379 RPAREN

    point ::= _POINT pointValue RPAREN

    pointList ::= _POINTLIST list_380 RPAREN

    pointValue ::= pt

    polygon ::= _POLYGON pointList RPAREN

    port ::= _PORT opt_381 opt_382 list_384 RPAREN

    portAnnotate ::= _PORTANNOTATE grp_385 list_387 RPAREN

    portAttributeDisplay ::= _PORTATTRIBUTEDISPLAY list_389 RPAREN

    portBundle ::= _PORTBUNDLE portNameDef portList list_391 RPAREN

    portDelay ::= _PORTDELAY portDelayNameDef derivation delay list_393 RPAREN

    portDelayDisplay ::= _PORTDELAYDISPLAY portDelayNameRef list_394 RPAREN

    portDelayNameDef ::= nameDef

    portDelayNameRef ::= nameRef

    portDelayOverride ::= _PORTDELAYOVERRIDE portDelayNameRef derivation delay list_396 RPAREN

    portDirection ::= grp_397

    portDirectionIndicator ::= grp_398

    portIndexValue ::= _PORTINDEXVALUE RPAREN

    portInstanceRef ::= _PORTINSTANCEREF grp_399 grp_400 RPAREN

    portJoined ::= _PORTJOINED list_402 RPAREN

    portList ::= _PORTLIST list_403 RPAREN

    portLoadDelay ::= _PORTLOADDELAY portLoadDelayNameDef derivation loadDelay list_405 RPAREN

    portLoadDelayDisplay ::= _PORTLOADDELAYDISPLAY portLoadDelayNameRef list_406 RPAREN

    portLoadDelayNameDef ::= nameDef

    portLoadDelayNameRef ::= nameRef

    portLoadDelayOverride ::= _PORTLOADDELAYOVERRIDE portLoadDelayNameRef derivation loadDelay list_408 RPAREN

    portMemberRef ::= _PORTMEMBERREF portNameRef indexValue RPAREN

    portNameCaseSensitive ::= _PORTNAMECASESENSITIVE booleanToken RPAREN

    portNameDef ::= nameDef

    portNameDisplay ::= _PORTNAMEDISPLAY list_410 RPAREN

    portNameGenerator ::= _PORTNAMEGENERATOR stringExpression RPAREN

    portNameGeneratorDisplay ::= _PORTNAMEGENERATORDISPLAY grp_411 RPAREN

    portNameRef ::= nameRef

    portPropertyDisplay ::= _PORTPROPERTYDISPLAY propertyNameRef list_413 RPAREN

    portPropertyDisplayOverride ::= _PORTPROPERTYDISPLAYOVERRIDE propertyNameRef grp_414 opt_415 RPAREN

    portPropertyOverride ::= _PORTPROPERTYOVERRIDE propertyNameRef grp_416 list_418 RPAREN

    portRef ::= _PORTREF portNameRef RPAREN

    portSet ::= _PORTSET list_419 RPAREN

    portWidth ::= _PORTWIDTH integerExpression RPAREN

    presentLogicValue ::= grp_420

    previousLogicValue ::= grp_421

    previousVersion ::= _PREVIOUSVERSION viewRef opt_422 RPAREN

    primaryName ::= _PRIMARYNAME originalName list_424 RPAREN

    program ::= _PROGRAM stringValue opt_425 RPAREN

    property_ ::= _PROPERTY propertyNameDef grp_426 list_428 RPAREN

    propertyDisplay ::= _PROPERTYDISPLAY propertyNameRef list_430 RPAREN

    propertyDisplayOverride ::= _PROPERTYDISPLAYOVERRIDE propertyNameRef grp_431 opt_432 RPAREN

    propertyInheritanceControl ::= _PROPERTYINHERITANCECONTROL grp_433 RPAREN

    propertyNameCaseSensitive ::= _PROPERTYNAMECASESENSITIVE booleanToken RPAREN

    propertyNameDef ::= nameDef

    propertyNameDisplay ::= _PROPERTYNAMEDISPLAY list_435 RPAREN

    propertyNameRef ::= nameRef

    propertyOverride ::= _PROPERTYOVERRIDE propertyNameRef grp_436 list_438 RPAREN

    proportionalFont ::= _PROPORTIONALFONT RPAREN

    pt ::= _PT xCoordinate yCoordinate RPAREN

    pt1 ::= pointValue

    pt2 ::= pointValue

    radian ::= _RADIAN unitExponent RPAREN

    reason ::= _REASON stringToken RPAREN

    rectangle ::= _RECTANGLE pt1 pt2 RPAREN

    red ::= scaledInteger

    removeDisplay ::= _REMOVEDISPLAY RPAREN

    repetitionCount ::= _REPETITIONCOUNT integerExpression RPAREN

    repetitionCountDisplay ::= _REPETITIONCOUNTDISPLAY grp_439 RPAREN

    replaceDisplay ::= _REPLACEDISPLAY list_440 RPAREN

    required_ ::= _REQUIRED RPAREN

    resolves ::= _RESOLVES list_441 RPAREN

    revision ::= _REVISION stringToken RPAREN

    revisionDisplay ::= _REVISIONDISPLAY grp_442 RPAREN

    rightJustify ::= _RIGHTJUSTIFY RPAREN

    ripperHotspot ::= _RIPPERHOTSPOT hotspotNameDef hotspot RPAREN

    ripperHotspotRef ::= _RIPPERHOTSPOTREF hotspotNameRef schematicRipperImplementationRef RPAREN

    rotation ::= _ROTATION angleValue RPAREN

    round_ ::= _ROUND RPAREN

    rowSize ::= integerToken

    scaledInteger ::= grp_443

    scaleX ::= _SCALEX numerator denominator RPAREN

    scaleY ::= _SCALEY numerator denominator RPAREN

    schematicBus ::= _SCHEMATICBUS interconnectNameDef signalGroupRef schematicInterconnectHeader schematicBusJoined list_445 RPAREN

    schematicBusDetails ::= _SCHEMATICBUSDETAILS grp_446 RPAREN

    schematicBusGraphics ::= _SCHEMATICBUSGRAPHICS list_448 RPAREN

    schematicBusJoined ::= _SCHEMATICBUSJOINED list_450 RPAREN

    schematicBusSlice ::= _SCHEMATICBUSSLICE interconnectNameDef signalGroupRef schematicInterconnectHeader schematicBusJoined list_452 RPAREN

    schematicComplexFigure ::= _SCHEMATICCOMPLEXFIGURE schematicFigureMacroRef transform list_454 RPAREN

    schematicFigureMacro ::= _SCHEMATICFIGUREMACRO libraryObjectNameDef schematicTemplateHeader list_456 RPAREN

    schematicFigureMacroRef ::= _SCHEMATICFIGUREMACROREF libraryObjectNameRef opt_457 RPAREN

    schematicForFrameBorder ::= _SCHEMATICFORFRAMEBORDER schematicForFrameBorderTemplateRef transform list_459 RPAREN

    schematicForFrameBorderTemplate ::= _SCHEMATICFORFRAMEBORDERTEMPLATE libraryObjectNameDef schematicTemplateHeader usableArea list_461 RPAREN

    schematicForFrameBorderTemplateRef ::= _SCHEMATICFORFRAMEBORDERTEMPLATEREF libraryObjectNameRef opt_462 RPAREN

    schematicForFrameImplementation ::= _SCHEMATICFORFRAMEIMPLEMENTATION implementationNameDef forFrameRef schematicForFrameImplementationHeader schematicFrameImplementationDetails RPAREN

    schematicForFrameImplementationHeader ::= _SCHEMATICFORFRAMEIMPLEMENTATIONHEADER opt_463 RPAREN

    schematicFrameImplementationDetails ::= _SCHEMATICFRAMEIMPLEMENTATIONDETAILS list_465 RPAREN

    schematicGlobalPortAttributes ::= _SCHEMATICGLOBALPORTATTRIBUTES list_467 RPAREN

    schematicGlobalPortImplementation ::= _SCHEMATICGLOBALPORTIMPLEMENTATION implementationNameDef schematicGlobalPortTemplateRef globalPortRef transform list_469 RPAREN

    schematicGlobalPortImplementationRef ::= _SCHEMATICGLOBALPORTIMPLEMENTATIONREF implementationNameRef RPAREN

    schematicGlobalPortTemplate ::= _SCHEMATICGLOBALPORTTEMPLATE libraryObjectNameDef schematicTemplateHeader opt_470 list_472 opt_473 RPAREN

    schematicGlobalPortTemplateRef ::= _SCHEMATICGLOBALPORTTEMPLATEREF libraryObjectNameRef opt_474 RPAREN

    schematicIfFrameBorder ::= _SCHEMATICIFFRAMEBORDER schematicIfFrameBorderTemplateRef transform list_476 RPAREN

    schematicIfFrameBorderTemplate ::= _SCHEMATICIFFRAMEBORDERTEMPLATE libraryObjectNameDef schematicTemplateHeader usableArea list_478 RPAREN

    schematicIfFrameBorderTemplateRef ::= _SCHEMATICIFFRAMEBORDERTEMPLATEREF libraryObjectNameRef opt_479 RPAREN

    schematicIfFrameImplementation ::= _SCHEMATICIFFRAMEIMPLEMENTATION implementationNameDef ifFrameRef schematicIfFrameImplementationHeader schematicFrameImplementationDetails RPAREN

    schematicIfFrameImplementationHeader ::= _SCHEMATICIFFRAMEIMPLEMENTATIONHEADER opt_480 RPAREN

    schematicImplementation ::= _SCHEMATICIMPLEMENTATION list_482 RPAREN

    schematicInstanceImplementation ::= _SCHEMATICINSTANCEIMPLEMENTATION implementationNameDef instanceRef schematicSymbolRef transform list_484 RPAREN

    schematicInstanceImplementationRef ::= _SCHEMATICINSTANCEIMPLEMENTATIONREF implementationNameRef RPAREN

    schematicInterconnectAttributeDisplay ::= _SCHEMATICINTERCONNECTATTRIBUTEDISPLAY list_486 RPAREN

    schematicInterconnectHeader ::= _SCHEMATICINTERCONNECTHEADER list_488 RPAREN

    schematicInterconnectTerminatorImplementation ::= _SCHEMATICINTERCONNECTTERMINATORIMPLEMENTATION implementationNameDef schematicInterconnectTerminatorTemplateRef transform list_490 RPAREN

    schematicInterconnectTerminatorImplementationRef ::= _SCHEMATICINTERCONNECTTERMINATORIMPLEMENTATIONREF implementationNameRef RPAREN

    schematicInterconnectTerminatorTemplate ::= _SCHEMATICINTERCONNECTTERMINATORTEMPLATE libraryObjectNameDef schematicTemplateHeader hotspot list_492 RPAREN

    schematicInterconnectTerminatorTemplateRef ::= _SCHEMATICINTERCONNECTTERMINATORTEMPLATEREF libraryObjectNameRef opt_493 RPAREN

    schematicJunctionImplementation ::= _SCHEMATICJUNCTIONIMPLEMENTATION implementationNameDef schematicJunctionTemplateRef transform list_495 RPAREN

    schematicJunctionImplementationRef ::= _SCHEMATICJUNCTIONIMPLEMENTATIONREF implementationNameRef RPAREN

    schematicJunctionTemplate ::= _SCHEMATICJUNCTIONTEMPLATE libraryObjectNameDef schematicTemplateHeader hotspot list_497 RPAREN

    schematicJunctionTemplateRef ::= _SCHEMATICJUNCTIONTEMPLATEREF libraryObjectNameRef opt_498 RPAREN

    schematicMasterPortImplementation ::= _SCHEMATICMASTERPORTIMPLEMENTATION implementationNameDef schematicMasterPortTemplateRef grp_499 transform list_501 RPAREN

    schematicMasterPortImplementationRef ::= _SCHEMATICMASTERPORTIMPLEMENTATIONREF implementationNameRef RPAREN

    schematicMasterPortTemplate ::= _SCHEMATICMASTERPORTTEMPLATE libraryObjectNameDef schematicTemplateHeader hotspot portDirectionIndicator list_503 RPAREN

    schematicMasterPortTemplateRef ::= _SCHEMATICMASTERPORTTEMPLATEREF libraryObjectNameRef opt_504 RPAREN

    schematicMetric ::= _SCHEMATICMETRIC setDistance grp_505 opt_506 RPAREN

    schematicNet ::= _SCHEMATICNET interconnectNameDef signalRef schematicInterconnectHeader schematicNetJoined list_508 RPAREN

    schematicNetDetails ::= _SCHEMATICNETDETAILS grp_509 RPAREN

    schematicNetGraphics ::= _SCHEMATICNETGRAPHICS list_511 RPAREN

    schematicNetJoined ::= _SCHEMATICNETJOINED opt_513 list_515 opt_517 list_519 RPAREN

    schematicOffPageConnectorImplementation ::= _SCHEMATICOFFPAGECONNECTORIMPLEMENTATION implementationNameDef schematicOffPageConnectorTemplateRef transform list_521 RPAREN

    schematicOffPageConnectorImplementationRef ::= _SCHEMATICOFFPAGECONNECTORIMPLEMENTATIONREF implementationNameRef RPAREN

    schematicOffPageConnectorTemplate ::= _SCHEMATICOFFPAGECONNECTORTEMPLATE libraryObjectNameDef schematicTemplateHeader hotspot list_523 RPAREN

    schematicOffPageConnectorTemplateRef ::= _SCHEMATICOFFPAGECONNECTORTEMPLATEREF libraryObjectNameRef opt_524 RPAREN

    schematicOnPageConnectorImplementation ::= _SCHEMATICONPAGECONNECTORIMPLEMENTATION implementationNameDef schematicOnPageConnectorTemplateRef transform list_526 RPAREN

    schematicOnPageConnectorImplementationRef ::= _SCHEMATICONPAGECONNECTORIMPLEMENTATIONREF implementationNameRef RPAREN

    schematicOnPageConnectorTemplate ::= _SCHEMATICONPAGECONNECTORTEMPLATE libraryObjectNameDef schematicTemplateHeader hotspot list_528 RPAREN

    schematicOnPageConnectorTemplateRef ::= _SCHEMATICONPAGECONNECTORTEMPLATEREF libraryObjectNameRef opt_529 RPAREN

    schematicOtherwiseFrameBorder ::= _SCHEMATICOTHERWISEFRAMEBORDER schematicOtherwiseFrameBorderTemplateRef transform list_531 RPAREN

    schematicOtherwiseFrameBorderTemplate ::= _SCHEMATICOTHERWISEFRAMEBORDERTEMPLATE libraryObjectNameDef schematicTemplateHeader usableArea list_533 RPAREN

    schematicOtherwiseFrameBorderTemplateRef ::= _SCHEMATICOTHERWISEFRAMEBORDERTEMPLATEREF libraryObjectNameRef opt_534 RPAREN

    schematicOtherwiseFrameImplementation ::= _SCHEMATICOTHERWISEFRAMEIMPLEMENTATION implementationNameDef otherwiseFrameRef schematicOtherwiseFrameImplementationHeader schematicFrameImplementationDetails RPAREN

    schematicOtherwiseFrameImplementationHeader ::= _SCHEMATICOTHERWISEFRAMEIMPLEMENTATIONHEADER opt_535 RPAREN

    schematicPortAcPower ::= _SCHEMATICPORTACPOWER list_537 RPAREN

    schematicPortAcPowerRecommendedFrequency ::= _SCHEMATICPORTACPOWERRECOMMENDEDFREQUENCY frequencyValue RPAREN

    schematicPortAcPowerRecommendedVoltageRms ::= _SCHEMATICPORTACPOWERRECOMMENDEDVOLTAGERMS voltageValue RPAREN

    schematicPortAnalog ::= _SCHEMATICPORTANALOG RPAREN

    schematicPortAttributes ::= _SCHEMATICPORTATTRIBUTES list_539 RPAREN

    schematicPortChassisGround ::= _SCHEMATICPORTCHASSISGROUND opt_540 RPAREN

    schematicPortClock ::= _SCHEMATICPORTCLOCK opt_541 RPAREN

    schematicPortDcPower ::= _SCHEMATICPORTDCPOWER list_543 RPAREN

    schematicPortDcPowerRecommendedVoltage ::= _SCHEMATICPORTDCPOWERRECOMMENDEDVOLTAGE voltageValue RPAREN

    schematicPortEarthGround ::= _SCHEMATICPORTEARTHGROUND opt_544 RPAREN

    schematicPortGround ::= _SCHEMATICPORTGROUND opt_545 RPAREN

    schematicPortNonLogical ::= _SCHEMATICPORTNONLOGICAL RPAREN

    schematicPortOpenCollector ::= _SCHEMATICPORTOPENCOLLECTOR RPAREN

    schematicPortOpenEmitter ::= _SCHEMATICPORTOPENEMITTER RPAREN

    schematicPortPower ::= _SCHEMATICPORTPOWER RPAREN

    schematicPortStyle ::= _SCHEMATICPORTSTYLE grp_546 RPAREN

    schematicPortThreeState ::= _SCHEMATICPORTTHREESTATE RPAREN

    schematicRequiredDefaults ::= _SCHEMATICREQUIREDDEFAULTS schematicMetric fontRef textHeight RPAREN

    schematicRipperImplementation ::= _SCHEMATICRIPPERIMPLEMENTATION implementationNameDef schematicRipperTemplateRef transform list_548 RPAREN

    schematicRipperImplementationRef ::= _SCHEMATICRIPPERIMPLEMENTATIONREF implementationNameRef RPAREN

    schematicRipperTemplate ::= _SCHEMATICRIPPERTEMPLATE libraryObjectNameDef schematicTemplateHeader list_550 RPAREN

    schematicRipperTemplateRef ::= _SCHEMATICRIPPERTEMPLATEREF libraryObjectNameRef opt_551 RPAREN

    schematicSubBus ::= _SCHEMATICSUBBUS interconnectNameDef schematicSubInterconnectHeader schematicBusJoined list_553 RPAREN

    schematicSubBusSet ::= _SCHEMATICSUBBUSSET list_554 RPAREN

    schematicSubInterconnectHeader ::= _SCHEMATICSUBINTERCONNECTHEADER list_556 RPAREN

    schematicSubNet ::= _SCHEMATICSUBNET interconnectNameDef schematicSubInterconnectHeader schematicNetJoined list_558 RPAREN

    schematicSubNetSet ::= _SCHEMATICSUBNETSET list_559 RPAREN

    schematicSymbol ::= _SCHEMATICSYMBOL viewNameDef schematicSymbolHeader list_561 RPAREN

    schematicSymbolBorder ::= _SCHEMATICSYMBOLBORDER schematicSymbolBorderTemplateRef transform list_563 RPAREN

    schematicSymbolBorderTemplate ::= _SCHEMATICSYMBOLBORDERTEMPLATE libraryObjectNameDef schematicTemplateHeader usableArea list_565 RPAREN

    schematicSymbolBorderTemplateRef ::= _SCHEMATICSYMBOLBORDERTEMPLATEREF libraryObjectNameRef opt_566 RPAREN

    schematicSymbolHeader ::= _SCHEMATICSYMBOLHEADER schematicUnits list_568 RPAREN

    schematicSymbolPortImplementation ::= _SCHEMATICSYMBOLPORTIMPLEMENTATION symbolPortImplementationNameDef portRef schematicSymbolPortTemplateRef transform list_570 RPAREN

    schematicSymbolPortImplementationRef ::= _SCHEMATICSYMBOLPORTIMPLEMENTATIONREF symbolPortImplementationNameRef schematicInstanceImplementationRef RPAREN

    schematicSymbolPortTemplate ::= _SCHEMATICSYMBOLPORTTEMPLATE libraryObjectNameDef schematicTemplateHeader hotspot portDirectionIndicator list_572 RPAREN

    schematicSymbolPortTemplateRef ::= _SCHEMATICSYMBOLPORTTEMPLATEREF libraryObjectNameRef opt_573 RPAREN

    schematicSymbolRef ::= _SCHEMATICSYMBOLREF viewNameRef RPAREN

    schematicTemplateHeader ::= _SCHEMATICTEMPLATEHEADER schematicUnits list_575 RPAREN

    schematicUnits ::= _SCHEMATICUNITS list_577 RPAREN

    schematicView ::= _SCHEMATICVIEW viewNameDef schematicViewHeader logicalConnectivity schematicImplementation list_579 RPAREN

    schematicViewHeader ::= _SCHEMATICVIEWHEADER schematicUnits list_581 RPAREN

    schematicWireAffinity ::= _SCHEMATICWIREAFFINITY grp_582 RPAREN

    schematicWireStyle ::= _SCHEMATICWIRESTYLE grp_583 RPAREN

    second ::= _SECOND unitExponent RPAREN

    secondIntegerExpression ::= integerExpression

    secondNumber ::= integerToken

    secondStringExpression ::= stringExpression

    section ::= _SECTION sectionNameDef sectionTitle list_585 RPAREN

    sectionNameDef ::= nameDef

    sectionTitle ::= _SECTIONTITLE stringToken RPAREN

    sequence ::= _SEQUENCE fromInteger toInteger opt_586 RPAREN

    setAngle ::= _SETANGLE unitRef RPAREN

    setCapacitance ::= _SETCAPACITANCE unitRef RPAREN

    setCurrent ::= _SETCURRENT unitRef RPAREN

    setDistance ::= _SETDISTANCE unitRef RPAREN

    setFrequency ::= _SETFREQUENCY unitRef RPAREN

    setTime ::= _SETTIME unitRef RPAREN

    setVoltage ::= _SETVOLTAGE unitRef RPAREN

    shape ::= _SHAPE curve RPAREN

    siemens ::= _SIEMENS unitExponent RPAREN

    signal ::= _SIGNAL signalNameDef signalJoined list_588 RPAREN

    signalAnnotate ::= _SIGNALANNOTATE grp_589 list_591 RPAREN

    signalGroup ::= _SIGNALGROUP signalGroupNameDef signalList list_593 RPAREN

    signalGroupAnnotate ::= _SIGNALGROUPANNOTATE extendSignalGroupDef list_595 RPAREN

    signalGroupNameCaseSensitive ::= _SIGNALGROUPNAMECASESENSITIVE booleanToken RPAREN

    signalGroupNameDef ::= nameDef

    signalGroupNameRef ::= nameRef

    signalGroupRef ::= _SIGNALGROUPREF signalGroupNameRef RPAREN

    signalIndexValue ::= _SIGNALINDEXVALUE RPAREN

    signalJoined ::= _SIGNALJOINED list_597 RPAREN

    signalList ::= _SIGNALLIST list_599 RPAREN

    signalMemberRef ::= _SIGNALMEMBERREF signalNameRef indexValue RPAREN

    signalNameCaseSensitive ::= _SIGNALNAMECASESENSITIVE booleanToken RPAREN

    signalNameDef ::= nameDef

    signalNameRef ::= nameRef

    signalRef ::= _SIGNALREF signalNameRef RPAREN

    signalWidth ::= _SIGNALWIDTH integerExpression RPAREN

    simpleName ::= stringToken

    startPoint ::= pointValue

    status ::= _STATUS list_601 RPAREN

    step ::= _STEP integerValue RPAREN

    string ::= _STRING stringExpression RPAREN

    stringConcatenate ::= _STRINGCONCATENATE list_602 RPAREN

    stringConstant ::= _STRINGCONSTANT constantNameDef stringToken RPAREN

    stringConstantRef ::= _STRINGCONSTANTREF constantNameRef RPAREN

    stringEqual ::= _STRINGEQUAL firstStringExpression secondStringExpression RPAREN

    stringExpression ::= grp_603

    stringLength ::= _STRINGLENGTH stringExpression RPAREN

    stringParameter ::= _STRINGPARAMETER parameterNameDef list_605 RPAREN

    stringParameterAssign ::= _STRINGPARAMETERASSIGN parameterNameRef stringExpression RPAREN

    stringParameterRef ::= _STRINGPARAMETERREF parameterNameRef RPAREN

    stringPrefix ::= _STRINGPREFIX stringExpression substringLength RPAREN

    stringSuffix ::= _STRINGSUFFIX stringExpression substringOffset RPAREN

    stringValue ::= stringToken

    strong ::= _STRONG logicNameRef RPAREN

    subIssue ::= integerToken

    substring ::= _SUBSTRING stringExpression substringLength substringOffset RPAREN

    substringLength ::= integerExpression

    substringOffset ::= integerExpression

    subtrahend ::= integerExpression

    symbolicLayoutUnits ::= _SYMBOLICLAYOUTUNITS list_607 RPAREN

    symbolicLayoutView ::= _SYMBOLICLAYOUTVIEW viewNameDef list_609 opt_610 list_612 RPAREN

    symbolPortImplementationNameDef ::= nameDef

    symbolPortImplementationNameRef ::= nameRef

    technology ::= _TECHNOLOGY physicalScaling list_614 RPAREN

    textHeight ::= _TEXTHEIGHT lengthValue RPAREN

    throughPoint ::= numberPoint

    time ::= _TIME hourNumber minuteNumber secondNumber RPAREN

    timeDelay ::= timeValue

    timeInterval ::= _TIMEINTERVAL grp_615 grp_616 RPAREN

    timeStamp ::= _TIMESTAMP date time RPAREN

    timeValue ::= miNoMaxValue

    timing ::= _TIMING timingNameDef derivation list_618 RPAREN

    timingDisplay ::= _TIMINGDISPLAY timingNameRef list_619 RPAREN

    timingNameDef ::= nameDef

    timingNameRef ::= nameRef

    toInteger ::= integerToken

    topJustify ::= _TOPJUSTIFY RPAREN

    totalPages ::= _TOTALPAGES integerToken RPAREN

    totalPagesDisplay ::= _TOTALPAGESDISPLAY grp_620 RPAREN

    transform ::= _TRANSFORM list_622 RPAREN

    transition ::= _TRANSITION previousLogicValue presentLogicValue RPAREN

    etrue ::= _TRUE RPAREN

    truncate ::= _TRUNCATE RPAREN

    typedValue ::= grp_623

    typeface ::= _TYPEFACE fontFamily opt_624 RPAREN

    typefaceSuffix ::= _TYPEFACESUFFIX stringToken RPAREN

    unconfigured ::= _UNCONFIGURED RPAREN

    unconstrained ::= _UNCONSTRAINED RPAREN

    undefined ::= _UNDEFINED RPAREN

    unit ::= _UNIT unitNameDef numberOfNewUnits numberOfBasicUnits list_626 RPAREN

    unitDefinitions ::= _UNITDEFINITIONS list_627 RPAREN

    unitExponent ::= scaledInteger

    unitNameDef ::= nameDef

    unitNameRef ::= nameRef

    unitRef ::= _UNITREF unitNameRef RPAREN

    unrestricted ::= _UNRESTRICTED RPAREN

    unspecified ::= _UNSPECIFIED RPAREN

    unspecifiedDirectionPort ::= _UNSPECIFIEDDIRECTIONPORT RPAREN

    untyped ::= _UNTYPED RPAREN

    unused ::= _UNUSED RPAREN

    usableArea ::= _USABLEAREA list_628 RPAREN

    userData ::= _USERDATA userDataTag list_630 RPAREN

    userDataTag ::= IDENTIFIER

    version ::= _VERSION stringValue RPAREN

    verticalJustification ::= _VERTICALJUSTIFICATION grp_631 RPAREN

    viewGroup ::= _VIEWGROUP viewGroupNameDef viewGroupHeader list_633 RPAREN

    viewGroupHeader ::= _VIEWGROUPHEADER list_635 RPAREN

    viewGroupNameCaseSensitive ::= _VIEWGROUPNAMECASESENSITIVE booleanToken RPAREN

    viewGroupNameDef ::= nameDef

    viewGroupNameRef ::= nameRef

    viewGroupRef ::= _VIEWGROUPREF viewGroupNameRef RPAREN

    viewNameCaseSensitive ::= _VIEWNAMECASESENSITIVE booleanToken RPAREN

    viewNameDef ::= nameDef

    viewNameDisplay ::= _VIEWNAMEDISPLAY list_637 RPAREN

    viewNameRef ::= nameRef

    viewPropertyDisplay ::= _VIEWPROPERTYDISPLAY propertyNameRef list_639 RPAREN

    viewPropertyOverride ::= _VIEWPROPERTYOVERRIDE propertyNameRef grp_640 list_642 RPAREN

    viewRef ::= _VIEWREF viewNameRef opt_643 RPAREN

    visible ::= _VISIBLE booleanValue RPAREN

    volt ::= _VOLT unitExponent RPAREN

    voltageMap ::= _VOLTAGEMAP voltageValue RPAREN

    voltageValue ::= miNoMaxValue

    watt ::= _WATT unitExponent RPAREN

    weak_ ::= _WEAK logicNameRef RPAREN

    weakJoined ::= _WEAKJOINED list_645 RPAREN

    weber ::= _WEBER unitExponent RPAREN

    widePort ::= _WIDEPORT RPAREN

    wideWire ::= _WIDEWIRE RPAREN

    written ::= _WRITTEN timeStamp list_647 RPAREN

    xCoordinate ::= integerValue

    xNumberValue ::= numberValue

    xor_ ::= _XOR list_648 RPAREN

    yCoordinate ::= integerValue

    year ::= _YEAR list_649 RPAREN

    yearNumber ::= integerToken

    yNumberValue ::= numberValue

    integerToken ::= NUMBER

    stringToken ::= STRING_LITERAL

    grp_1 ::= addDisplay | replaceDisplay | removeDisplay

    list_2 ::= $empty | list_2 display

    list_3 ::= $empty | list_3 booleanExpression

    list_4 ::= $empty | list_4 display

    grp_5 ::= addDisplay | replaceDisplay | removeDisplay

    grp_6 ::= addDisplay | replaceDisplay | removeDisplay

    grp_7 ::= logicNameRef | logicList | logicOneOf

    grp_8 ::= comment | nameInformation | userData

    list_9 ::= $empty | list_9 grp_8

    opt_10 ::= bidirectionalPortAttributes | $empty

    grp_11 ::= dcFanInLoad | dcFanOutLoad | dcMaxFanIn | dcMaxFanOut

    list_12 ::= $empty | list_12 grp_11

    grp_13 ::= lsbToMsb | msbToLsb

    grp_14 ::= and_ | booleanParameterRef | booleanToken | stringEqual | integerEqual | lessThan | lessThanOrEqual | not_ | or_ | xor_ | booleanConstantRef

    grp_15 ::= eboolean | nameInformation

    list_16 ::= $empty | list_16 grp_15

    grp_17 ::= efalse | etrue

    grp_18 ::= lengthValue | minimalWidth

    grp_19 ::= cluster | comment | userData | viewGroup

    list_20 ::= $empty | list_20 grp_19

    grp_21 ::= documentation | nameInformation | property_ | status

    list_22 ::= $empty | list_22 grp_21

    grp_23 ::= display | displayNameOverride

    list_24 ::= $empty | list_24 grp_23

    grp_25 ::= display | propertyNameDisplay

    list_26 ::= $empty | list_26 grp_25

    grp_27 ::= addDisplay | replaceDisplay | removeDisplay

    opt_28 ::= propertyNameDisplay | $empty

    grp_29 ::= typedValue | untyped

    grp_30 ::= comment | fixed | propertyOverride

    list_31 ::= $empty | list_31 grp_30

    opt_32 ::= libraryRef | $empty

    grp_33 ::= ascii | iso8859 | jisx0201 | jisx0208

    grp_34 ::= addDisplay | replaceDisplay | removeDisplay

    grp_35 ::= schematicSymbol | schematicView | behaviorView | clusterConfiguration | comment | connectivityView | defaultClusterConfiguration | userData | logicModelView | maskLayoutView | pcbLayoutView | symbolicLayoutView

    list_36 ::= $empty | list_36 grp_35

    grp_37 ::= viewRef | leaf | unconfigured

    grp_38 ::= comment | frameConfiguration | globalPortScope | nameInformation | instanceConfiguration | property_ | userData

    list_39 ::= $empty | list_39 grp_38

    grp_40 ::= documentation | nameInformation | property_ | status

    list_41 ::= $empty | list_41 grp_40

    grp_42 ::= display | propertyNameDisplay

    list_43 ::= $empty | list_43 grp_42

    grp_44 ::= addDisplay | replaceDisplay | removeDisplay

    opt_45 ::= propertyNameDisplay | $empty

    grp_46 ::= typedValue | untyped

    grp_47 ::= comment | fixed | propertyOverride

    list_48 ::= $empty | list_48 grp_47

    opt_49 ::= cellRef | $empty

    list_50 ::= $empty | list_50 stringToken

    grp_51 ::= annotate | comment | figure | originalBoundingBox | propertyDisplay | userData

    list_52 ::= $empty | list_52 grp_51

    grp_53 ::= addDisplay | replaceDisplay | removeDisplay

    grp_54 ::= complementedNamePart | nameDimension | namePartSeparator | simpleName

    list_55 ::= $empty | list_55 grp_54

    grp_56 ::= complementedNamePart | namePartSeparator | simpleName

    list_57 ::= $empty | list_57 grp_56

    grp_58 ::= complementedNamePart | nameDimension | namePartSeparator | simpleName

    list_59 ::= $empty | list_59 grp_58

    list_60 ::= $empty | list_60 logicNameRef

    grp_61 ::= addDisplay | replaceDisplay | removeDisplay

    grp_62 ::= addDisplay | replaceDisplay | removeDisplay

    grp_63 ::= comment | connectivityBusSlice | connectivitySubBus | userData

    list_64 ::= $empty | list_64 grp_63

    list_65 ::= $empty | list_65 connectivityRipperRef

    grp_66 ::= comment | connectivityBusSlice | connectivitySubBus | userData

    list_67 ::= $empty | list_67 grp_66

    grp_68 ::= comment | connectivityBus | connectivityFrameStructure | connectivityNet | connectivityRipper | timing | userData

    list_69 ::= $empty | list_69 grp_68

    grp_70 ::= comment | connectivitySubNet | userData

    list_71 ::= $empty | list_71 grp_70

    grp_72 ::= portJoined | joinedAsSignal

    list_73 ::= $empty | list_73 connectivityRipperRef

    grp_74 ::= comment | connectivityBus | connectivityFrameStructure | connectivityNet | connectivityRipper | localPortGroup | timing | userData

    list_75 ::= $empty | list_75 grp_74

    grp_76 ::= comment | connectivityBusSlice | connectivitySubBus | userData

    list_77 ::= $empty | list_77 grp_76

    grp_78 ::= comment | connectivitySubNet | userData

    list_79 ::= $empty | list_79 grp_78

    list_80 ::= $empty | list_80 display

    grp_81 ::= setCapacitance | setTime

    opt_82 ::= grp_81 | $empty

    grp_83 ::= comment | userData

    list_84 ::= $empty | list_84 grp_83

    grp_85 ::= derivedFrom | documentation | nameInformation | previousVersion | property_ | status

    list_86 ::= $empty | list_86 grp_85

    grp_87 ::= booleanConstant | integerConstant | stringConstant

    list_88 ::= $empty | list_88 grp_87

    grp_89 ::= addDisplay | replaceDisplay | removeDisplay

    list_90 ::= $empty | list_90 stringToken

    grp_91 ::= addDisplay | replaceDisplay | removeDisplay

    grp_92 ::= truncate | round_ | extend

    list_93 ::= $empty | list_93 display

    grp_94 ::= arc | pointValue

    list_95 ::= $empty | list_95 grp_94

    opt_96 ::= version | $empty

    grp_97 ::= addDisplay | replaceDisplay | removeDisplay

    grp_98 ::= addDisplay | replaceDisplay | removeDisplay

    grp_99 ::= addDisplay | replaceDisplay | removeDisplay

    grp_100 ::= addDisplay | replaceDisplay | removeDisplay

    opt_101 ::= minimumStringLength | $empty

    grp_102 ::= calculated | measured | required_

    opt_103 ::= reason | $empty

    grp_104 ::= comment | designHierarchy | userData

    list_105 ::= $empty | list_105 grp_104

    grp_106 ::= addDisplay | replaceDisplay | removeDisplay

    grp_107 ::= documentation | nameInformation | property_ | status

    list_108 ::= $empty | list_108 grp_107

    opt_109 ::= occurrenceHierarchyAnnotate | $empty

    grp_110 ::= booleanParameterAssign | integerParameterAssign | nameInformation | numberParameterAssign | property_ | stringParameterAssign

    list_111 ::= $empty | list_111 grp_110

    grp_112 ::= setCapacitance | setTime

    list_113 ::= $empty | list_113 grp_112

    grp_114 ::= annotate | comment | figure | userData

    list_115 ::= $empty | list_115 grp_114

    grp_116 ::= inputPortAttributes | outputPortAttributes | bidirectionalPortAttributes

    grp_117 ::= figureGroupNameRef | figureGroupOverride

    list_118 ::= $empty | list_118 grp_117

    grp_119 ::= borderPattern | borderPatternVisible | borderWidth | color | fillPattern | fillPatternVisible | fontRef | horizontalJustification | textHeight | verticalJustification | visible

    list_120 ::= $empty | list_120 grp_119

    grp_121 ::= addDisplay | replaceDisplay | removeDisplay

    list_122 ::= $empty | list_122 section

    grp_123 ::= backgroundColor | nameInformation | status

    list_124 ::= $empty | list_124 grp_123

    grp_125 ::= setAngle | setDistance

    list_126 ::= $empty | list_126 grp_125

    list_127 ::= $empty | list_127 logicNameRef

    grp_128 ::= addDisplay | replaceDisplay | removeDisplay

    grp_129 ::= addDisplay | replaceDisplay | removeDisplay

    grp_130 ::= addDisplay | replaceDisplay | removeDisplay

    grp_131 ::= library_ | design | comment | external_ | userData

    list_132 ::= $empty | list_132 grp_131

    grp_133 ::= characterEncoding | constantValues | documentation | globalPortDefinitions | nameCaseSensitivity | nameInformation | physicalScaling | property_ | status

    list_134 ::= $empty | list_134 grp_133

    grp_135 ::= truncate | round_ | extend

    grp_136 ::= addDisplay | replaceDisplay | removeDisplay

    grp_137 ::= portRef | portList | portSet | interconnectRef | interconnectSet

    grp_138 ::= becomes | transition

    list_139 ::= $empty | list_139 grp_138

    grp_140 ::= cell | comment | geometryMacro | pageBorderTemplate | pageTitleBlockTemplate | schematicFigureMacro | schematicForFrameBorderTemplate | schematicGlobalPortTemplate | schematicIfFrameBorderTemplate | schematicInterconnectTerminatorTemplate | schematicJunctionTemplate | schematicMasterPortTemplate | schematicOffPageConnectorTemplate | schematicOnPageConnectorTemplate | schematicOtherwiseFrameBorderTemplate | schematicRipperTemplate | schematicSymbolBorderTemplate | schematicSymbolPortTemplate | userData

    list_141 ::= $empty | list_141 grp_140

    grp_142 ::= figureGroupNameRef | figureGroupOverride

    grp_143 ::= circle | comment | complexGeometry | dot | openShape | path | polygon | rectangle | shape | userData

    list_144 ::= $empty | list_144 grp_143

    grp_145 ::= comment | cornerType | displayAttributes | endType | nameInformation | pathWidth | property_ | userData

    list_146 ::= $empty | list_146 grp_145

    grp_147 ::= comment | cornerType | displayAttributes | endType | pathWidth | propertyOverride

    list_148 ::= $empty | list_148 grp_147

    grp_149 ::= boldStyle | italicStyle | property_ | proportionalFont | userData

    list_150 ::= $empty | list_150 grp_149

    opt_151 ::= fonts | $empty

    list_152 ::= $empty | list_152 font

    list_153 ::= $empty | list_153 event

    grp_154 ::= comment | documentation | nameInformation | property_ | userData

    list_155 ::= $empty | list_155 grp_154

    grp_156 ::= comment | forFrameAnnotate | ifFrameAnnotate | interconnectAnnotate | leafOccurrenceAnnotate | occurrenceAnnotate | otherwiseFrameAnnotate

    list_157 ::= $empty | list_157 grp_156

    grp_158 ::= indexStart | indexStep | nameInformation

    list_159 ::= $empty | list_159 grp_158

    grp_160 ::= indexEndDisplay | indexNameDisplay | indexStartDisplay | indexStepDisplay

    list_161 ::= $empty | list_161 grp_160

    grp_162 ::= frameConfiguration | instanceConfiguration

    list_163 ::= $empty | list_163 grp_162

    grp_164 ::= circle | comment | complexGeometry | dot | openShape | path | polygon | rectangle | shape | userData

    list_165 ::= $empty | list_165 grp_164

    grp_166 ::= backgroundColor | documentation | nameInformation | originalBoundingBox | property_ | status

    list_167 ::= $empty | list_167 grp_166

    opt_168 ::= libraryRef | $empty

    opt_169 ::= setAngle | $empty

    grp_170 ::= comment | nameInformation | property_ | schematicGlobalPortAttributes | userData

    list_171 ::= $empty | list_171 grp_170

    grp_172 ::= comment | nameInformation | property_ | userData

    list_173 ::= $empty | list_173 grp_172

    grp_174 ::= globalPort | globalPortBundle

    list_175 ::= $empty | list_175 grp_174

    list_176 ::= $empty | list_176 globalPortRef

    grp_177 ::= display | displayNameOverride

    list_178 ::= $empty | list_178 grp_177

    grp_179 ::= display | propertyNameDisplay

    list_180 ::= $empty | list_180 grp_179

    grp_181 ::= leftJustify | centerJustify | rightJustify

    grp_182 ::= hotspotConnectDirection | hotspotNameDisplay | nameInformation | schematicWireAffinity

    list_183 ::= $empty | list_183 grp_182

    grp_184 ::= fromBottom | fromLeft | fromRight | fromTop

    list_185 ::= $empty | list_185 grp_184

    grp_186 ::= display | displayNameOverride

    list_187 ::= $empty | list_187 grp_186

    list_188 ::= $empty | list_188 integerToken

    grp_189 ::= comment | ieeeSection

    list_190 ::= $empty | list_190 grp_189

    grp_191 ::= comment | nameInformation | documentation | property_ | userData

    list_192 ::= $empty | list_192 grp_191

    grp_193 ::= comment | forFrameAnnotate | ifFrameAnnotate | interconnectAnnotate | leafOccurrenceAnnotate | occurrenceAnnotate | otherwiseFrameAnnotate | propertyOverride

    list_194 ::= $empty | list_194 grp_193

    list_195 ::= $empty | list_195 ifFrameRef

    grp_196 ::= display | displayNameOverride

    list_197 ::= $empty | list_197 grp_196

    grp_198 ::= addDisplay | replaceDisplay | removeDisplay

    grp_199 ::= addDisplay | replaceDisplay | removeDisplay

    grp_200 ::= addDisplay | replaceDisplay | removeDisplay

    grp_201 ::= addDisplay | replaceDisplay | removeDisplay

    opt_202 ::= inputPortAttributes | $empty

    grp_203 ::= dcFanOutLoad | dcMaxFanIn

    list_204 ::= $empty | list_204 grp_203

    grp_205 ::= booleanParameterAssign | cellPropertyOverride | clusterPropertyOverride | comment | designator | instanceNameGenerator | instancePortAttributes | instanceWidth | integerParameterAssign | nameInformation | numberParameterAssign | property_ | stringParameterAssign | timing | userData

    list_206 ::= $empty | list_206 grp_205

    grp_207 ::= display | displayNameOverride

    list_208 ::= $empty | list_208 grp_207

    grp_209 ::= addDisplay | replaceDisplay | removeDisplay

    grp_210 ::= portPropertyDisplayOverride | portAttributeDisplay

    list_211 ::= $empty | list_211 grp_210

    grp_212 ::= acLoad | comment | connectedSignalIndexGenerator | designator | directionalPortAttributeOverride | portDelay | portDelayOverride | portLoadDelay | portLoadDelayOverride | portPropertyOverride | property_ | unused

    list_213 ::= $empty | list_213 grp_212

    list_214 ::= $empty | list_214 display

    opt_215 ::= propertyNameDisplay | $empty

    list_216 ::= $empty | list_216 display

    grp_217 ::= typedValue | untyped

    grp_218 ::= comment | fixed | propertyOverride

    list_219 ::= $empty | list_219 grp_218

    grp_220 ::= addDisplay | replaceDisplay | removeDisplay

    grp_221 ::= integerParameterRef | integerToken | integerProduct | integerSubtract | integerSum | integerRemainder | integerQuotient | stringLength | integerConstantRef | forFrameIndexRef | portIndexValue | signalIndexValue | absolute | instanceIndexValue

    grp_222 ::= integer | nameInformation

    list_223 ::= $empty | list_223 grp_222

    list_224 ::= $empty | list_224 integerExpression

    list_225 ::= $empty | list_225 integerExpression

    grp_226 ::= comment | interconnectAnnotate | criticality | interconnectDelay | property_ | propertyOverride

    list_227 ::= $empty | list_227 grp_226

    grp_228 ::= annotate | connectivityTagGeneratorDisplay | criticalityDisplay | interconnectDelayDisplay | interconnectNameDisplay | interconnectPropertyDisplay

    list_229 ::= $empty | list_229 grp_228

    grp_230 ::= becomes | transition

    list_231 ::= $empty | list_231 grp_230

    list_232 ::= $empty | list_232 display

    grp_233 ::= criticality | documentation | interconnectDelay | nameInformation | property_

    list_234 ::= $empty | list_234 grp_233

    grp_235 ::= display | displayNameOverride

    list_236 ::= $empty | list_236 grp_235

    list_237 ::= $empty | list_237 display

    opt_238 ::= propertyNameDisplay | $empty

    list_239 ::= $empty | list_239 display

    opt_240 ::= pageRef | $empty

    list_241 ::= $empty | list_241 interconnectRef

    grp_242 ::= designator | booleanParameter | integerParameter | interfaceJoined | mustJoin | numberParameter | permutable | port | portBundle | stringParameter | timing | weakJoined

    list_243 ::= $empty | list_243 grp_242

    list_244 ::= $empty | list_244 portRef

    grp_245 ::= setCapacitance | setTime

    list_246 ::= $empty | list_246 grp_245

    list_247 ::= $empty | list_247 k1KeywordAlias

    grp_248 ::= comment | k2Actual | k2Build | k2Literal

    list_249 ::= $empty | list_249 grp_248

    grp_250 ::= k2Optional | k2Required

    grp_251 ::= comment | k2Actual | k2Build | k2Literal

    list_252 ::= $empty | list_252 grp_251

    grp_253 ::= k1KeywordAlias | k2KeywordDefine

    list_254 ::= $empty | list_254 grp_253

    list_255 ::= $empty | list_255 k2Formal

    grp_256 ::= IDENTIFIER | integerToken | stringToken

    list_257 ::= $empty | list_257 grp_256

    grp_258 ::= k2Literal | k2Actual | k2Build

    grp_259 ::= comment | k2Actual | k2Literal | k3Build | k3ForEach

    list_260 ::= $empty | list_260 grp_259

    grp_261 ::= k2FormalNameRef | k3FormalList

    grp_262 ::= comment | k2Actual | k2Literal | k3Build | k3ForEach

    list_263 ::= $empty | list_263 grp_262

    grp_264 ::= k2Optional | k2Required | k3Collector

    list_265 ::= $empty | list_265 k2FormalNameRef

    grp_266 ::= comment | k2Actual | k2Build | k2Literal | k3ForEach

    list_267 ::= $empty | list_267 grp_266

    grp_268 ::= k1KeywordAlias | k3KeywordDefine

    list_269 ::= $empty | list_269 grp_268

    list_270 ::= $empty | list_270 k3Formal

    grp_271 ::= k0KeywordLevel | k1KeywordLevel | k2KeywordLevel | k3KeywordLevel

    list_272 ::= $empty | list_272 comment

    grp_273 ::= extendInstanceDef | extendInstanceMemberDef

    grp_274 ::= cellPropertyOverride | clusterPropertyOverride | comment | designator | instancePropertyOverride | portAnnotate | property_

    list_275 ::= $empty | list_275 grp_274

    list_276 ::= $empty | list_276 integerExpression

    list_277 ::= $empty | list_277 integerExpression

    grp_278 ::= cell | schematicInterconnectTerminatorTemplate | schematicJunctionTemplate | schematicGlobalPortTemplate | schematicMasterPortTemplate | schematicOffPageConnectorTemplate | schematicOnPageConnectorTemplate | schematicRipperTemplate | schematicSymbolBorderTemplate | schematicSymbolPortTemplate | pageBorderTemplate | pageTitleBlockTemplate | comment | geometryMacro | schematicFigureMacro | schematicForFrameBorderTemplate | schematicIfFrameBorderTemplate | schematicOtherwiseFrameBorderTemplate | userData

    list_279 ::= $empty | list_279 grp_278

    grp_280 ::= backgroundColor | documentation | nameInformation | property_ | status

    list_281 ::= $empty | list_281 grp_280

    grp_282 ::= comment | nameInformation | property_ | userData

    list_283 ::= $empty | list_283 grp_282

    grp_284 ::= comment | forFrame | ifFrame | instance | otherwiseFrame | signal | signalGroup | userData

    list_285 ::= $empty | list_285 grp_284

    grp_286 ::= comment | logicValue

    list_287 ::= $empty | list_287 grp_286

    grp_288 ::= ignore | logicNameRef | logicOneOf

    list_289 ::= $empty | list_289 grp_288

    list_290 ::= $empty | list_290 logicRef

    list_291 ::= $empty | list_291 logicRef

    grp_292 ::= setCapacitance | setTime

    list_293 ::= $empty | list_293 grp_292

    grp_294 ::= comment | nameInformation | userData

    list_295 ::= $empty | list_295 grp_294

    grp_296 ::= logicList | logicNameRef

    list_297 ::= $empty | list_297 grp_296

    opt_298 ::= libraryRef | $empty

    grp_299 ::= booleanMap | comment | compound | currentMap | dominates | isolated | logicMapInput | logicMapOutput | nameInformation | property_ | resolves | strong | voltageMap | weak_

    list_300 ::= $empty | list_300 grp_299

    grp_301 ::= setAngle | setCapacitance | setDistance | setTime

    list_302 ::= $empty | list_302 grp_301

    grp_303 ::= comment | nameInformation | userData

    list_304 ::= $empty | list_304 grp_303

    grp_305 ::= numberValue | mnm

    grp_306 ::= numberValue | undefined | unconstrained

    grp_307 ::= numberValue | undefined | unconstrained

    grp_308 ::= numberValue | undefined | unconstrained

    grp_309 ::= interfaceJoined | portRef | weakJoined

    list_310 ::= $empty | list_310 grp_309

    grp_311 ::= displayName | generated | nameStructure

    list_312 ::= $empty | list_312 grp_311

    grp_313 ::= clusterConfigurationNameCaseSensitive | clusterNameCaseSensitive | designHierarchyNameCaseSensitive | designNameCaseSensitive | documentationNameCaseSensitive | figureGroupNameCaseSensitive | forFrameIndexNameCaseSensitive | frameNameCaseSensitive | globalPortNameCaseSensitive | hotspotNameCaseSensitive | implementationNameCaseSensitive | instanceNameCaseSensitive | interconnectNameCaseSensitive | libraryNameCaseSensitive | libraryObjectNameCaseSensitive | localPortGroupNameCaseSensitive | pageNameCaseSensitive | parameterNameCaseSensitive | portNameCaseSensitive | propertyNameCaseSensitive | signalGroupNameCaseSensitive | signalNameCaseSensitive | viewGroupNameCaseSensitive | viewNameCaseSensitive

    list_314 ::= $empty | list_314 grp_313

    opt_315 ::= bitOrder | $empty

    grp_316 ::= complementedName | complexName | integerValue | sequence | simpleName

    list_317 ::= $empty | list_317 grp_316

    list_318 ::= $empty | list_318 nameAlias

    grp_319 ::= simpleName | complexName | complementedName

    grp_320 ::= permutable | portRef

    list_321 ::= $empty | list_321 grp_320

    grp_322 ::= numberValue | numberParameterRef

    grp_323 ::= nameInformation | number

    list_324 ::= $empty | list_324 grp_323

    grp_325 ::= extendInstanceDef | extendInstanceMemberDef

    grp_326 ::= cellPropertyOverride | clusterPropertyOverride | comment | designator | forFrameAnnotate | ifFrameAnnotate | instancePropertyOverride | interconnectAnnotate | leafOccurrenceAnnotate | occurrenceAnnotate | otherwiseFrameAnnotate | pageAnnotate | portAnnotate | property_ | signalAnnotate | signalGroupAnnotate | timing | viewPropertyOverride

    list_327 ::= $empty | list_327 grp_326

    grp_328 ::= cellPropertyOverride | clusterPropertyOverride | comment | forFrameAnnotate | ifFrameAnnotate | interconnectAnnotate | leafOccurrenceAnnotate | occurrenceAnnotate | otherwiseFrameAnnotate | pageAnnotate | portAnnotate | signalAnnotate | signalGroupAnnotate | timing | viewPropertyOverride

    list_329 ::= $empty | list_329 grp_328

    list_330 ::= $empty | list_330 booleanExpression

    grp_331 ::= addDisplay | replaceDisplay | removeDisplay

    grp_332 ::= comment | documentation | nameInformation | property_ | userData

    list_333 ::= $empty | list_333 grp_332

    grp_334 ::= comment | forFrameAnnotate | ifFrameAnnotate | interconnectAnnotate | leafOccurrenceAnnotate | occurrenceAnnotate | otherwiseFrameAnnotate | propertyOverride

    list_335 ::= $empty | list_335 grp_334

    opt_336 ::= outputPortAttributes | $empty

    grp_337 ::= dcFanInLoad | dcMaxFanOut

    list_338 ::= $empty | list_338 grp_337

    grp_339 ::= cellPropertyDisplay | clusterPropertyDisplay | comment | localPortGroup | pageCommentGraphics | pageTitleBlock | propertyDisplay | schematicBus | schematicForFrameImplementation | schematicGlobalPortImplementation | schematicIfFrameImplementation | schematicInstanceImplementation | schematicMasterPortImplementation | schematicNet | schematicOffPageConnectorImplementation | schematicOnPageConnectorImplementation | schematicOtherwiseFrameImplementation | schematicRipperImplementation | userData | viewPropertyDisplay

    list_340 ::= $empty | list_340 grp_339

    list_341 ::= $empty | list_341 interconnectAnnotate

    grp_342 ::= propertyDisplayOverride | propertyOverride

    list_343 ::= $empty | list_343 grp_342

    grp_344 ::= annotate | commentGraphics | figure | propertyDisplay | schematicComplexFigure

    list_345 ::= $empty | list_345 grp_344

    opt_346 ::= libraryRef | $empty

    grp_347 ::= annotate | comment | figure | schematicComplexFigure | userData

    list_348 ::= $empty | list_348 grp_347

    grp_349 ::= backgroundColor | documentation | nameInformation | originalBoundingBox | pageBorder | pageSize | property_ | status

    list_350 ::= $empty | list_350 grp_349

    grp_351 ::= addDisplay | replaceDisplay | removeDisplay

    grp_352 ::= display | propertyNameDisplay

    list_353 ::= $empty | list_353 grp_352

    grp_354 ::= nameInformation | pagePropertyDisplay | pageTitleBlockAttributeDisplay | pageTitleBlockAttributes | property_ | propertyDisplay | propertyDisplayOverride | propertyOverride

    list_355 ::= $empty | list_355 grp_354

    grp_356 ::= approvedDateDisplay | checkDateDisplay | companyNameDisplay | contractDisplay | copyrightDisplay | drawingDescriptionDisplay | drawingIdentificationDisplay | drawingSizeDisplay | engineeringDateDisplay | originalDrawingDateDisplay | pageIdentificationDisplay | pageTitleDisplay | revisionDisplay | totalPagesDisplay

    list_357 ::= $empty | list_357 grp_356

    grp_358 ::= approvedDate | checkDate | companyName | contract | drawingDescription | drawingIdentification | drawingSize | engineeringDate | originalDrawingDate | pageIdentification | pageTitle | revision

    list_359 ::= $empty | list_359 grp_358

    grp_360 ::= annotate | commentGraphics | figure | pageTitleBlockAttributeDisplay | pageTitleBlockAttributes | propertyDisplay | schematicComplexFigure

    list_361 ::= $empty | list_361 grp_360

    opt_362 ::= libraryRef | $empty

    grp_363 ::= addDisplay | replaceDisplay | removeDisplay

    grp_364 ::= addDisplay | replaceDisplay | removeDisplay

    opt_365 ::= parameterNameDisplay | $empty

    grp_366 ::= addDisplay | replaceDisplay | removeDisplay

    list_367 ::= $empty | list_367 event

    grp_368 ::= lengthValue | minimalWidth

    grp_369 ::= setAngle | setCapacitance | setDistance | setTime

    list_370 ::= $empty | list_370 grp_369

    grp_371 ::= comment | nameInformation | userData

    list_372 ::= $empty | list_372 grp_371

    grp_373 ::= nonPermutable | permutable | portRef

    list_374 ::= $empty | list_374 grp_373

    opt_375 ::= schematicRequiredDefaults | $empty

    grp_376 ::= comment | connectivityUnits | documentationUnits | geometryMacroUnits | interfaceUnits | logicModelUnits | maskLayoutUnits | pcbLayoutUnits | schematicUnits | symbolicLayoutUnits

    list_377 ::= $empty | list_377 grp_376

    list_378 ::= $empty | list_378 pixelRow

    list_379 ::= $empty | list_379 booleanToken

    list_380 ::= $empty | list_380 pointValue

    opt_381 ::= portNameDef | $empty

    opt_382 ::= portDirection | $empty

    grp_383 ::= acLoad | comment | defaultConnection | designator | nameInformation | portDelay | portLoadDelay | portNameGenerator | portWidth | property_ | schematicPortAttributes | unused | userData

    list_384 ::= $empty | list_384 grp_383

    grp_385 ::= extendPortDef | extendPortMemberDef

    grp_386 ::= acLoad | comment | designator | directionalPortAttributeOverride | portDelay | portDelayOverride | portLoadDelay | portLoadDelayOverride | portPropertyOverride | property_

    list_387 ::= $empty | list_387 grp_386

    grp_388 ::= acLoadDisplay | connectedSignalIndexGeneratorDisplay | dcFanInLoadDisplay | dcFanOutLoadDisplay | dcMaxFanInDisplay | dcMaxFanOutDisplay | designatorDisplay | portDelayDisplay | portLoadDelayDisplay | portNameDisplay | portNameGeneratorDisplay | portPropertyDisplay

    list_389 ::= $empty | list_389 grp_388

    grp_390 ::= comment | nameInformation | property_ | userData | designator

    list_391 ::= $empty | list_391 grp_390

    grp_392 ::= becomes | transition

    list_393 ::= $empty | list_393 grp_392

    list_394 ::= $empty | list_394 display

    grp_395 ::= becomes | transition

    list_396 ::= $empty | list_396 grp_395

    grp_397 ::= inputPort | outputPort | bidirectionalPort | unspecifiedDirectionPort

    grp_398 ::= input_ | output | bidirectional | unspecified | unrestricted | mixedDirection

    grp_399 ::= portNameRef | portMemberRef

    grp_400 ::= instanceRef | instanceMemberRef

    grp_401 ::= globalPortRef | localPortGroupRef | portInstanceRef | portRef

    list_402 ::= $empty | list_402 grp_401

    list_403 ::= $empty | list_403 portRef

    grp_404 ::= becomes | transition

    list_405 ::= $empty | list_405 grp_404

    list_406 ::= $empty | list_406 display

    grp_407 ::= becomes | transition

    list_408 ::= $empty | list_408 grp_407

    grp_409 ::= display | displayNameOverride

    list_410 ::= $empty | list_410 grp_409

    grp_411 ::= addDisplay | replaceDisplay | removeDisplay

    grp_412 ::= display | propertyNameDisplay

    list_413 ::= $empty | list_413 grp_412

    grp_414 ::= addDisplay | replaceDisplay | removeDisplay

    opt_415 ::= propertyNameDisplay | $empty

    grp_416 ::= typedValue | untyped

    grp_417 ::= comment | fixed | propertyOverride

    list_418 ::= $empty | list_418 grp_417

    list_419 ::= $empty | list_419 portRef

    grp_420 ::= logicNameRef | logicList | logicOneOf

    grp_421 ::= logicNameRef | logicList | logicOneOf

    opt_422 ::= reason | $empty

    grp_423 ::= displayName | generated | nameStructure

    list_424 ::= $empty | list_424 grp_423

    opt_425 ::= version | $empty

    grp_426 ::= typedValue | untyped

    grp_427 ::= comment | nameInformation | owner | property_ | propertyInheritanceControl | unitRef

    list_428 ::= $empty | list_428 grp_427

    grp_429 ::= display | propertyNameDisplay

    list_430 ::= $empty | list_430 grp_429

    grp_431 ::= addDisplay | replaceDisplay | removeDisplay

    opt_432 ::= propertyNameDisplay | $empty

    grp_433 ::= fixed | notInherited

    grp_434 ::= display | displayNameOverride

    list_435 ::= $empty | list_435 grp_434

    grp_436 ::= typedValue | untyped

    grp_437 ::= comment | fixed | propertyOverride

    list_438 ::= $empty | list_438 grp_437

    grp_439 ::= addDisplay | replaceDisplay | removeDisplay

    list_440 ::= $empty | list_440 display

    list_441 ::= $empty | list_441 logicNameRef

    grp_442 ::= addDisplay | replaceDisplay | removeDisplay

    grp_443 ::= integerToken | e

    grp_444 ::= comment | schematicBusDetails | schematicBusSlice | schematicInterconnectAttributeDisplay | userData

    list_445 ::= $empty | list_445 grp_444

    grp_446 ::= schematicBusGraphics | schematicSubBusSet

    grp_447 ::= comment | figure | schematicComplexFigure | userData

    list_448 ::= $empty | list_448 grp_447

    grp_449 ::= portJoined | ripperHotspotRef | schematicGlobalPortImplementationRef | schematicInterconnectTerminatorImplementationRef | schematicJunctionImplementationRef | schematicMasterPortImplementationRef | schematicOffPageConnectorImplementationRef | schematicOnPageConnectorImplementationRef | schematicSymbolPortImplementationRef

    list_450 ::= $empty | list_450 grp_449

    grp_451 ::= comment | schematicBusDetails | schematicBusSlice | schematicInterconnectAttributeDisplay | userData

    list_452 ::= $empty | list_452 grp_451

    grp_453 ::= propertyDisplayOverride | propertyOverride

    list_454 ::= $empty | list_454 grp_453

    grp_455 ::= annotate | comment | commentGraphics | figure | propertyDisplay | schematicComplexFigure | userData

    list_456 ::= $empty | list_456 grp_455

    opt_457 ::= libraryRef | $empty

    grp_458 ::= forFrameIndexDisplay | propertyDisplayOverride | propertyOverride | repetitionCountDisplay

    list_459 ::= $empty | list_459 grp_458

    grp_460 ::= annotate | commentGraphics | figure | forFrameIndexDisplay | propertyDisplay | repetitionCountDisplay | schematicComplexFigure

    list_461 ::= $empty | list_461 grp_460

    opt_462 ::= libraryRef | $empty

    opt_463 ::= schematicForFrameBorder | $empty

    grp_464 ::= cellPropertyDisplay | clusterPropertyDisplay | comment | commentGraphics | propertyDisplay | schematicBus | schematicForFrameImplementation | schematicGlobalPortImplementation | schematicIfFrameImplementation | schematicInstanceImplementation | schematicMasterPortImplementation | schematicNet | schematicOffPageConnectorImplementation | schematicOnPageConnectorImplementation | schematicOtherwiseFrameImplementation | schematicRipperImplementation | userData | viewPropertyDisplay

    list_465 ::= $empty | list_465 grp_464

    grp_466 ::= ieeeStandard | schematicPortAcPower | schematicPortAnalog | schematicPortChassisGround | schematicPortClock | schematicPortDcPower | schematicPortEarthGround | schematicPortGround | schematicPortNonLogical | schematicPortOpenCollector | schematicPortOpenEmitter | schematicPortPower | schematicPortThreeState

    list_467 ::= $empty | list_467 grp_466

    grp_468 ::= globalPortNameDisplay | globalPortPropertyDisplay | implementationNameDisplay | nameInformation | propertyDisplayOverride | propertyOverride

    list_469 ::= $empty | list_469 grp_468

    opt_470 ::= hotspot | $empty

    grp_471 ::= annotate | commentGraphics | figure | globalPortNameDisplay | implementationNameDisplay | propertyDisplay | schematicComplexFigure | schematicGlobalPortAttributes

    list_472 ::= $empty | list_472 grp_471

    opt_473 ::= hotspot | $empty

    opt_474 ::= libraryRef | $empty

    grp_475 ::= conditionDisplay | propertyDisplayOverride | propertyOverride

    list_476 ::= $empty | list_476 grp_475

    grp_477 ::= annotate | commentGraphics | conditionDisplay | figure | propertyDisplay | schematicComplexFigure

    list_478 ::= $empty | list_478 grp_477

    opt_479 ::= libraryRef | $empty

    opt_480 ::= schematicIfFrameBorder | $empty

    grp_481 ::= page | totalPages

    list_482 ::= $empty | list_482 grp_481

    grp_483 ::= cellNameDisplay | cellPropertyDisplayOverride | clusterPropertyDisplayOverride | designatorDisplay | implementationNameDisplay | instanceNameDisplay | instanceNameGeneratorDisplay | instancePortAttributeDisplay | instancePropertyDisplay | instanceWidthDisplay | nameInformation | pageCommentGraphics | parameterDisplay | propertyDisplayOverride | propertyOverride | timingDisplay | viewNameDisplay

    list_484 ::= $empty | list_484 grp_483

    grp_485 ::= connectivityTagGeneratorDisplay | criticalityDisplay | interconnectAttachedText | interconnectDelayDisplay | interconnectNameDisplay | interconnectPropertyDisplay

    list_486 ::= $empty | list_486 grp_485

    grp_487 ::= criticality | documentation | interconnectDelay | nameInformation | property_ | schematicInterconnectTerminatorImplementation | schematicJunctionImplementation | schematicWireStyle

    list_488 ::= $empty | list_488 grp_487

    grp_489 ::= implementationNameDisplay | nameInformation | propertyDisplayOverride | propertyOverride

    list_490 ::= $empty | list_490 grp_489

    grp_491 ::= commentGraphics | figure | implementationNameDisplay | propertyDisplay | schematicComplexFigure

    list_492 ::= $empty | list_492 grp_491

    opt_493 ::= libraryRef | $empty

    grp_494 ::= implementationNameDisplay | nameInformation | propertyDisplayOverride | propertyOverride

    list_495 ::= $empty | list_495 grp_494

    grp_496 ::= commentGraphics | figure | implementationNameDisplay | propertyDisplay | schematicComplexFigure

    list_497 ::= $empty | list_497 grp_496

    opt_498 ::= libraryRef | $empty

    grp_499 ::= portRef | localPortGroupRef

    grp_500 ::= implementationNameDisplay | nameInformation | portAttributeDisplay | propertyDisplayOverride | propertyOverride

    list_501 ::= $empty | list_501 grp_500

    grp_502 ::= annotate | commentGraphics | figure | implementationNameDisplay | portAttributeDisplay | propertyDisplay | schematicComplexFigure | schematicPortStyle

    list_503 ::= $empty | list_503 grp_502

    opt_504 ::= libraryRef | $empty

    grp_505 ::= hotspotGrid | noHotspotGrid

    opt_506 ::= nominalHotspotGrid | $empty

    grp_507 ::= comment | schematicInterconnectAttributeDisplay | schematicNetDetails | userData

    list_508 ::= $empty | list_508 grp_507

    grp_509 ::= schematicNetGraphics | schematicSubNetSet

    grp_510 ::= comment | figure | schematicComplexFigure | userData

    list_511 ::= $empty | list_511 grp_510

    grp_512 ::= portJoined | joinedAsSignal

    opt_513 ::= grp_512 | $empty

    grp_514 ::= ripperHotspotRef | schematicGlobalPortImplementationRef | schematicInterconnectTerminatorImplementationRef | schematicJunctionImplementationRef | schematicMasterPortImplementationRef | schematicOffPageConnectorImplementationRef | schematicOnPageConnectorImplementationRef | schematicSymbolPortImplementationRef

    list_515 ::= $empty | list_515 grp_514

    grp_516 ::= portJoined | joinedAsSignal

    opt_517 ::= grp_516 | $empty

    grp_518 ::= ripperHotspotRef | schematicGlobalPortImplementationRef | schematicInterconnectTerminatorImplementationRef | schematicJunctionImplementationRef | schematicMasterPortImplementationRef | schematicOffPageConnectorImplementationRef | schematicOnPageConnectorImplementationRef | schematicSymbolPortImplementationRef

    list_519 ::= $empty | list_519 grp_518

    grp_520 ::= associatedInterconnectNameDisplay | implementationNameDisplay | nameInformation | property_ | propertyDisplay | propertyDisplayOverride | propertyOverride

    list_521 ::= $empty | list_521 grp_520

    grp_522 ::= annotate | associatedInterconnectNameDisplay | commentGraphics | figure | implementationNameDisplay | propertyDisplay | schematicComplexFigure

    list_523 ::= $empty | list_523 grp_522

    opt_524 ::= libraryRef | $empty

    grp_525 ::= associatedInterconnectNameDisplay | implementationNameDisplay | nameInformation | property_ | propertyDisplay | propertyDisplayOverride | propertyOverride

    list_526 ::= $empty | list_526 grp_525

    grp_527 ::= annotate | associatedInterconnectNameDisplay | commentGraphics | figure | implementationNameDisplay | propertyDisplay | schematicComplexFigure

    list_528 ::= $empty | list_528 grp_527

    opt_529 ::= libraryRef | $empty

    grp_530 ::= propertyDisplayOverride | propertyOverride

    list_531 ::= $empty | list_531 grp_530

    grp_532 ::= annotate | commentGraphics | figure | propertyDisplay | schematicComplexFigure

    list_533 ::= $empty | list_533 grp_532

    opt_534 ::= libraryRef | $empty

    opt_535 ::= schematicOtherwiseFrameBorder | $empty

    grp_536 ::= schematicPortAcPowerRecommendedFrequency | schematicPortAcPowerRecommendedVoltageRms

    list_537 ::= $empty | list_537 grp_536

    grp_538 ::= ieeeStandard | schematicPortAcPower | schematicPortAnalog | schematicPortChassisGround | schematicPortClock | schematicPortDcPower | schematicPortEarthGround | schematicPortGround | schematicPortNonLogical | schematicPortOpenCollector | schematicPortOpenEmitter | schematicPortPower | schematicPortThreeState

    list_539 ::= $empty | list_539 grp_538

    opt_540 ::= schematicPortAnalog | $empty

    opt_541 ::= ieeeStandard | $empty

    grp_542 ::= schematicPortAnalog | schematicPortDcPowerRecommendedVoltage

    list_543 ::= $empty | list_543 grp_542

    opt_544 ::= schematicPortAnalog | $empty

    opt_545 ::= schematicPortAnalog | $empty

    grp_546 ::= narrowPort | widePort

    grp_547 ::= implementationNameDisplay | nameInformation | property_ | propertyDisplay | propertyDisplayOverride | propertyOverride

    list_548 ::= $empty | list_548 grp_547

    grp_549 ::= annotate | commentGraphics | figure | implementationNameDisplay | propertyDisplay | ripperHotspot | schematicComplexFigure

    list_550 ::= $empty | list_550 grp_549

    opt_551 ::= libraryRef | $empty

    grp_552 ::= comment | schematicBusDetails | schematicBusSlice | schematicInterconnectAttributeDisplay | userData

    list_553 ::= $empty | list_553 grp_552

    list_554 ::= $empty | list_554 schematicSubBus

    grp_555 ::= criticality | documentation | interconnectDelay | nameInformation | property_

    list_556 ::= $empty | list_556 grp_555

    grp_557 ::= comment | schematicInterconnectAttributeDisplay | schematicNetDetails | userData

    list_558 ::= $empty | list_558 grp_557

    list_559 ::= $empty | list_559 schematicSubNet

    grp_560 ::= annotate | cellNameDisplay | cellPropertyDisplay | clusterPropertyDisplay | comment | commentGraphics | designatorDisplay | figure | implementationNameDisplay | instanceNameDisplay | instanceNameGeneratorDisplay | instanceWidthDisplay | parameterDisplay | propertyDisplay | schematicComplexFigure | schematicSymbolPortImplementation | userData | viewNameDisplay

    list_561 ::= $empty | list_561 grp_560

    grp_562 ::= propertyDisplayOverride | propertyOverride

    list_563 ::= $empty | list_563 grp_562

    grp_564 ::= annotate | commentGraphics | figure | propertyDisplay | schematicComplexFigure

    list_565 ::= $empty | list_565 grp_564

    opt_566 ::= libraryRef | $empty

    grp_567 ::= backgroundColor | derivedFrom | documentation | nameInformation | originalBoundingBox | pageSize | previousVersion | property_ | schematicSymbolBorder | status

    list_568 ::= $empty | list_568 grp_567

    grp_569 ::= portAttributeDisplay | propertyDisplayOverride | propertyOverride

    list_570 ::= $empty | list_570 grp_569

    grp_571 ::= annotate | commentGraphics | figure | implementationNameDisplay | portAttributeDisplay | propertyDisplay | schematicComplexFigure | schematicPortAttributes | schematicPortStyle

    list_572 ::= $empty | list_572 grp_571

    opt_573 ::= libraryRef | $empty

    grp_574 ::= backgroundColor | documentation | nameInformation | originalBoundingBox | property_ | status

    list_575 ::= $empty | list_575 grp_574

    grp_576 ::= schematicMetric | setAngle | setCapacitance | setFrequency | setTime | setVoltage

    list_577 ::= $empty | list_577 grp_576

    grp_578 ::= comment | userData

    list_579 ::= $empty | list_579 grp_578

    grp_580 ::= derivedFrom | documentation | nameInformation | previousVersion | property_ | status

    list_581 ::= $empty | list_581 grp_580

    grp_582 ::= narrowWire | wideWire | unrestricted

    grp_583 ::= narrowWire | wideWire

    grp_584 ::= diagram | section | stringValue

    list_585 ::= $empty | list_585 grp_584

    opt_586 ::= step | $empty

    grp_587 ::= connectivityTagGenerator | nameInformation | property_ | signalWidth

    list_588 ::= $empty | list_588 grp_587

    grp_589 ::= extendSignalDef | extendSignalMemberDef

    grp_590 ::= comment | property_ | propertyOverride

    list_591 ::= $empty | list_591 grp_590

    grp_592 ::= property_ | nameInformation

    list_593 ::= $empty | list_593 grp_592

    grp_594 ::= comment | property_ | propertyOverride

    list_595 ::= $empty | list_595 grp_594

    grp_596 ::= globalPortRef | portInstanceRef | portMemberRef | portRef

    list_597 ::= $empty | list_597 grp_596

    grp_598 ::= signalGroupRef | signalRef

    list_599 ::= $empty | list_599 grp_598

    grp_600 ::= comment | copyright | userData | written

    list_601 ::= $empty | list_601 grp_600

    list_602 ::= $empty | list_602 stringExpression

    grp_603 ::= stringParameterRef | stringToken | stringConstantRef | stringConcatenate | substring | decimalToString | stringPrefix | stringSuffix

    grp_604 ::= nameInformation | string

    list_605 ::= $empty | list_605 grp_604

    grp_606 ::= setAngle | setCapacitance | setDistance | setTime

    list_607 ::= $empty | list_607 grp_606

    grp_608 ::= comment | userData

    list_609 ::= $empty | list_609 grp_608

    opt_610 ::= nameInformation | $empty

    grp_611 ::= comment | userData

    list_612 ::= $empty | list_612 grp_611

    grp_613 ::= comment | figureGroup | logicDefinitions | userData

    list_614 ::= $empty | list_614 grp_613

    grp_615 ::= event | offsetEvent

    grp_616 ::= event | offsetEvent | duration

    grp_617 ::= comment | forbiddenEvent | pathDelay | property_ | userData

    list_618 ::= $empty | list_618 grp_617

    list_619 ::= $empty | list_619 display

    grp_620 ::= addDisplay | replaceDisplay | removeDisplay

    grp_621 ::= origin | rotation | scaleX | scaleY

    list_622 ::= $empty | list_622 grp_621

    grp_623 ::= eboolean | integer | miNoMax | number | point | string

    opt_624 ::= typefaceSuffix | $empty

    grp_625 ::= ampere | candela | celsius | coulomb | degree | fahrenheit | farad | henry | hertz | joule | kelvin | kilogram | meter | mole | ohm | radian | second | siemens | volt | watt | weber

    list_626 ::= $empty | list_626 grp_625

    list_627 ::= $empty | list_627 unit

    list_628 ::= $empty | list_628 rectangle

    grp_629 ::= IDENTIFIER | integerToken | stringToken | userData

    list_630 ::= $empty | list_630 grp_629

    grp_631 ::= bottomJustify | baselineJustify | middleJustify | caplineJustify | topJustify

    grp_632 ::= comment | userData | viewGroupRef | viewRef

    list_633 ::= $empty | list_633 grp_632

    grp_634 ::= documentation | nameInformation | property_ | reason

    list_635 ::= $empty | list_635 grp_634

    grp_636 ::= display | displayNameOverride

    list_637 ::= $empty | list_637 grp_636

    grp_638 ::= display | propertyNameDisplay

    list_639 ::= $empty | list_639 grp_638

    grp_640 ::= typedValue | untyped

    grp_641 ::= comment | fixed | propertyOverride

    list_642 ::= $empty | list_642 grp_641

    opt_643 ::= clusterRef | $empty

    grp_644 ::= interfaceJoined | portRef

    list_645 ::= $empty | list_645 grp_644

    grp_646 ::= author | comment | dataOrigin | program | userData

    list_647 ::= $empty | list_647 grp_646

    list_648 ::= $empty | list_648 booleanExpression

    list_649 ::= $empty | list_649 yearNumber

%End
