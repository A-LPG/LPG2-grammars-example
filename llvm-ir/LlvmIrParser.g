-- AUTO-GENERATED from antlr/grammars-v4 llvm-ir by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=LlvmIrParser
%options package=lpg.grammars.llvm_ir
%options template=dtParserTemplateF.gi
%options import_terminals=LlvmIrLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    compilationUnit
%End

%Rules
    compilationUnit ::= list_1

    targetDef ::= targetDataLayout
           | targetTriple

    sourceFilename ::= SOURCE_FILENAME EQ StringLit

    targetDataLayout ::= TARGET DATALAYOUT EQ StringLit

    targetTriple ::= TARGET TRIPLE EQ StringLit

    topLevelEntity ::= sourceFilename
           | targetDef
           | moduleAsm
           | typeDef
           | comdatDef
           | globalDecl
           | globalDef
           | indirectSymbolDef
           | funcDecl
           | funcDef
           | attrGroupDef
           | namedMetadataDef
           | metadataDef
           | useListOrder
           | useListOrderBB

    moduleAsm ::= MODULE ASM StringLit

    typeDef ::= LocalIdent EQ TYPE type

    comdatDef ::= ComdatName EQ COMDAT grp_2

    globalDecl ::= GlobalIdent EQ externalLinkage opt_3 opt_4 opt_5 opt_6 opt_7 opt_8 opt_9 immutable type list_11 list_13 list_14

    globalDef ::= GlobalIdent EQ opt_15 opt_16 opt_17 opt_18 opt_19 opt_20 opt_21 opt_22 immutable type constant list_24 list_26 list_27

    indirectSymbolDef ::= GlobalIdent EQ opt_28 opt_29 opt_30 opt_31 opt_32 opt_33 grp_34 type COMMA indirectSymbol list_36

    funcDecl ::= DECLARE list_37 funcHeader

    funcDef ::= DEFINE funcHeader list_38 funcBody

    attrGroupDef ::= ATTRIBUTES AttrGroupId EQ LBRACE list_39 RBRACE

    namedMetadataDef ::= MetadataName EQ BANG LBRACE opt_43 RBRACE

    metadataDef ::= MetadataId EQ opt_44 grp_45

    useListOrder ::= USELISTORDER typeValue COMMA LBRACE IntLit list_47 RBRACE

    useListOrderBB ::= USELISTORDER_BB GlobalIdent COMMA LocalIdent COMMA LBRACE IntLit list_49 RBRACE

    funcHeader ::= opt_50 opt_51 opt_52 opt_53 opt_54 list_55 type GlobalIdent LPAREN params RPAREN opt_56 opt_57 list_58

    indirectSymbol ::= typeConst
           | bitCastExpr
           | getElementPtrExpr
           | addrSpaceCastExpr
           | intToPtrExpr

    callingConv ::= callingConvEnum
           | callingConvInt

    callingConvInt ::= CC IntLit

    funcHdrField ::= funcAttribute
           | section
           | partition
           | comdat
           | align
           | gc
           | prefix
           | prologue
           | personality

    gc ::= GC StringLit

    prefix ::= PREFIX typeConst

    prologue ::= PROLOGUE typeConst

    personality ::= PERSONALITY typeConst

    returnAttribute ::= returnAttr
           | dereferenceable
           | align

    funcBody ::= LBRACE list_59 list_60 RBRACE

    basicBlock ::= opt_61 list_62 terminator

    instruction ::= localDefInst
           | valueInstruction
           | storeInst
           | fenceInst

    terminator ::= localDefTerm
           | valueTerminator
           | retTerm
           | brTerm
           | condBrTerm
           | switchTerm
           | indirectBrTerm
           | resumeTerm
           | catchRetTerm
           | cleanupRetTerm
           | unreachableTerm

    localDefTerm ::= LocalIdent EQ valueTerminator

    valueTerminator ::= invokeTerm
           | callBrTerm
           | catchSwitchTerm

    retTerm ::= RET VOID list_64
           | RET concreteType value list_66

    brTerm ::= BR label_nt list_68

    condBrTerm ::= BR IntType value COMMA label_nt COMMA label_nt list_70

    switchTerm ::= SWITCH typeValue COMMA label_nt LBRACKET list_71 RBRACKET list_73

    indirectBrTerm ::= INDIRECTBR typeValue COMMA LBRACKET opt_77 RBRACKET list_79

    resumeTerm ::= RESUME typeValue list_81

    catchRetTerm ::= CATCHRET FROM value TO label_nt list_83

    cleanupRetTerm ::= CLEANUPRET FROM value UNWIND unwindTarget list_85

    unreachableTerm ::= UNREACHABLE list_87

    invokeTerm ::= INVOKE opt_88 list_89 opt_90 type value LPAREN args RPAREN list_91 opt_95 TO label_nt UNWIND label_nt list_97

    callBrTerm ::= CALLBR opt_98 list_99 opt_100 type value LPAREN args RPAREN list_101 opt_105 TO label_nt LBRACKET opt_109 RBRACKET list_111

    catchSwitchTerm ::= CATCHSWITCH WITHIN exceptionPad LBRACKET handlers RBRACKET UNWIND unwindTarget list_113

    label_nt ::= LABEL LocalIdent

    case_nt ::= typeConst COMMA label_nt

    unwindTarget ::= TO CALLER
           | label_nt

    handlers ::= label_nt list_115

    metadataNode ::= MetadataId
           | diExpression

    diExpression ::= _DIEXPRESSION LPAREN opt_119 RPAREN

    diExpressionField ::= IntLit
           | DwarfAttEncoding
           | DwarfOp

    globalField ::= section
           | partition
           | comdat
           | align
           | grp_120

    section ::= SECTION StringLit

    comdat ::= COMDAT opt_122

    partition ::= PARTITION StringLit

    constant ::= boolConst
           | intConst
           | floatConst
           | nullConst
           | noneConst
           | structConst
           | arrayConst
           | vectorConst
           | zeroInitializerConst
           | GlobalIdent
           | undefConst
           | poisonConst
           | blockAddressConst
           | dsoLocalEquivalentConst
           | noCFIConst
           | constantExpr

    boolConst ::= TRUE
           | FALSE

    intConst ::= IntLit

    floatConst ::= FloatLit

    nullConst ::= NULL_LITERAL

    noneConst ::= NONE

    structConst ::= LBRACE opt_126 RBRACE
           | LT LBRACE opt_130 RBRACE GT

    arrayConst ::= C StringLit
           | LBRACKET opt_134 RBRACKET

    vectorConst ::= LT opt_138 GT

    zeroInitializerConst ::= ZEROINITIALIZER

    undefConst ::= UNDEF

    poisonConst ::= POISON

    blockAddressConst ::= BLOCKADDRESS LPAREN GlobalIdent COMMA LocalIdent RPAREN

    dsoLocalEquivalentConst ::= DSO_LOCAL_EQUIVALENT GlobalIdent

    noCFIConst ::= NO_CFI GlobalIdent

    constantExpr ::= fNegExpr
           | addExpr
           | subExpr
           | mulExpr
           | shlExpr
           | lShrExpr
           | aShrExpr
           | andExpr
           | orExpr
           | xorExpr
           | extractElementExpr
           | insertElementExpr
           | shuffleVectorExpr
           | getElementPtrExpr
           | truncExpr
           | zExtExpr
           | sExtExpr
           | fpTruncExpr
           | fpExtExpr
           | fpToUiExpr
           | fpToSiExpr
           | uiToFpExpr
           | siToFpExpr
           | ptrToIntExpr
           | intToPtrExpr
           | bitCastExpr
           | addrSpaceCastExpr
           | iCmpExpr
           | fCmpExpr
           | selectExpr

    typeConst ::= firstClassType constant

    metadataAttachment ::= MetadataName mdNode

    mdNode ::= mdTuple
           | MetadataId
           | specializedMDNode

    mdTuple ::= BANG LBRACE opt_142 RBRACE

    metadata ::= typeValue
           | mdString
           | mdTuple
           | MetadataId
           | diArgList
           | specializedMDNode

    diArgList ::= _DIARGLIST LPAREN opt_146 RPAREN

    typeValue ::= firstClassType value

    value ::= constant
           | LocalIdent
           | inlineAsm

    inlineAsm ::= ASM opt_147 opt_148 opt_149 opt_150 StringLit COMMA StringLit

    mdString ::= BANG StringLit

    mdFieldOrInt ::= IntLit
           | mdField

    diSPFlag ::= IntLit
           | DispFlag

    funcAttribute ::= attrString
           | attrPair
           | AttrGroupId
           | alignPair
           | alignStack
           | alignStackPair
           | allocKind
           | allocSize
           | funcAttr
           | preallocated
           | unwindTable
           | vectorScaleRange

    type ::= VOID
           | OPAQUE
           | type LPAREN params RPAREN
           | intType
           | floatType
           | type opt_151 STAR
           | opaquePointerType
           | vectorType
           | labelType
           | arrayType
           | structType
           | namedType
           | mmxType
           | tokenType
           | metadataType

    params ::= opt_152
           | param list_154 opt_156

    param ::= type list_157 opt_158

    paramAttribute ::= attrString
           | attrPair
           | align
           | alignStack
           | byRefAttr
           | byval
           | dereferenceable
           | elementType
           | inAlloca
           | paramAttr
           | preallocated
           | structRetAttr

    attrString ::= StringLit

    attrPair ::= StringLit EQ StringLit

    align ::= ALIGN IntLit
           | ALIGN LPAREN IntLit RPAREN

    alignPair ::= ALIGN EQ IntLit

    alignStack ::= ALIGNSTACK LPAREN IntLit RPAREN

    alignStackPair ::= ALIGNSTACK EQ IntLit

    allocKind ::= ALLOCKIND LPAREN StringLit RPAREN

    allocSize ::= ALLOCSIZE LPAREN IntLit opt_160 RPAREN

    unwindTable ::= UWTABLE
           | UWTABLE LPAREN grp_161 RPAREN

    vectorScaleRange ::= VSCALE_RANGE opt_164

    byRefAttr ::= BYREF LPAREN type RPAREN

    byval ::= BYVAL opt_166

    dereferenceable ::= DEREFERENCEABLE LPAREN IntLit RPAREN
           | DEREFERENCEABLE_OR_NULL LPAREN IntLit RPAREN

    elementType ::= ELEMENTTYPE LPAREN type RPAREN

    inAlloca ::= INALLOCA LPAREN type RPAREN

    paramAttr ::= ALLOCALIGN
           | ALLOCPTR
           | IMMARG
           | INREG
           | NEST
           | NOALIAS
           | NOCAPTURE
           | NOFREE
           | NONNULL
           | NOUNDEF
           | READNONE
           | READONLY
           | RETURNED
           | SIGNEXT
           | SWIFTASYNC
           | SWIFTERROR
           | SWIFTSELF
           | WRITEONLY
           | ZEROEXT

    preallocated ::= PREALLOCATED LPAREN type RPAREN

    structRetAttr ::= SRET LPAREN type RPAREN

    firstClassType ::= concreteType
           | metadataType

    concreteType ::= intType
           | floatType
           | pointerType
           | vectorType
           | labelType
           | arrayType
           | structType
           | namedType
           | mmxType
           | tokenType

    intType ::= IntType

    floatType ::= floatKind

    pointerType ::= type opt_167 STAR
           | opaquePointerType

    vectorType ::= LT IntLit X type GT
           | LT VSCALE X IntLit X type GT

    labelType ::= LABEL

    arrayType ::= LBRACKET IntLit X type RBRACKET

    structType ::= LBRACE opt_171 RBRACE
           | LT LBRACE opt_175 RBRACE GT

    namedType ::= LocalIdent

    mmxType ::= X86_MMX

    tokenType ::= TOKEN

    opaquePointerType ::= PTR opt_176

    addrSpace ::= ADDRSPACE LPAREN IntLit RPAREN

    threadLocal ::= THREAD_LOCAL opt_178

    metadataType ::= METADATA

    bitCastExpr ::= BITCAST LPAREN typeConst TO type RPAREN

    getElementPtrExpr ::= GETELEMENTPTR opt_179 LPAREN type COMMA typeConst list_181 RPAREN

    gepIndex ::= opt_182 typeConst

    addrSpaceCastExpr ::= ADDRSPACECAST LPAREN typeConst TO type RPAREN

    intToPtrExpr ::= INTTOPTR LPAREN typeConst TO type RPAREN

    iCmpExpr ::= ICMP iPred LPAREN typeConst COMMA typeConst RPAREN

    fCmpExpr ::= FCMP fPred LPAREN typeConst COMMA typeConst RPAREN

    selectExpr ::= SELECT LPAREN typeConst COMMA typeConst COMMA typeConst RPAREN

    truncExpr ::= TRUNC LPAREN typeConst TO type RPAREN

    zExtExpr ::= ZEXT LPAREN typeConst TO type RPAREN

    sExtExpr ::= SEXT LPAREN typeConst TO type RPAREN

    fpTruncExpr ::= FPTRUNC LPAREN typeConst TO type RPAREN

    fpExtExpr ::= FPEXT LPAREN typeConst TO type RPAREN

    fpToUiExpr ::= FPTOUI LPAREN typeConst TO type RPAREN

    fpToSiExpr ::= FPTOSI LPAREN typeConst TO type RPAREN

    uiToFpExpr ::= UITOFP LPAREN typeConst TO type RPAREN

    siToFpExpr ::= SITOFP LPAREN typeConst TO type RPAREN

    ptrToIntExpr ::= PTRTOINT LPAREN typeConst TO type RPAREN

    extractElementExpr ::= EXTRACTELEMENT LPAREN typeConst COMMA typeConst RPAREN

    insertElementExpr ::= INSERTELEMENT LPAREN typeConst COMMA typeConst COMMA typeConst RPAREN

    shuffleVectorExpr ::= SHUFFLEVECTOR LPAREN typeConst COMMA typeConst COMMA typeConst RPAREN

    shlExpr ::= SHL list_183 LPAREN typeConst COMMA typeConst RPAREN

    lShrExpr ::= LSHR opt_184 LPAREN typeConst COMMA typeConst RPAREN

    aShrExpr ::= ASHR opt_185 LPAREN typeConst COMMA typeConst RPAREN

    andExpr ::= AND LPAREN typeConst COMMA typeConst RPAREN

    orExpr ::= OR LPAREN typeConst COMMA typeConst RPAREN

    xorExpr ::= XOR LPAREN typeConst COMMA typeConst RPAREN

    addExpr ::= ADD list_186 LPAREN typeConst COMMA typeConst RPAREN

    subExpr ::= SUB list_187 LPAREN typeConst COMMA typeConst RPAREN

    mulExpr ::= MUL list_188 LPAREN typeConst COMMA typeConst RPAREN

    fNegExpr ::= FNEG LPAREN typeConst RPAREN

    localDefInst ::= LocalIdent EQ valueInstruction

    valueInstruction ::= fNegInst
           | addInst
           | fAddInst
           | subInst
           | fSubInst
           | mulInst
           | fMulInst
           | uDivInst
           | sDivInst
           | fDivInst
           | uRemInst
           | sRemInst
           | fRemInst
           | shlInst
           | lShrInst
           | aShrInst
           | andInst
           | orInst
           | xorInst
           | extractElementInst
           | insertElementInst
           | shuffleVectorInst
           | extractValueInst
           | insertValueInst
           | allocaInst
           | loadInst
           | cmpXchgInst
           | atomicRMWInst
           | getElementPtrInst
           | truncInst
           | zExtInst
           | sExtInst
           | fpTruncInst
           | fpExtInst
           | fpToUiInst
           | fpToSiInst
           | uiToFpInst
           | siToFpInst
           | ptrToIntInst
           | intToPtrInst
           | bitCastInst
           | addrSpaceCastInst
           | iCmpInst
           | fCmpInst
           | phiInst
           | selectInst
           | freezeInst
           | callInst
           | vaargInst
           | landingPadInst
           | catchPadInst
           | cleanupPadInst

    storeInst ::= STORE opt_189 typeValue COMMA typeValue opt_191 list_193
           | STORE ATOMIC opt_194 typeValue COMMA typeValue opt_195 atomicOrdering opt_197 list_199

    syncScope ::= SYNCSCOPE LPAREN StringLit RPAREN

    fenceInst ::= FENCE opt_200 atomicOrdering list_202

    fNegInst ::= FNEG list_203 typeValue list_205

    addInst ::= ADD list_206 typeValue COMMA value list_208

    fAddInst ::= FADD list_209 typeValue COMMA value list_211

    subInst ::= SUB list_212 typeValue COMMA value list_214

    fSubInst ::= FSUB list_215 typeValue COMMA value list_217

    mulInst ::= MUL list_218 typeValue COMMA value list_220

    fMulInst ::= FMUL list_221 typeValue COMMA value list_223

    uDivInst ::= UDIV opt_224 typeValue COMMA value list_226

    sDivInst ::= SDIV opt_227 typeValue COMMA value list_229

    fDivInst ::= FDIV list_230 typeValue COMMA value list_232

    uRemInst ::= UREM typeValue COMMA value list_234

    sRemInst ::= SREM typeValue COMMA value list_236

    fRemInst ::= FREM list_237 typeValue COMMA value list_239

    shlInst ::= SHL list_240 typeValue COMMA value list_242

    lShrInst ::= LSHR opt_243 typeValue COMMA value list_245

    aShrInst ::= ASHR opt_246 typeValue COMMA value list_248

    andInst ::= AND typeValue COMMA value list_250

    orInst ::= OR typeValue COMMA value list_252

    xorInst ::= XOR typeValue COMMA value list_254

    extractElementInst ::= EXTRACTELEMENT typeValue COMMA typeValue list_256

    insertElementInst ::= INSERTELEMENT typeValue COMMA typeValue COMMA typeValue list_258

    shuffleVectorInst ::= SHUFFLEVECTOR typeValue COMMA typeValue COMMA typeValue list_260

    extractValueInst ::= EXTRACTVALUE typeValue list_262 list_264

    insertValueInst ::= INSERTVALUE typeValue COMMA typeValue list_266 list_268

    allocaInst ::= ALLOCA opt_269 opt_270 type opt_272 opt_274 opt_276 list_278

    loadInst ::= LOAD opt_279 type COMMA typeValue opt_281 list_283
           | LOAD ATOMIC opt_284 type COMMA typeValue opt_285 atomicOrdering opt_287 list_289

    cmpXchgInst ::= CMPXCHG opt_290 opt_291 typeValue COMMA typeValue COMMA typeValue opt_292 atomicOrdering atomicOrdering opt_294 list_296

    atomicRMWInst ::= ATOMICRMW opt_297 atomicOp typeValue COMMA typeValue opt_298 atomicOrdering opt_300 list_302

    getElementPtrInst ::= GETELEMENTPTR opt_303 type COMMA typeValue list_305 list_307

    truncInst ::= TRUNC typeValue TO type list_309

    zExtInst ::= ZEXT typeValue TO type list_311

    sExtInst ::= SEXT typeValue TO type list_313

    fpTruncInst ::= FPTRUNC typeValue TO type list_315

    fpExtInst ::= FPEXT typeValue TO type list_317

    fpToUiInst ::= FPTOUI typeValue TO type list_319

    fpToSiInst ::= FPTOSI typeValue TO type list_321

    uiToFpInst ::= UITOFP typeValue TO type list_323

    siToFpInst ::= SITOFP typeValue TO type list_325

    ptrToIntInst ::= PTRTOINT typeValue TO type list_327

    intToPtrInst ::= INTTOPTR typeValue TO type list_329

    bitCastInst ::= BITCAST typeValue TO type list_331

    addrSpaceCastInst ::= ADDRSPACECAST typeValue TO type list_333

    iCmpInst ::= ICMP iPred typeValue COMMA value list_335

    fCmpInst ::= FCMP list_336 fPred typeValue COMMA value list_338

    phiInst ::= PHI list_339 type seq_342 list_344

    selectInst ::= SELECT list_345 typeValue COMMA typeValue COMMA typeValue list_347

    freezeInst ::= FREEZE typeValue

    callInst ::= opt_349 CALL list_350 opt_351 list_352 opt_353 type value LPAREN args RPAREN list_354 opt_358 list_360

    vaargInst ::= VA_ARG typeValue COMMA type list_362

    landingPadInst ::= LANDINGPAD type opt_363 list_364 list_366

    catchPadInst ::= CATCHPAD WITHIN LocalIdent LBRACKET opt_370 RBRACKET list_372

    cleanupPadInst ::= CLEANUPPAD WITHIN exceptionPad LBRACKET opt_376 RBRACKET list_378

    inc ::= LBRACKET value COMMA LocalIdent RBRACKET

    operandBundle ::= StringLit LPAREN opt_382 RPAREN

    clause ::= grp_383 typeValue

    args ::= opt_384
           | arg list_386 opt_388

    arg ::= concreteType list_389 value
           | metadataType metadata

    exceptionArg ::= concreteType value
           | metadataType metadata

    exceptionPad ::= noneConst
           | LocalIdent

    externalLinkage ::= EXTERN_WEAK
           | EXTERNAL

    internalLinkage ::= APPENDING
           | AVAILABLE_EXTERNALLY
           | COMMON
           | INTERNAL
           | LINKONCE
           | LINKONCE_ODR
           | PRIVATE
           | WEAK
           | WEAK_ODR

    linkage ::= internalLinkage
           | externalLinkage

    preemption ::= DSO_LOCAL
           | DSO_PREEMPTABLE

    visibility ::= DEFAULT
           | HIDDEN
           | PROTECTED

    dllStorageClass ::= DLLEXPORT
           | DLLIMPORT

    tlsModel ::= INITIALEXEC
           | LOCALDYNAMIC
           | LOCALEXEC

    unnamedAddr ::= LOCAL_UNNAMED_ADDR
           | UNNAMED_ADDR

    externallyInitialized ::= EXTERNALLY_INITIALIZED

    immutable ::= CONSTANT
           | GLOBAL

    funcAttr ::= ALWAYSINLINE
           | ARGMEMONLY
           | BUILTIN
           | COLD
           | CONVERGENT
           | DISABLE_SANITIZER_INSTRUMENTATION
           | FN_RET_THUNK_EXTERN
           | HOT
           | INACCESSIBLEMEM_OR_ARGMEMONLY
           | INACCESSIBLEMEMONLY
           | INLINEHINT
           | JUMPTABLE
           | MINSIZE
           | MUSTPROGRESS
           | NAKED
           | NOBUILTIN
           | NOCALLBACK
           | NOCF_CHECK
           | NODUPLICATE
           | NOFREE
           | NOIMPLICITFLOAT
           | NOINLINE
           | NOMERGE
           | NONLAZYBIND
           | NOPROFILE
           | NORECURSE
           | NOREDZONE
           | NORETURN
           | NOSANITIZE_BOUNDS
           | NOSANITIZE_COVERAGE
           | NOSYNC
           | NOUNWIND
           | NULL_POINTER_IS_VALID
           | OPTFORFUZZING
           | OPTNONE
           | OPTSIZE
           | PRESPLITCOROUTINE
           | READNONE
           | READONLY
           | RETURNS_TWICE
           | SAFESTACK
           | SANITIZE_ADDRESS
           | SANITIZE_HWADDRESS
           | SANITIZE_MEMORY
           | SANITIZE_MEMTAG
           | SANITIZE_THREAD
           | SHADOWCALLSTACK
           | SPECULATABLE
           | SPECULATIVE_LOAD_HARDENING
           | SSP
           | SSPREQ
           | SSPSTRONG
           | STRICTFP
           | WILLRETURN
           | WRITEONLY

    distinct ::= DISTINCT

    inBounds ::= INBOUNDS

    returnAttr ::= INREG
           | NOALIAS
           | NONNULL
           | NOUNDEF
           | SIGNEXT
           | ZEROEXT

    overflowFlag ::= NSW
           | NUW

    iPred ::= EQ
           | NE
           | SGE
           | SGT
           | SLE
           | SLT
           | UGE
           | UGT
           | ULE
           | ULT

    fPred ::= FALSE
           | OEQ
           | OGE
           | OGT
           | OLE
           | OLT
           | ONE
           | ORD
           | TRUE
           | UEQ
           | UGE
           | UGT
           | ULE
           | ULT
           | UNE
           | UNO

    atomicOrdering ::= ACQ_REL
           | ACQUIRE
           | MONOTONIC
           | RELEASE
           | SEQ_CST
           | UNORDERED

    callingConvEnum ::= AARCH64_SVE_VECTOR_PCS
           | AARCH64_VECTOR_PCS
           | AMDGPU_CS
           | AMDGPU_ES
           | AMDGPU_GFX
           | AMDGPU_GS
           | AMDGPU_HS
           | AMDGPU_KERNEL
           | AMDGPU_LS
           | AMDGPU_PS
           | AMDGPU_VS
           | ANYREGCC
           | ARM_AAPCS_VFPCC
           | ARM_AAPCSCC
           | ARM_APCSCC
           | AVR_INTRCC
           | AVR_SIGNALCC
           | CCC
           | CFGUARD_CHECKCC
           | COLDCC
           | CXX_FAST_TLSCC
           | FASTCC
           | GHCCC
           | HHVM_CCC
           | HHVMCC
           | INTEL_OCL_BICC
           | MSP430_INTRCC
           | PRESERVE_ALLCC
           | PRESERVE_MOSTCC
           | PTX_DEVICE
           | PTX_KERNEL
           | SPIR_FUNC
           | SPIR_KERNEL
           | SWIFTCC
           | SWIFTTAILCC
           | TAILCC
           | WEBKIT_JSCC
           | WIN64CC
           | X86_64_SYSVCC
           | X86_FASTCALLCC
           | X86_INTRCC
           | X86_REGCALLCC
           | X86_STDCALLCC
           | X86_THISCALLCC
           | X86_VECTORCALLCC

    fastMathFlag ::= AFN
           | ARCP
           | CONTRACT
           | FAST
           | NINF
           | NNAN
           | NSZ
           | REASSOC

    atomicOp ::= ADD
           | AND
           | FADD
           | FMAX
           | FMIN
           | FSUB
           | MAX
           | MIN
           | NAND
           | OR
           | SUB
           | UMAX
           | UMIN
           | XCHG
           | XOR

    floatKind ::= HALF
           | BFLOAT
           | FLOAT
           | DOUBLE
           | X86_FP80
           | FP128
           | PPC_FP128

    specializedMDNode ::= diBasicType
           | diCommonBlock
           | diCompileUnit
           | diCompositeType
           | diDerivedType
           | diEnumerator
           | diExpression
           | diFile
           | diGlobalVariable
           | diGlobalVariableExpression
           | diImportedEntity
           | diLabel
           | diLexicalBlock
           | diLexicalBlockFile
           | diLocalVariable
           | diLocation
           | diMacro
           | diMacroFile
           | diModule
           | diNamespace
           | diObjCProperty
           | diStringType
           | diSubprogram
           | diSubrange
           | diSubroutineType
           | diTemplateTypeParameter
           | diTemplateValueParameter
           | genericDiNode

    diBasicType ::= _DIBASICTYPE LPAREN opt_393 RPAREN

    diCommonBlock ::= _DICOMMONBLOCK LPAREN opt_397 RPAREN

    diCompileUnit ::= _DICOMPILEUNIT LPAREN opt_401 RPAREN

    diCompositeType ::= _DICOMPOSITETYPE LPAREN opt_405 RPAREN

    diCompositeTypeField ::= tagField
           | nameField
           | scopeField
           | fileField
           | lineField
           | baseTypeField
           | sizeField
           | alignField
           | offsetField
           | flagsField
           | elementsField
           | runtimeLangField
           | vtableHolderField
           | templateParamsField
           | identifierField
           | discriminatorField
           | dataLocationField
           | associatedField
           | allocatedField
           | rankField
           | annotationsField

    diDerivedType ::= _DIDERIVEDTYPE LPAREN opt_409 RPAREN

    diDerivedTypeField ::= tagField
           | nameField
           | scopeField
           | fileField
           | lineField
           | baseTypeField
           | sizeField
           | alignField
           | offsetField
           | flagsField
           | extraDataField
           | dwarfAddressSpaceField
           | annotationsField

    diEnumerator ::= _DIENUMERATOR LPAREN opt_413 RPAREN

    diEnumeratorField ::= nameField
           | valueIntField
           | isUnsignedField

    diFile ::= _DIFILE LPAREN opt_417 RPAREN

    diFileField ::= filenameField
           | directoryField
           | checksumkindField
           | checksumField
           | sourceField

    diGlobalVariable ::= _DIGLOBALVARIABLE LPAREN opt_421 RPAREN

    diGlobalVariableField ::= nameField
           | scopeField
           | linkageNameField
           | fileField
           | lineField
           | typeField
           | isLocalField
           | isDefinitionField
           | templateParamsField
           | declarationField
           | alignField
           | annotationsField

    diGlobalVariableExpression ::= _DIGLOBALVARIABLEEXPRESSION LPAREN opt_425 RPAREN

    diGlobalVariableExpressionField ::= varField
           | exprField

    diImportedEntity ::= _DIIMPORTEDENTITY LPAREN opt_429 RPAREN

    diImportedEntityField ::= tagField
           | scopeField
           | entityField
           | fileField
           | lineField
           | nameField
           | elementsField

    diLabel ::= _DILABEL LPAREN opt_433 RPAREN

    diLabelField ::= scopeField
           | nameField
           | fileField
           | lineField

    diLexicalBlock ::= _DILEXICALBLOCK LPAREN opt_437 RPAREN

    diLexicalBlockField ::= scopeField
           | fileField
           | lineField
           | columnField

    diLexicalBlockFile ::= _DILEXICALBLOCKFILE LPAREN opt_441 RPAREN

    diLexicalBlockFileField ::= scopeField
           | fileField
           | discriminatorIntField

    diLocalVariable ::= _DILOCALVARIABLE LPAREN opt_445 RPAREN

    diLocalVariableField ::= scopeField
           | nameField
           | argField
           | fileField
           | lineField
           | typeField
           | flagsField
           | alignField
           | annotationsField

    diLocation ::= _DILOCATION LPAREN opt_449 RPAREN

    diLocationField ::= lineField
           | columnField
           | scopeField
           | inlinedAtField
           | isImplicitCodeField

    diMacro ::= _DIMACRO LPAREN opt_453 RPAREN

    diMacroField ::= typeMacinfoField
           | lineField
           | nameField
           | valueStringField

    diMacroFile ::= _DIMACROFILE LPAREN opt_457 RPAREN

    diMacroFileField ::= typeMacinfoField
           | lineField
           | fileField
           | nodesField

    diModule ::= _DIMODULE LPAREN opt_461 RPAREN

    diModuleField ::= scopeField
           | nameField
           | configMacrosField
           | includePathField
           | apiNotesField
           | fileField
           | lineField
           | isDeclField

    diNamespace ::= _DINAMESPACE LPAREN opt_465 RPAREN

    diNamespaceField ::= scopeField
           | nameField
           | exportSymbolsField

    diObjCProperty ::= _DIOBJCPROPERTY LPAREN opt_469 RPAREN

    diObjCPropertyField ::= nameField
           | fileField
           | lineField
           | setterField
           | getterField
           | attributesField
           | typeField

    diStringType ::= _DISTRINGTYPE LPAREN opt_473 RPAREN

    diStringTypeField ::= tagField
           | nameField
           | stringLengthField
           | stringLengthExpressionField
           | stringLocationExpressionField
           | sizeField
           | alignField
           | encodingField

    diSubprogram ::= _DISUBPROGRAM LPAREN opt_477 RPAREN

    diSubprogramField ::= scopeField
           | nameField
           | linkageNameField
           | fileField
           | lineField
           | typeField
           | isLocalField
           | isDefinitionField
           | scopeLineField
           | containingTypeField
           | virtualityField
           | virtualIndexField
           | thisAdjustmentField
           | flagsField
           | spFlagsField
           | isOptimizedField
           | unitField
           | templateParamsField
           | declarationField
           | retainedNodesField
           | thrownTypesField
           | annotationsField
           | targetFuncNameField

    diSubrange ::= _DISUBRANGE LPAREN opt_481 RPAREN

    diSubrangeField ::= countField
           | lowerBoundField
           | upperBoundField
           | strideField

    diSubroutineType ::= _DISUBROUTINETYPE LPAREN opt_485 RPAREN

    diTemplateTypeParameter ::= _DITEMPLATETYPEPARAMETER LPAREN opt_489 RPAREN

    diTemplateValueParameter ::= _DITEMPLATEVALUEPARAMETER LPAREN opt_492 RPAREN

    genericDiNode ::= _GENERICDINODE LPAREN opt_496 RPAREN

    diTemplateTypeParameterField ::= nameField
           | typeField
           | defaultedField

    diCompileUnitField ::= languageField
           | fileField
           | producerField
           | isOptimizedField
           | flagsStringField
           | runtimeVersionField
           | splitDebugFilenameField
           | emissionKindField
           | enumsField
           | retainedTypesField
           | globalsField
           | importsField
           | macrosField
           | dwoIdField
           | splitDebugInliningField
           | debugInfoForProfilingField
           | nameTableKindField
           | rangesBaseAddressField
           | sysrootField
           | sdkField

    diCommonBlockField ::= scopeField
           | declarationField
           | nameField
           | fileField
           | lineField

    diBasicTypeField ::= tagField
           | nameField
           | sizeField
           | alignField
           | encodingField
           | flagsField

    genericDINodeField ::= tagField
           | headerField
           | operandsField

    tagField ::= TAG_ DwarfTag

    headerField ::= HEADER_ StringLit

    operandsField ::= OPERANDS_ LBRACE opt_500 RBRACE

    diTemplateValueParameterField ::= tagField
           | nameField
           | typeField
           | defaultedField
           | valueField

    nameField ::= NAME_ StringLit

    typeField ::= TYPE_ mdField

    defaultedField ::= DEFAULTED_ boolConst

    valueField ::= VALUE_ mdField

    mdField ::= nullConst
           | metadata

    diSubroutineTypeField ::= flagsField
           | ccField
           | typesField

    flagsField ::= FLAGS_ diFlags

    diFlags ::= DiFlag list_502

    ccField ::= CC_ DwarfCc
           | IntLit

    alignField ::= ALIGN_ IntLit

    allocatedField ::= ALLOCATED_ mdField

    annotationsField ::= ANNOTATIONS_ mdField

    argField ::= ARG_ IntLit

    associatedField ::= ASSOCIATED_ mdField

    attributesField ::= ATTRIBUTES_ IntLit

    baseTypeField ::= BASETYPE_ mdField

    checksumField ::= CHECKSUM_ StringLit

    checksumkindField ::= CHECKSUMKIND_ ChecksumKind

    columnField ::= COLUMN_ IntLit

    configMacrosField ::= CONFIGMACROS_ StringLit

    containingTypeField ::= CONTAININGTYPE_ mdField

    countField ::= COUNT_ mdFieldOrInt

    debugInfoForProfilingField ::= DEBUGINFOFORPROFILING_ boolConst

    declarationField ::= DECLARATION_ mdField

    directoryField ::= DIRECTORY_ StringLit

    discriminatorField ::= DISCRIMINATOR_ mdField

    dataLocationField ::= DATALOCATION_ mdField

    discriminatorIntField ::= DISCRIMINATOR_ IntLit

    dwarfAddressSpaceField ::= DWARFADDRESSSPACE_ IntLit

    dwoIdField ::= DWOID_ IntLit

    elementsField ::= ELEMENTS_ mdField

    emissionKindField ::= EMISSIONKIND_ grp_503

    encodingField ::= ENCODING_ grp_504

    entityField ::= ENTITY_ mdField

    enumsField ::= ENUMS_ mdField

    exportSymbolsField ::= EXPORTSYMBOLS_ boolConst

    exprField ::= EXPR_ mdField

    extraDataField ::= EXTRADATA_ mdField

    fileField ::= FILE_ mdField

    filenameField ::= FILENAME_ StringLit

    flagsStringField ::= FLAGS_ StringLit

    getterField ::= GETTER_ StringLit

    globalsField ::= GLOBALS_ mdField

    identifierField ::= IDENTIFIER_ StringLit

    importsField ::= IMPORTS_ mdField

    includePathField ::= INCLUDEPATH_ StringLit

    inlinedAtField ::= INLINEDAT_ mdField

    isDeclField ::= ISDECL_ boolConst

    isDefinitionField ::= ISDEFINITION_ boolConst

    isImplicitCodeField ::= ISIMPLICITCODE_ boolConst

    isLocalField ::= ISLOCAL_ boolConst

    isOptimizedField ::= ISOPTIMIZED_ boolConst

    isUnsignedField ::= ISUNSIGNED_ boolConst

    apiNotesField ::= APINOTES_ StringLit

    languageField ::= LANGUAGE_ DwarfLang

    lineField ::= LINE_ IntLit

    linkageNameField ::= LINKAGENAME_ StringLit

    lowerBoundField ::= LOWERBOUND_ mdFieldOrInt

    macrosField ::= MACROS_ mdField

    nameTableKindField ::= NAMETABLEKIND_ grp_505

    nodesField ::= NODES_ mdField

    offsetField ::= OFFSET_ IntLit

    producerField ::= PRODUCER_ StringLit

    rangesBaseAddressField ::= RANGESBASEADDRESS_ boolConst

    rankField ::= RANK_ mdFieldOrInt

    retainedNodesField ::= RETAINEDNODES_ mdField

    retainedTypesField ::= RETAINEDTYPES_ mdField

    runtimeLangField ::= RUNTIMELANG_ DwarfLang

    runtimeVersionField ::= RUNTIMEVERSION_ IntLit

    scopeField ::= SCOPE_ mdField

    scopeLineField ::= SCOPELINE_ IntLit

    sdkField ::= SDK_ StringLit

    setterField ::= SETTER_ StringLit

    sizeField ::= SIZE_ IntLit

    sourceField ::= SOURCE_ StringLit

    spFlagsField ::= SPFLAGS_ grp_506

    splitDebugFilenameField ::= SPLITDEBUGFILENAME_ StringLit

    splitDebugInliningField ::= SPLITDEBUGINLINING_ boolConst

    strideField ::= STRIDE_ mdFieldOrInt

    stringLengthField ::= STRINGLENGTH_ mdField

    stringLengthExpressionField ::= STRINGLENGTHEXPRESSION_ mdField

    stringLocationExpressionField ::= STRINGLOCATIONEXPRESSION_ mdField

    sysrootField ::= SYSROOT_ StringLit

    targetFuncNameField ::= TARGETFUNCNAME_ StringLit

    templateParamsField ::= TEMPLATEPARAMS_ mdField

    thisAdjustmentField ::= THISADJUSTMENT_ IntLit

    thrownTypesField ::= THROWNTYPES_ mdField

    typeMacinfoField ::= TYPE_ DwarfMacinfo

    typesField ::= TYPES_ mdField

    unitField ::= UNIT_ mdField

    upperBoundField ::= UPPERBOUND_ mdFieldOrInt

    valueIntField ::= VALUE_ IntLit

    valueStringField ::= VALUE_ StringLit

    varField ::= VAR_ mdField

    virtualIndexField ::= VIRTUALINDEX_ IntLit

    virtualityField ::= VIRTUALITY_ DwarfVirtuality

    vtableHolderField ::= VTABLEHOLDER_ mdField

    list_1 ::= $empty | list_1 topLevelEntity

    grp_2 ::= ANY | EXACTMATCH | LARGEST | NODEDUPLICATE | SAMESIZE

    opt_3 ::= preemption | $empty

    opt_4 ::= visibility | $empty

    opt_5 ::= dllStorageClass | $empty

    opt_6 ::= threadLocal | $empty

    opt_7 ::= unnamedAddr | $empty

    opt_8 ::= addrSpace | $empty

    opt_9 ::= externallyInitialized | $empty

    seq_10 ::= COMMA globalField

    list_11 ::= $empty | list_11 seq_10

    seq_12 ::= COMMA metadataAttachment

    list_13 ::= $empty | list_13 seq_12

    list_14 ::= $empty | list_14 funcAttribute

    opt_15 ::= internalLinkage | $empty

    opt_16 ::= preemption | $empty

    opt_17 ::= visibility | $empty

    opt_18 ::= dllStorageClass | $empty

    opt_19 ::= threadLocal | $empty

    opt_20 ::= unnamedAddr | $empty

    opt_21 ::= addrSpace | $empty

    opt_22 ::= externallyInitialized | $empty

    seq_23 ::= COMMA globalField

    list_24 ::= $empty | list_24 seq_23

    seq_25 ::= COMMA metadataAttachment

    list_26 ::= $empty | list_26 seq_25

    list_27 ::= $empty | list_27 funcAttribute

    opt_28 ::= linkage | $empty

    opt_29 ::= preemption | $empty

    opt_30 ::= visibility | $empty

    opt_31 ::= dllStorageClass | $empty

    opt_32 ::= threadLocal | $empty

    opt_33 ::= unnamedAddr | $empty

    grp_34 ::= ALIAS | IFUNC

    seq_35 ::= COMMA partition

    list_36 ::= $empty | list_36 seq_35

    list_37 ::= $empty | list_37 metadataAttachment

    list_38 ::= $empty | list_38 metadataAttachment

    list_39 ::= $empty | list_39 funcAttribute

    seq_40 ::= COMMA metadataNode

    list_41 ::= $empty | list_41 seq_40

    seq_42 ::= metadataNode list_41

    opt_43 ::= seq_42 | $empty

    opt_44 ::= distinct | $empty

    grp_45 ::= mdTuple | specializedMDNode

    seq_46 ::= COMMA IntLit

    list_47 ::= $empty | list_47 seq_46

    seq_48 ::= COMMA IntLit

    list_49 ::= $empty | list_49 seq_48

    opt_50 ::= linkage | $empty

    opt_51 ::= preemption | $empty

    opt_52 ::= visibility | $empty

    opt_53 ::= dllStorageClass | $empty

    opt_54 ::= callingConv | $empty

    list_55 ::= $empty | list_55 returnAttribute

    opt_56 ::= unnamedAddr | $empty

    opt_57 ::= addrSpace | $empty

    list_58 ::= $empty | list_58 funcHdrField

    list_59 ::= basicBlock | list_59 basicBlock

    list_60 ::= $empty | list_60 useListOrder

    opt_61 ::= LabelIdent | $empty

    list_62 ::= $empty | list_62 instruction

    seq_63 ::= COMMA metadataAttachment

    list_64 ::= $empty | list_64 seq_63

    seq_65 ::= COMMA metadataAttachment

    list_66 ::= $empty | list_66 seq_65

    seq_67 ::= COMMA metadataAttachment

    list_68 ::= $empty | list_68 seq_67

    seq_69 ::= COMMA metadataAttachment

    list_70 ::= $empty | list_70 seq_69

    list_71 ::= $empty | list_71 case_nt

    seq_72 ::= COMMA metadataAttachment

    list_73 ::= $empty | list_73 seq_72

    seq_74 ::= COMMA label_nt

    opt_75 ::= seq_74 | $empty

    seq_76 ::= label_nt opt_75

    opt_77 ::= seq_76 | $empty

    seq_78 ::= COMMA metadataAttachment

    list_79 ::= $empty | list_79 seq_78

    seq_80 ::= COMMA metadataAttachment

    list_81 ::= $empty | list_81 seq_80

    seq_82 ::= COMMA metadataAttachment

    list_83 ::= $empty | list_83 seq_82

    seq_84 ::= COMMA metadataAttachment

    list_85 ::= $empty | list_85 seq_84

    seq_86 ::= COMMA metadataAttachment

    list_87 ::= $empty | list_87 seq_86

    opt_88 ::= callingConv | $empty

    list_89 ::= $empty | list_89 returnAttribute

    opt_90 ::= addrSpace | $empty

    list_91 ::= $empty | list_91 funcAttribute

    seq_92 ::= operandBundle COMMA

    list_93 ::= seq_92 | list_93 seq_92

    seq_94 ::= LBRACKET list_93 RBRACKET

    opt_95 ::= seq_94 | $empty

    seq_96 ::= COMMA metadataAttachment

    list_97 ::= $empty | list_97 seq_96

    opt_98 ::= callingConv | $empty

    list_99 ::= $empty | list_99 returnAttribute

    opt_100 ::= addrSpace | $empty

    list_101 ::= $empty | list_101 funcAttribute

    seq_102 ::= operandBundle COMMA

    list_103 ::= seq_102 | list_103 seq_102

    seq_104 ::= LBRACKET list_103 RBRACKET

    opt_105 ::= seq_104 | $empty

    seq_106 ::= COMMA label_nt

    list_107 ::= $empty | list_107 seq_106

    seq_108 ::= label_nt list_107

    opt_109 ::= seq_108 | $empty

    seq_110 ::= COMMA metadataAttachment

    list_111 ::= $empty | list_111 seq_110

    seq_112 ::= COMMA metadataAttachment

    list_113 ::= $empty | list_113 seq_112

    seq_114 ::= COMMA label_nt

    list_115 ::= $empty | list_115 seq_114

    seq_116 ::= COMMA diExpressionField

    list_117 ::= $empty | list_117 seq_116

    seq_118 ::= diExpressionField list_117

    opt_119 ::= seq_118 | $empty

    grp_120 ::= NO_SANITIZE_ADDRESS | NO_SANITIZE_HWADDRESS | SANITIZE_ADDRESS_DYNINIT | SANITIZE_MEMTAG

    seq_121 ::= LPAREN ComdatName RPAREN

    opt_122 ::= seq_121 | $empty

    seq_123 ::= COMMA typeConst

    list_124 ::= $empty | list_124 seq_123

    seq_125 ::= typeConst list_124

    opt_126 ::= seq_125 | $empty

    seq_127 ::= COMMA typeConst

    list_128 ::= $empty | list_128 seq_127

    seq_129 ::= typeConst list_128

    opt_130 ::= seq_129 | $empty

    seq_131 ::= COMMA typeConst

    list_132 ::= $empty | list_132 seq_131

    seq_133 ::= typeConst list_132

    opt_134 ::= seq_133 | $empty

    seq_135 ::= COMMA typeConst

    list_136 ::= $empty | list_136 seq_135

    seq_137 ::= typeConst list_136

    opt_138 ::= seq_137 | $empty

    seq_139 ::= COMMA mdField

    list_140 ::= $empty | list_140 seq_139

    seq_141 ::= mdField list_140

    opt_142 ::= seq_141 | $empty

    seq_143 ::= COMMA typeValue

    list_144 ::= $empty | list_144 seq_143

    seq_145 ::= typeValue list_144

    opt_146 ::= seq_145 | $empty

    opt_147 ::= SIDEEFFECT | $empty

    opt_148 ::= ALIGNSTACK | $empty

    opt_149 ::= INTELDIALECT | $empty

    opt_150 ::= UNWIND | $empty

    opt_151 ::= addrSpace | $empty

    opt_152 ::= ELLIPSIS | $empty

    seq_153 ::= COMMA param

    list_154 ::= $empty | list_154 seq_153

    seq_155 ::= COMMA ELLIPSIS

    opt_156 ::= seq_155 | $empty

    list_157 ::= $empty | list_157 paramAttribute

    opt_158 ::= LocalIdent | $empty

    seq_159 ::= COMMA IntLit

    opt_160 ::= seq_159 | $empty

    grp_161 ::= ASYNC | SYNC

    grp_163 ::= IntLit | IntLit COMMA IntLit

    grp_162 ::= LPAREN grp_163 RPAREN

    opt_164 ::= grp_162 | $empty

    seq_165 ::= LPAREN type RPAREN

    opt_166 ::= seq_165 | $empty

    opt_167 ::= addrSpace | $empty

    seq_168 ::= COMMA type

    list_169 ::= $empty | list_169 seq_168

    seq_170 ::= type list_169

    opt_171 ::= seq_170 | $empty

    seq_172 ::= COMMA type

    list_173 ::= $empty | list_173 seq_172

    seq_174 ::= type list_173

    opt_175 ::= seq_174 | $empty

    opt_176 ::= addrSpace | $empty

    seq_177 ::= LPAREN tlsModel RPAREN

    opt_178 ::= seq_177 | $empty

    opt_179 ::= inBounds | $empty

    seq_180 ::= COMMA gepIndex

    list_181 ::= $empty | list_181 seq_180

    opt_182 ::= INRANGE | $empty

    list_183 ::= $empty | list_183 overflowFlag

    opt_184 ::= EXACT | $empty

    opt_185 ::= EXACT | $empty

    list_186 ::= $empty | list_186 overflowFlag

    list_187 ::= $empty | list_187 overflowFlag

    list_188 ::= $empty | list_188 overflowFlag

    opt_189 ::= VOLATILE | $empty

    seq_190 ::= COMMA align

    opt_191 ::= seq_190 | $empty

    seq_192 ::= COMMA metadataAttachment

    list_193 ::= $empty | list_193 seq_192

    opt_194 ::= VOLATILE | $empty

    opt_195 ::= syncScope | $empty

    seq_196 ::= COMMA align

    opt_197 ::= seq_196 | $empty

    seq_198 ::= COMMA metadataAttachment

    list_199 ::= $empty | list_199 seq_198

    opt_200 ::= syncScope | $empty

    seq_201 ::= COMMA metadataAttachment

    list_202 ::= $empty | list_202 seq_201

    list_203 ::= $empty | list_203 fastMathFlag

    seq_204 ::= COMMA metadataAttachment

    list_205 ::= $empty | list_205 seq_204

    list_206 ::= $empty | list_206 overflowFlag

    seq_207 ::= COMMA metadataAttachment

    list_208 ::= $empty | list_208 seq_207

    list_209 ::= $empty | list_209 fastMathFlag

    seq_210 ::= COMMA metadataAttachment

    list_211 ::= $empty | list_211 seq_210

    list_212 ::= $empty | list_212 overflowFlag

    seq_213 ::= COMMA metadataAttachment

    list_214 ::= $empty | list_214 seq_213

    list_215 ::= $empty | list_215 fastMathFlag

    seq_216 ::= COMMA metadataAttachment

    list_217 ::= $empty | list_217 seq_216

    list_218 ::= $empty | list_218 overflowFlag

    seq_219 ::= COMMA metadataAttachment

    list_220 ::= $empty | list_220 seq_219

    list_221 ::= $empty | list_221 fastMathFlag

    seq_222 ::= COMMA metadataAttachment

    list_223 ::= $empty | list_223 seq_222

    opt_224 ::= EXACT | $empty

    seq_225 ::= COMMA metadataAttachment

    list_226 ::= $empty | list_226 seq_225

    opt_227 ::= EXACT | $empty

    seq_228 ::= COMMA metadataAttachment

    list_229 ::= $empty | list_229 seq_228

    list_230 ::= $empty | list_230 fastMathFlag

    seq_231 ::= COMMA metadataAttachment

    list_232 ::= $empty | list_232 seq_231

    seq_233 ::= COMMA metadataAttachment

    list_234 ::= $empty | list_234 seq_233

    seq_235 ::= COMMA metadataAttachment

    list_236 ::= $empty | list_236 seq_235

    list_237 ::= $empty | list_237 fastMathFlag

    seq_238 ::= COMMA metadataAttachment

    list_239 ::= $empty | list_239 seq_238

    list_240 ::= $empty | list_240 overflowFlag

    seq_241 ::= COMMA metadataAttachment

    list_242 ::= $empty | list_242 seq_241

    opt_243 ::= EXACT | $empty

    seq_244 ::= COMMA metadataAttachment

    list_245 ::= $empty | list_245 seq_244

    opt_246 ::= EXACT | $empty

    seq_247 ::= COMMA metadataAttachment

    list_248 ::= $empty | list_248 seq_247

    seq_249 ::= COMMA metadataAttachment

    list_250 ::= $empty | list_250 seq_249

    seq_251 ::= COMMA metadataAttachment

    list_252 ::= $empty | list_252 seq_251

    seq_253 ::= COMMA metadataAttachment

    list_254 ::= $empty | list_254 seq_253

    seq_255 ::= COMMA metadataAttachment

    list_256 ::= $empty | list_256 seq_255

    seq_257 ::= COMMA metadataAttachment

    list_258 ::= $empty | list_258 seq_257

    seq_259 ::= COMMA metadataAttachment

    list_260 ::= $empty | list_260 seq_259

    seq_261 ::= COMMA IntLit

    list_262 ::= seq_261 | list_262 seq_261

    seq_263 ::= COMMA metadataAttachment

    list_264 ::= $empty | list_264 seq_263

    seq_265 ::= COMMA IntLit

    list_266 ::= seq_265 | list_266 seq_265

    seq_267 ::= COMMA metadataAttachment

    list_268 ::= $empty | list_268 seq_267

    opt_269 ::= INALLOCA | $empty

    opt_270 ::= SWIFTERROR | $empty

    seq_271 ::= COMMA typeValue

    opt_272 ::= seq_271 | $empty

    seq_273 ::= COMMA align

    opt_274 ::= seq_273 | $empty

    seq_275 ::= COMMA addrSpace

    opt_276 ::= seq_275 | $empty

    seq_277 ::= COMMA metadataAttachment

    list_278 ::= $empty | list_278 seq_277

    opt_279 ::= VOLATILE | $empty

    seq_280 ::= COMMA align

    opt_281 ::= seq_280 | $empty

    seq_282 ::= COMMA metadataAttachment

    list_283 ::= $empty | list_283 seq_282

    opt_284 ::= VOLATILE | $empty

    opt_285 ::= syncScope | $empty

    seq_286 ::= COMMA align

    opt_287 ::= seq_286 | $empty

    seq_288 ::= COMMA metadataAttachment

    list_289 ::= $empty | list_289 seq_288

    opt_290 ::= WEAK | $empty

    opt_291 ::= VOLATILE | $empty

    opt_292 ::= syncScope | $empty

    seq_293 ::= COMMA align

    opt_294 ::= seq_293 | $empty

    seq_295 ::= COMMA metadataAttachment

    list_296 ::= $empty | list_296 seq_295

    opt_297 ::= VOLATILE | $empty

    opt_298 ::= syncScope | $empty

    seq_299 ::= COMMA align

    opt_300 ::= seq_299 | $empty

    seq_301 ::= COMMA metadataAttachment

    list_302 ::= $empty | list_302 seq_301

    opt_303 ::= inBounds | $empty

    seq_304 ::= COMMA typeValue

    list_305 ::= $empty | list_305 seq_304

    seq_306 ::= COMMA metadataAttachment

    list_307 ::= $empty | list_307 seq_306

    seq_308 ::= COMMA metadataAttachment

    list_309 ::= $empty | list_309 seq_308

    seq_310 ::= COMMA metadataAttachment

    list_311 ::= $empty | list_311 seq_310

    seq_312 ::= COMMA metadataAttachment

    list_313 ::= $empty | list_313 seq_312

    seq_314 ::= COMMA metadataAttachment

    list_315 ::= $empty | list_315 seq_314

    seq_316 ::= COMMA metadataAttachment

    list_317 ::= $empty | list_317 seq_316

    seq_318 ::= COMMA metadataAttachment

    list_319 ::= $empty | list_319 seq_318

    seq_320 ::= COMMA metadataAttachment

    list_321 ::= $empty | list_321 seq_320

    seq_322 ::= COMMA metadataAttachment

    list_323 ::= $empty | list_323 seq_322

    seq_324 ::= COMMA metadataAttachment

    list_325 ::= $empty | list_325 seq_324

    seq_326 ::= COMMA metadataAttachment

    list_327 ::= $empty | list_327 seq_326

    seq_328 ::= COMMA metadataAttachment

    list_329 ::= $empty | list_329 seq_328

    seq_330 ::= COMMA metadataAttachment

    list_331 ::= $empty | list_331 seq_330

    seq_332 ::= COMMA metadataAttachment

    list_333 ::= $empty | list_333 seq_332

    seq_334 ::= COMMA metadataAttachment

    list_335 ::= $empty | list_335 seq_334

    list_336 ::= $empty | list_336 fastMathFlag

    seq_337 ::= COMMA metadataAttachment

    list_338 ::= $empty | list_338 seq_337

    list_339 ::= $empty | list_339 fastMathFlag

    seq_340 ::= COMMA inc

    list_341 ::= $empty | list_341 seq_340

    seq_342 ::= inc list_341

    seq_343 ::= COMMA metadataAttachment

    list_344 ::= $empty | list_344 seq_343

    list_345 ::= $empty | list_345 fastMathFlag

    seq_346 ::= COMMA metadataAttachment

    list_347 ::= $empty | list_347 seq_346

    grp_348 ::= MUSTTAIL | NOTAIL | TAIL

    opt_349 ::= grp_348 | $empty

    list_350 ::= $empty | list_350 fastMathFlag

    opt_351 ::= callingConv | $empty

    list_352 ::= $empty | list_352 returnAttribute

    opt_353 ::= addrSpace | $empty

    list_354 ::= $empty | list_354 funcAttribute

    seq_355 ::= COMMA operandBundle

    list_356 ::= $empty | list_356 seq_355

    seq_357 ::= LBRACKET operandBundle list_356 RBRACKET

    opt_358 ::= seq_357 | $empty

    seq_359 ::= COMMA metadataAttachment

    list_360 ::= $empty | list_360 seq_359

    seq_361 ::= COMMA metadataAttachment

    list_362 ::= $empty | list_362 seq_361

    opt_363 ::= CLEANUP | $empty

    list_364 ::= $empty | list_364 clause

    seq_365 ::= COMMA metadataAttachment

    list_366 ::= $empty | list_366 seq_365

    seq_367 ::= COMMA exceptionArg

    list_368 ::= $empty | list_368 seq_367

    seq_369 ::= exceptionArg list_368

    opt_370 ::= seq_369 | $empty

    seq_371 ::= COMMA metadataAttachment

    list_372 ::= $empty | list_372 seq_371

    seq_373 ::= COMMA exceptionArg

    list_374 ::= $empty | list_374 seq_373

    seq_375 ::= exceptionArg list_374

    opt_376 ::= seq_375 | $empty

    seq_377 ::= COMMA metadataAttachment

    list_378 ::= $empty | list_378 seq_377

    seq_379 ::= COMMA typeValue

    list_380 ::= $empty | list_380 seq_379

    seq_381 ::= typeValue list_380

    opt_382 ::= seq_381 | $empty

    grp_383 ::= CATCH | FILTER

    opt_384 ::= ELLIPSIS | $empty

    seq_385 ::= COMMA arg

    list_386 ::= $empty | list_386 seq_385

    seq_387 ::= COMMA ELLIPSIS

    opt_388 ::= seq_387 | $empty

    list_389 ::= $empty | list_389 paramAttribute

    seq_390 ::= COMMA diBasicTypeField

    list_391 ::= $empty | list_391 seq_390

    seq_392 ::= diBasicTypeField list_391

    opt_393 ::= seq_392 | $empty

    seq_394 ::= COMMA diCommonBlockField

    list_395 ::= $empty | list_395 seq_394

    seq_396 ::= diCommonBlockField list_395

    opt_397 ::= seq_396 | $empty

    seq_398 ::= COMMA diCompileUnitField

    list_399 ::= $empty | list_399 seq_398

    seq_400 ::= diCompileUnitField list_399

    opt_401 ::= seq_400 | $empty

    seq_402 ::= COMMA diCompositeTypeField

    list_403 ::= $empty | list_403 seq_402

    seq_404 ::= diCompositeTypeField list_403

    opt_405 ::= seq_404 | $empty

    seq_406 ::= COMMA diDerivedTypeField

    list_407 ::= $empty | list_407 seq_406

    seq_408 ::= diDerivedTypeField list_407

    opt_409 ::= seq_408 | $empty

    seq_410 ::= COMMA diEnumeratorField

    list_411 ::= $empty | list_411 seq_410

    seq_412 ::= diEnumeratorField list_411

    opt_413 ::= seq_412 | $empty

    seq_414 ::= COMMA diFileField

    list_415 ::= $empty | list_415 seq_414

    seq_416 ::= diFileField list_415

    opt_417 ::= seq_416 | $empty

    seq_418 ::= COMMA diGlobalVariableField

    list_419 ::= $empty | list_419 seq_418

    seq_420 ::= diGlobalVariableField list_419

    opt_421 ::= seq_420 | $empty

    seq_422 ::= COMMA diGlobalVariableExpressionField

    list_423 ::= $empty | list_423 seq_422

    seq_424 ::= diGlobalVariableExpressionField list_423

    opt_425 ::= seq_424 | $empty

    seq_426 ::= COMMA diImportedEntityField

    list_427 ::= $empty | list_427 seq_426

    seq_428 ::= diImportedEntityField list_427

    opt_429 ::= seq_428 | $empty

    seq_430 ::= COMMA diLabelField

    list_431 ::= $empty | list_431 seq_430

    seq_432 ::= diLabelField list_431

    opt_433 ::= seq_432 | $empty

    seq_434 ::= COMMA diLexicalBlockField

    list_435 ::= $empty | list_435 seq_434

    seq_436 ::= diLexicalBlockField list_435

    opt_437 ::= seq_436 | $empty

    seq_438 ::= COMMA diLexicalBlockFileField

    list_439 ::= $empty | list_439 seq_438

    seq_440 ::= diLexicalBlockFileField list_439

    opt_441 ::= seq_440 | $empty

    seq_442 ::= COMMA diLocalVariableField

    list_443 ::= $empty | list_443 seq_442

    seq_444 ::= diLocalVariableField list_443

    opt_445 ::= seq_444 | $empty

    seq_446 ::= COMMA diLocationField

    list_447 ::= $empty | list_447 seq_446

    seq_448 ::= diLocationField list_447

    opt_449 ::= seq_448 | $empty

    seq_450 ::= COMMA diMacroField

    list_451 ::= $empty | list_451 seq_450

    seq_452 ::= diMacroField list_451

    opt_453 ::= seq_452 | $empty

    seq_454 ::= COMMA diMacroFileField

    list_455 ::= $empty | list_455 seq_454

    seq_456 ::= diMacroFileField list_455

    opt_457 ::= seq_456 | $empty

    seq_458 ::= COMMA diModuleField

    list_459 ::= $empty | list_459 seq_458

    seq_460 ::= diModuleField list_459

    opt_461 ::= seq_460 | $empty

    seq_462 ::= COMMA diNamespaceField

    list_463 ::= $empty | list_463 seq_462

    seq_464 ::= diNamespaceField list_463

    opt_465 ::= seq_464 | $empty

    seq_466 ::= COMMA diObjCPropertyField

    list_467 ::= $empty | list_467 seq_466

    seq_468 ::= diObjCPropertyField list_467

    opt_469 ::= seq_468 | $empty

    seq_470 ::= COMMA diStringTypeField

    list_471 ::= $empty | list_471 seq_470

    seq_472 ::= diStringTypeField list_471

    opt_473 ::= seq_472 | $empty

    seq_474 ::= COMMA diSubprogramField

    list_475 ::= $empty | list_475 seq_474

    seq_476 ::= diSubprogramField list_475

    opt_477 ::= seq_476 | $empty

    seq_478 ::= COMMA diSubrangeField

    list_479 ::= $empty | list_479 seq_478

    seq_480 ::= diSubrangeField list_479

    opt_481 ::= seq_480 | $empty

    seq_482 ::= COMMA diSubroutineTypeField

    list_483 ::= $empty | list_483 seq_482

    seq_484 ::= diSubroutineTypeField list_483

    opt_485 ::= seq_484 | $empty

    seq_486 ::= COMMA diTemplateTypeParameterField

    list_487 ::= $empty | list_487 seq_486

    seq_488 ::= diTemplateTypeParameterField list_487

    opt_489 ::= seq_488 | $empty

    seq_490 ::= COMMA diTemplateValueParameterField

    seq_491 ::= diTemplateValueParameterField seq_490

    opt_492 ::= seq_491 | $empty

    seq_493 ::= COMMA genericDINodeField

    list_494 ::= $empty | list_494 seq_493

    seq_495 ::= genericDINodeField list_494

    opt_496 ::= seq_495 | $empty

    seq_497 ::= COMMA mdField

    list_498 ::= $empty | list_498 seq_497

    seq_499 ::= mdField list_498

    opt_500 ::= seq_499 | $empty

    grp_501 ::= PIPE DiFlag

    list_502 ::= $empty | list_502 grp_501

    grp_503 ::= DEBUGDIRECTIVESONLY | FULLDEBUG | LINETABLESONLY | NODEBUG

    grp_504 ::= IntLit | DwarfAttEncoding

    grp_505 ::= GNU | NONE | DEFAULT

    grp_507 ::= PIPE diSPFlag

    list_508 ::= $empty | list_508 grp_507

    grp_506 ::= diSPFlag list_508

%End
