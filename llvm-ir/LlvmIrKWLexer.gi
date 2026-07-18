-- Keyword filter for LlvmIr (aligned to parser terminal names)
%options package=lpg.grammars.llvm_ir
%options template=KeywordTemplateF.gi
%options fp=LlvmIrKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ACQUIRE
    ADD
    ADDRSPACE
    ADDRSPACECAST
    AFN
    ALIAS
    ALIGN
    ALIGNSTACK
    ALLOCA
    ALLOCALIGN
    ALLOCATED_
    ALLOCKIND
    ALLOCPTR
    ALLOCSIZE
    ALWAYSINLINE
    AND
    ANNOTATIONS_
    ANY
    ANYREGCC
    APINOTES_
    APPENDING
    ARCP
    ARGMEMONLY
    ARG_
    ASHR
    ASM
    ASSOCIATED_
    ASYNC
    ATOMIC
    ATOMICRMW
    ATTRIBUTES
    AttrGroupId
    BANG
    BASETYPE_
    BFLOAT
    BITCAST
    BLOCKADDRESS
    BR
    BUILTIN
    BYREF
    BYVAL
    CALL
    CALLBR
    CALLER
    CATCH
    CATCHPAD
    CATCHRET
    CATCHSWITCH
    CC
    CCC
    CHECKSUM_
    CLEANUP
    CLEANUPPAD
    CLEANUPRET
    CMPXCHG
    COLD
    COLDCC
    COLUMN_
    COMDAT
    COMMON
    CONFIGMACROS_
    CONTAININGTYPE_
    CONTRACT
    CONVERGENT
    COUNT_
    ChecksumKind
    ComdatName
    DATALAYOUT
    DATALOCATION_
    DEBUGDIRECTIVESONLY
    DEBUGINFOFORPROFILING_
    DECLARATION_
    DECLARE
    DEFAULT
    DEFAULTED_
    DEFINE
    DEREFERENCEABLE
    DIRECTORY_
    DISCRIMINATOR_
    DISTINCT
    DLLEXPORT
    DLLIMPORT
    DOUBLE
    DWARFADDRESSSPACE_
    DWOID_
    DiFlag
    DispFlag
    DwarfAttEncoding
    DwarfCc
    DwarfLang
    DwarfMacinfo
    DwarfOp
    DwarfTag
    DwarfVirtuality
    ELEMENTS_
    ELEMENTTYPE
    EMISSIONKIND_
    ENCODING_
    ENTITY_
    ENUMS_
    EXACT
    EXACTMATCH
    EXPORTSYMBOLS_
    EXPR_
    EXTERNAL
    EXTRACTELEMENT
    EXTRACTVALUE
    EXTRADATA_
    FADD
    FALSE
    FAST
    FASTCC
    FCMP
    FDIV
    FENCE
    FILENAME_
    FILE_
    FILTER
    FLAGS_
    FLOAT
    FMAX
    FMIN
    FMUL
    FNEG
    FPEXT
    FPTOSI
    FPTOUI
    FPTRUNC
    FREEZE
    FREM
    FROM
    FSUB
    FULLDEBUG
    FloatLit
    GC
    GETELEMENTPTR
    GETTER_
    GHCCC
    GLOBAL
    GLOBALS_
    GNU
    HALF
    HEADER_
    HHVMCC
    HIDDEN
    HOT
    ICMP
    IFUNC
    IMMARG
    IMPORTS_
    INACCESSIBLEMEMONLY
    INALLOCA
    INBOUNDS
    INCLUDEPATH_
    INDIRECTBR
    INITIALEXEC
    INLINEDAT_
    INLINEHINT
    INRANGE
    INREG
    INSERTELEMENT
    INSERTVALUE
    INTELDIALECT
    INTERNAL
    INTTOPTR
    INVOKE
    ISDECL_
    ISDEFINITION_
    ISIMPLICITCODE_
    ISLOCAL_
    ISOPTIMIZED_
    ISUNSIGNED_
    JUMPTABLE
    LABEL
    LANDINGPAD
    LANGUAGE_
    LARGEST
    LINETABLESONLY
    LINE_
    LINKAGENAME_
    LINKONCE
    LOAD
    LOCALDYNAMIC
    LOCALEXEC
    LOWERBOUND_
    LSHR
    LabelIdent
    MACROS_
    MAX
    METADATA
    MIN
    MINSIZE
    MODULE
    MONOTONIC
    MUL
    MUSTPROGRESS
    MUSTTAIL
    MetadataId
    MetadataName
    NAKED
    NAMETABLEKIND_
    NAME_
    NAND
    NE
    NEST
    NINF
    NNAN
    NOALIAS
    NOBUILTIN
    NOCALLBACK
    NOCAPTURE
    NODEBUG
    NODEDUPLICATE
    NODES_
    NODUPLICATE
    NOFREE
    NOIMPLICITFLOAT
    NOINLINE
    NOMERGE
    NONE
    NONLAZYBIND
    NONNULL
    NOPROFILE
    NORECURSE
    NOREDZONE
    NORETURN
    NOSYNC
    NOTAIL
    NOUNDEF
    NOUNWIND
    NSW
    NSZ
    NUW
    OFFSET_
    OGE
    OGT
    OLE
    OLT
    ONE
    OPAQUE
    OPERANDS_
    OPTFORFUZZING
    OPTNONE
    OPTSIZE
    OR
    ORD
    PARTITION
    PERSONALITY
    PHI
    PIPE
    POISON
    PREALLOCATED
    PREFIX
    PRESPLITCOROUTINE
    PRIVATE
    PRODUCER_
    PROLOGUE
    PROTECTED
    PTR
    PTRTOINT
    RANGESBASEADDRESS_
    RANK_
    READNONE
    READONLY
    REASSOC
    RELEASE
    RESUME
    RET
    RETAINEDNODES_
    RETAINEDTYPES_
    RETURNED
    RUNTIMELANG_
    RUNTIMEVERSION_
    SAFESTACK
    SAMESIZE
    SCOPELINE_
    SCOPE_
    SDIV
    SDK_
    SECTION
    SELECT
    SETTER_
    SEXT
    SGE
    SGT
    SHADOWCALLSTACK
    SHL
    SHUFFLEVECTOR
    SIDEEFFECT
    SIGNEXT
    SITOFP
    SIZE_
    SLE
    SLT
    SOURCE_
    SPECULATABLE
    SPFLAGS_
    SPLITDEBUGFILENAME_
    SPLITDEBUGINLINING_
    SREM
    SRET
    SSP
    SSPSTRONG
    STORE
    STRICTFP
    STRIDE_
    STRINGLENGTHEXPRESSION_
    STRINGLENGTH_
    STRINGLOCATIONEXPRESSION_
    SUB
    SWIFTASYNC
    SWIFTCC
    SWIFTERROR
    SWIFTSELF
    SWIFTTAILCC
    SWITCH
    SYNC
    SYNCSCOPE
    SYSROOT_
    TAG_
    TAIL
    TAILCC
    TARGET
    TARGETFUNCNAME_
    TEMPLATEPARAMS_
    THISADJUSTMENT_
    THROWNTYPES_
    TO
    TOKEN
    TRIPLE
    TRUE
    TRUNC
    TYPES_
    TYPE_
    UDIV
    UGE
    UGT
    UITOFP
    ULE
    ULT
    UMAX
    UMIN
    UNDEF
    UNE
    UNIT_
    UNO
    UNORDERED
    UNREACHABLE
    UNWIND
    UPPERBOUND_
    UREM
    USELISTORDER
    UWTABLE
    VALUE_
    VAR_
    VIRTUALINDEX_
    VIRTUALITY_
    VOID
    VOLATILE
    VSCALE
    VTABLEHOLDER_
    WEAK
    WILLRETURN
    WITHIN
    WRITEONLY
    XCHG
    XOR
    ZEROEXT
    ZEROINITIALIZER
    ZEXT
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= s t r i n g l o c a t i o n e x p r e s s i o n /.$setResult($_STRINGLOCATIONEXPRESSION_);./
    Keyword ::= s t r i n g l e n g t h e x p r e s s i o n /.$setResult($_STRINGLENGTHEXPRESSION_);./
    Keyword ::= d e b u g i n f o f o r p r o f i l i n g /.$setResult($_DEBUGINFOFORPROFILING_);./
    Keyword ::= d e b u g d i r e c t i v e s o n l y /.$setResult($_DEBUGDIRECTIVESONLY);./
    Keyword ::= i n a c c e s s i b l e m e m o n l y /.$setResult($_INACCESSIBLEMEMONLY);./
    Keyword ::= s p l i t d e b u g f i l e n a m e /.$setResult($_SPLITDEBUGFILENAME_);./
    Keyword ::= s p l i t d e b u g i n l i n i n g /.$setResult($_SPLITDEBUGINLINING_);./
    Keyword ::= d w a r f a d d r e s s s p a c e /.$setResult($_DWARFADDRESSSPACE_);./
    Keyword ::= p r e s p l i t c o r o u t i n e /.$setResult($_PRESPLITCOROUTINE);./
    Keyword ::= r a n g e s b a s e a d d r e s s /.$setResult($_RANGESBASEADDRESS_);./
    Keyword ::= d w a r f a t t e n c o d i n g /.$setResult($_DwarfAttEncoding);./
    Keyword ::= d e r e f e r e n c e a b l e /.$setResult($_DEREFERENCEABLE);./
    Keyword ::= d w a r f v i r t u a l i t y /.$setResult($_DwarfVirtuality);./
    Keyword ::= n o i m p l i c i t f l o a t /.$setResult($_NOIMPLICITFLOAT);./
    Keyword ::= s h a d o w c a l l s t a c k /.$setResult($_SHADOWCALLSTACK);./
    Keyword ::= z e r o i n i t i a l i z e r /.$setResult($_ZEROINITIALIZER);./
    Keyword ::= c o n t a i n i n g t y p e /.$setResult($_CONTAININGTYPE_);./
    Keyword ::= e x t r a c t e l e m e n t /.$setResult($_EXTRACTELEMENT);./
    Keyword ::= i s i m p l i c i t c o d e /.$setResult($_ISIMPLICITCODE_);./
    Keyword ::= l i n e t a b l e s o n l y /.$setResult($_LINETABLESONLY);./
    Keyword ::= r u n t i m e v e r s i o n /.$setResult($_RUNTIMEVERSION_);./
    Keyword ::= t a r g e t f u n c n a m e /.$setResult($_TARGETFUNCNAME_);./
    Keyword ::= t e m p l a t e p a r a m s /.$setResult($_TEMPLATEPARAMS_);./
    Keyword ::= t h i s a d j u s t m e n t /.$setResult($_THISADJUSTMENT_);./
    Keyword ::= a d d r s p a c e c a s t /.$setResult($_ADDRSPACECAST);./
    Keyword ::= d i s c r i m i n a t o r /.$setResult($_DISCRIMINATOR_);./
    Keyword ::= e x p o r t s y m b o l s /.$setResult($_EXPORTSYMBOLS_);./
    Keyword ::= g e t e l e m e n t p t r /.$setResult($_GETELEMENTPTR);./
    Keyword ::= i n s e r t e l e m e n t /.$setResult($_INSERTELEMENT);./
    Keyword ::= n a m e t a b l e k i n d /.$setResult($_NAMETABLEKIND_);./
    Keyword ::= n o d e d u p l i c a t e /.$setResult($_NODEDUPLICATE);./
    Keyword ::= o p t f o r f u z z i n g /.$setResult($_OPTFORFUZZING);./
    Keyword ::= r e t a i n e d n o d e s /.$setResult($_RETAINEDNODES_);./
    Keyword ::= r e t a i n e d t y p e s /.$setResult($_RETAINEDTYPES_);./
    Keyword ::= s h u f f l e v e c t o r /.$setResult($_SHUFFLEVECTOR);./
    Keyword ::= a l w a y s i n l i n e /.$setResult($_ALWAYSINLINE);./
    Keyword ::= b l o c k a d d r e s s /.$setResult($_BLOCKADDRESS);./
    Keyword ::= c h e c k s u m k i n d /.$setResult($_ChecksumKind);./
    Keyword ::= c o n f i g m a c r o s /.$setResult($_CONFIGMACROS_);./
    Keyword ::= d a t a l o c a t i o n /.$setResult($_DATALOCATION_);./
    Keyword ::= d w a r f m a c i n f o /.$setResult($_DwarfMacinfo);./
    Keyword ::= e m i s s i o n k i n d /.$setResult($_EMISSIONKIND_);./
    Keyword ::= e x t r a c t v a l u e /.$setResult($_EXTRACTVALUE);./
    Keyword ::= i n t e l d i a l e c t /.$setResult($_INTELDIALECT);./
    Keyword ::= i s d e f i n i t i o n /.$setResult($_ISDEFINITION_);./
    Keyword ::= l o c a l d y n a m i c /.$setResult($_LOCALDYNAMIC);./
    Keyword ::= m e t a d a t a n a m e /.$setResult($_MetadataName);./
    Keyword ::= m u s t p r o g r e s s /.$setResult($_MUSTPROGRESS);./
    Keyword ::= p r e a l l o c a t e d /.$setResult($_PREALLOCATED);./
    Keyword ::= s p e c u l a t a b l e /.$setResult($_SPECULATABLE);./
    Keyword ::= s t r i n g l e n g t h /.$setResult($_STRINGLENGTH_);./
    Keyword ::= u s e l i s t o r d e r /.$setResult($_USELISTORDER);./
    Keyword ::= v i r t u a l i n d e x /.$setResult($_VIRTUALINDEX_);./
    Keyword ::= v t a b l e h o l d e r /.$setResult($_VTABLEHOLDER_);./
    Keyword ::= a n n o t a t i o n s /.$setResult($_ANNOTATIONS_);./
    Keyword ::= a t t r g r o u p i d /.$setResult($_AttrGroupId);./
    Keyword ::= c a t c h s w i t c h /.$setResult($_CATCHSWITCH);./
    Keyword ::= d e c l a r a t i o n /.$setResult($_DECLARATION_);./
    Keyword ::= e l e m e n t t y p e /.$setResult($_ELEMENTTYPE);./
    Keyword ::= i n c l u d e p a t h /.$setResult($_INCLUDEPATH_);./
    Keyword ::= i n i t i a l e x e c /.$setResult($_INITIALEXEC);./
    Keyword ::= i n s e r t v a l u e /.$setResult($_INSERTVALUE);./
    Keyword ::= i s o p t i m i z e d /.$setResult($_ISOPTIMIZED_);./
    Keyword ::= l i n k a g e n a m e /.$setResult($_LINKAGENAME_);./
    Keyword ::= n o d u p l i c a t e /.$setResult($_NODUPLICATE);./
    Keyword ::= n o n l a z y b i n d /.$setResult($_NONLAZYBIND);./
    Keyword ::= p e r s o n a l i t y /.$setResult($_PERSONALITY);./
    Keyword ::= r u n t i m e l a n g /.$setResult($_RUNTIMELANG_);./
    Keyword ::= s w i f t t a i l c c /.$setResult($_SWIFTTAILCC);./
    Keyword ::= t h r o w n t y p e s /.$setResult($_THROWNTYPES_);./
    Keyword ::= u n r e a c h a b l e /.$setResult($_UNREACHABLE);./
    Keyword ::= a l i g n s t a c k /.$setResult($_ALIGNSTACK);./
    Keyword ::= a l l o c a l i g n /.$setResult($_ALLOCALIGN);./
    Keyword ::= a r g m e m o n l y /.$setResult($_ARGMEMONLY);./
    Keyword ::= a s s o c i a t e d /.$setResult($_ASSOCIATED_);./
    Keyword ::= a t t r i b u t e s /.$setResult($_ATTRIBUTES);./
    Keyword ::= c l e a n u p p a d /.$setResult($_CLEANUPPAD);./
    Keyword ::= c l e a n u p r e t /.$setResult($_CLEANUPRET);./
    Keyword ::= c o m d a t n a m e /.$setResult($_ComdatName);./
    Keyword ::= c o n v e r g e n t /.$setResult($_CONVERGENT);./
    Keyword ::= d a t a l a y o u t /.$setResult($_DATALAYOUT);./
    Keyword ::= e x a c t m a t c h /.$setResult($_EXACTMATCH);./
    Keyword ::= i n d i r e c t b r /.$setResult($_INDIRECTBR);./
    Keyword ::= i n l i n e h i n t /.$setResult($_INLINEHINT);./
    Keyword ::= i s u n s i g n e d /.$setResult($_ISUNSIGNED_);./
    Keyword ::= l a b e l i d e n t /.$setResult($_LabelIdent);./
    Keyword ::= l a n d i n g p a d /.$setResult($_LANDINGPAD);./
    Keyword ::= l o w e r b o u n d /.$setResult($_LOWERBOUND_);./
    Keyword ::= m e t a d a t a i d /.$setResult($_MetadataId);./
    Keyword ::= n o c a l l b a c k /.$setResult($_NOCALLBACK);./
    Keyword ::= s i d e e f f e c t /.$setResult($_SIDEEFFECT);./
    Keyword ::= s w i f t a s y n c /.$setResult($_SWIFTASYNC);./
    Keyword ::= s w i f t e r r o r /.$setResult($_SWIFTERROR);./
    Keyword ::= u p p e r b o u n d /.$setResult($_UPPERBOUND_);./
    Keyword ::= v i r t u a l i t y /.$setResult($_VIRTUALITY_);./
    Keyword ::= w i l l r e t u r n /.$setResult($_WILLRETURN);./
    Keyword ::= a d d r s p a c e /.$setResult($_ADDRSPACE);./
    Keyword ::= a l l o c a t e d /.$setResult($_ALLOCATED_);./
    Keyword ::= a l l o c k i n d /.$setResult($_ALLOCKIND);./
    Keyword ::= a l l o c s i z e /.$setResult($_ALLOCSIZE);./
    Keyword ::= a p p e n d i n g /.$setResult($_APPENDING);./
    Keyword ::= a t o m i c r m w /.$setResult($_ATOMICRMW);./
    Keyword ::= d e f a u l t e d /.$setResult($_DEFAULTED_);./
    Keyword ::= d i r e c t o r y /.$setResult($_DIRECTORY_);./
    Keyword ::= d l l e x p o r t /.$setResult($_DLLEXPORT);./
    Keyword ::= d l l i m p o r t /.$setResult($_DLLIMPORT);./
    Keyword ::= d w a r f l a n g /.$setResult($_DwarfLang);./
    Keyword ::= e x t r a d a t a /.$setResult($_EXTRADATA_);./
    Keyword ::= f u l l d e b u g /.$setResult($_FULLDEBUG);./
    Keyword ::= i n l i n e d a t /.$setResult($_INLINEDAT_);./
    Keyword ::= j u m p t a b l e /.$setResult($_JUMPTABLE);./
    Keyword ::= l o c a l e x e c /.$setResult($_LOCALEXEC);./
    Keyword ::= m o n o t o n i c /.$setResult($_MONOTONIC);./
    Keyword ::= n o b u i l t i n /.$setResult($_NOBUILTIN);./
    Keyword ::= n o c a p t u r e /.$setResult($_NOCAPTURE);./
    Keyword ::= n o p r o f i l e /.$setResult($_NOPROFILE);./
    Keyword ::= n o r e c u r s e /.$setResult($_NORECURSE);./
    Keyword ::= n o r e d z o n e /.$setResult($_NOREDZONE);./
    Keyword ::= p a r t i t i o n /.$setResult($_PARTITION);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= s a f e s t a c k /.$setResult($_SAFESTACK);./
    Keyword ::= s c o p e l i n e /.$setResult($_SCOPELINE_);./
    Keyword ::= s s p s t r o n g /.$setResult($_SSPSTRONG);./
    Keyword ::= s w i f t s e l f /.$setResult($_SWIFTSELF);./
    Keyword ::= s y n c s c o p e /.$setResult($_SYNCSCOPE);./
    Keyword ::= u n o r d e r e d /.$setResult($_UNORDERED);./
    Keyword ::= w r i t e o n l y /.$setResult($_WRITEONLY);./
    Keyword ::= a l l o c p t r /.$setResult($_ALLOCPTR);./
    Keyword ::= a n y r e g c c /.$setResult($_ANYREGCC);./
    Keyword ::= a p i n o t e s /.$setResult($_APINOTES_);./
    Keyword ::= b a s e t y p e /.$setResult($_BASETYPE_);./
    Keyword ::= c a t c h p a d /.$setResult($_CATCHPAD);./
    Keyword ::= c a t c h r e t /.$setResult($_CATCHRET);./
    Keyword ::= c h e c k s u m /.$setResult($_CHECKSUM_);./
    Keyword ::= c o n t r a c t /.$setResult($_CONTRACT);./
    Keyword ::= d i s p f l a g /.$setResult($_DispFlag);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= d w a r f t a g /.$setResult($_DwarfTag);./
    Keyword ::= e l e m e n t s /.$setResult($_ELEMENTS_);./
    Keyword ::= e n c o d i n g /.$setResult($_ENCODING_);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= f i l e n a m e /.$setResult($_FILENAME_);./
    Keyword ::= f l o a t l i t /.$setResult($_FloatLit);./
    Keyword ::= i n a l l o c a /.$setResult($_INALLOCA);./
    Keyword ::= i n b o u n d s /.$setResult($_INBOUNDS);./
    Keyword ::= i n t e r n a l /.$setResult($_INTERNAL);./
    Keyword ::= i n t t o p t r /.$setResult($_INTTOPTR);./
    Keyword ::= l a n g u a g e /.$setResult($_LANGUAGE_);./
    Keyword ::= l i n k o n c e /.$setResult($_LINKONCE);./
    Keyword ::= m e t a d a t a /.$setResult($_METADATA);./
    Keyword ::= m u s t t a i l /.$setResult($_MUSTTAIL);./
    Keyword ::= n o i n l i n e /.$setResult($_NOINLINE);./
    Keyword ::= n o r e t u r n /.$setResult($_NORETURN);./
    Keyword ::= n o u n w i n d /.$setResult($_NOUNWIND);./
    Keyword ::= o p e r a n d s /.$setResult($_OPERANDS_);./
    Keyword ::= p r o d u c e r /.$setResult($_PRODUCER_);./
    Keyword ::= p r o l o g u e /.$setResult($_PROLOGUE);./
    Keyword ::= p t r t o i n t /.$setResult($_PTRTOINT);./
    Keyword ::= r e a d n o n e /.$setResult($_READNONE);./
    Keyword ::= r e a d o n l y /.$setResult($_READONLY);./
    Keyword ::= r e t u r n e d /.$setResult($_RETURNED);./
    Keyword ::= s a m e s i z e /.$setResult($_SAMESIZE);./
    Keyword ::= s t r i c t f p /.$setResult($_STRICTFP);./
    Keyword ::= v o l a t i l e /.$setResult($_VOLATILE);./
    Keyword ::= a c q u i r e /.$setResult($_ACQUIRE);./
    Keyword ::= b i t c a s t /.$setResult($_BITCAST);./
    Keyword ::= b u i l t i n /.$setResult($_BUILTIN);./
    Keyword ::= c l e a n u p /.$setResult($_CLEANUP);./
    Keyword ::= c m p x c h g /.$setResult($_CMPXCHG);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d w a r f c c /.$setResult($_DwarfCc);./
    Keyword ::= d w a r f o p /.$setResult($_DwarfOp);./
    Keyword ::= f p t r u n c /.$setResult($_FPTRUNC);./
    Keyword ::= g l o b a l s /.$setResult($_GLOBALS_);./
    Keyword ::= i m p o r t s /.$setResult($_IMPORTS_);./
    Keyword ::= i n r a n g e /.$setResult($_INRANGE);./
    Keyword ::= i s l o c a l /.$setResult($_ISLOCAL_);./
    Keyword ::= l a r g e s t /.$setResult($_LARGEST);./
    Keyword ::= m i n s i z e /.$setResult($_MINSIZE);./
    Keyword ::= n o a l i a s /.$setResult($_NOALIAS);./
    Keyword ::= n o d e b u g /.$setResult($_NODEBUG);./
    Keyword ::= n o m e r g e /.$setResult($_NOMERGE);./
    Keyword ::= n o n n u l l /.$setResult($_NONNULL);./
    Keyword ::= n o u n d e f /.$setResult($_NOUNDEF);./
    Keyword ::= o p t n o n e /.$setResult($_OPTNONE);./
    Keyword ::= o p t s i z e /.$setResult($_OPTSIZE);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= r e a s s o c /.$setResult($_REASSOC);./
    Keyword ::= r e l e a s e /.$setResult($_RELEASE);./
    Keyword ::= s e c t i o n /.$setResult($_SECTION);./
    Keyword ::= s i g n e x t /.$setResult($_SIGNEXT);./
    Keyword ::= s p f l a g s /.$setResult($_SPFLAGS_);./
    Keyword ::= s w i f t c c /.$setResult($_SWIFTCC);./
    Keyword ::= s y s r o o t /.$setResult($_SYSROOT_);./
    Keyword ::= u w t a b l e /.$setResult($_UWTABLE);./
    Keyword ::= z e r o e x t /.$setResult($_ZEROEXT);./
    Keyword ::= a l l o c a /.$setResult($_ALLOCA);./
    Keyword ::= a t o m i c /.$setResult($_ATOMIC);./
    Keyword ::= b f l o a t /.$setResult($_BFLOAT);./
    Keyword ::= c a l l b r /.$setResult($_CALLBR);./
    Keyword ::= c a l l e r /.$setResult($_CALLER);./
    Keyword ::= c o l d c c /.$setResult($_COLDCC);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN_);./
    Keyword ::= c o m d a t /.$setResult($_COMDAT);./
    Keyword ::= c o m m o n /.$setResult($_COMMON);./
    Keyword ::= d e f i n e /.$setResult($_DEFINE);./
    Keyword ::= d i f l a g /.$setResult($_DiFlag);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e n t i t y /.$setResult($_ENTITY_);./
    Keyword ::= f a s t c c /.$setResult($_FASTCC);./
    Keyword ::= f i l t e r /.$setResult($_FILTER);./
    Keyword ::= f p t o s i /.$setResult($_FPTOSI);./
    Keyword ::= f p t o u i /.$setResult($_FPTOUI);./
    Keyword ::= f r e e z e /.$setResult($_FREEZE);./
    Keyword ::= g e t t e r /.$setResult($_GETTER_);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= h e a d e r /.$setResult($_HEADER_);./
    Keyword ::= h h v m c c /.$setResult($_HHVMCC);./
    Keyword ::= h i d d e n /.$setResult($_HIDDEN);./
    Keyword ::= i m m a r g /.$setResult($_IMMARG);./
    Keyword ::= i n v o k e /.$setResult($_INVOKE);./
    Keyword ::= i s d e c l /.$setResult($_ISDECL_);./
    Keyword ::= m a c r o s /.$setResult($_MACROS_);./
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
    Keyword ::= n o f r e e /.$setResult($_NOFREE);./
    Keyword ::= n o s y n c /.$setResult($_NOSYNC);./
    Keyword ::= n o t a i l /.$setResult($_NOTAIL);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET_);./
    Keyword ::= o p a q u e /.$setResult($_OPAQUE);./
    Keyword ::= p o i s o n /.$setResult($_POISON);./
    Keyword ::= p r e f i x /.$setResult($_PREFIX);./
    Keyword ::= r e s u m e /.$setResult($_RESUME);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s e t t e r /.$setResult($_SETTER_);./
    Keyword ::= s i t o f p /.$setResult($_SITOFP);./
    Keyword ::= s o u r c e /.$setResult($_SOURCE_);./
    Keyword ::= s t r i d e /.$setResult($_STRIDE_);./
    Keyword ::= s w i t c h /.$setResult($_SWITCH);./
    Keyword ::= t a i l c c /.$setResult($_TAILCC);./
    Keyword ::= t a r g e t /.$setResult($_TARGET);./
    Keyword ::= t r i p l e /.$setResult($_TRIPLE);./
    Keyword ::= u i t o f p /.$setResult($_UITOFP);./
    Keyword ::= u n w i n d /.$setResult($_UNWIND);./
    Keyword ::= v s c a l e /.$setResult($_VSCALE);./
    Keyword ::= w i t h i n /.$setResult($_WITHIN);./
    Keyword ::= a l i a s /.$setResult($_ALIAS);./
    Keyword ::= a l i g n /.$setResult($_ALIGN);./
    Keyword ::= a s y n c /.$setResult($_ASYNC);./
    Keyword ::= b y r e f /.$setResult($_BYREF);./
    Keyword ::= b y v a l /.$setResult($_BYVAL);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= c o u n t /.$setResult($_COUNT_);./
    Keyword ::= d w o i d /.$setResult($_DWOID_);./
    Keyword ::= e n u m s /.$setResult($_ENUMS_);./
    Keyword ::= e x a c t /.$setResult($_EXACT);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f e n c e /.$setResult($_FENCE);./
    Keyword ::= f l a g s /.$setResult($_FLAGS_);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= f p e x t /.$setResult($_FPEXT);./
    Keyword ::= g h c c c /.$setResult($_GHCCC);./
    Keyword ::= i f u n c /.$setResult($_IFUNC);./
    Keyword ::= i n r e g /.$setResult($_INREG);./
    Keyword ::= l a b e l /.$setResult($_LABEL);./
    Keyword ::= n a k e d /.$setResult($_NAKED);./
    Keyword ::= n o d e s /.$setResult($_NODES_);./
    Keyword ::= s c o p e /.$setResult($_SCOPE_);./
    Keyword ::= s t o r e /.$setResult($_STORE);./
    Keyword ::= t o k e n /.$setResult($_TOKEN);./
    Keyword ::= t r u n c /.$setResult($_TRUNC);./
    Keyword ::= t y p e s /.$setResult($_TYPES_);./
    Keyword ::= u n d e f /.$setResult($_UNDEF);./
    Keyword ::= v a l u e /.$setResult($_VALUE_);./
    Keyword ::= a r c p /.$setResult($_ARCP);./
    Keyword ::= a s h r /.$setResult($_ASHR);./
    Keyword ::= b a n g /.$setResult($_BANG);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c o l d /.$setResult($_COLD);./
    Keyword ::= e x p r /.$setResult($_EXPR_);./
    Keyword ::= f a d d /.$setResult($_FADD);./
    Keyword ::= f a s t /.$setResult($_FAST);./
    Keyword ::= f c m p /.$setResult($_FCMP);./
    Keyword ::= f d i v /.$setResult($_FDIV);./
    Keyword ::= f i l e /.$setResult($_FILE_);./
    Keyword ::= f m a x /.$setResult($_FMAX);./
    Keyword ::= f m i n /.$setResult($_FMIN);./
    Keyword ::= f m u l /.$setResult($_FMUL);./
    Keyword ::= f n e g /.$setResult($_FNEG);./
    Keyword ::= f r e m /.$setResult($_FREM);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= f s u b /.$setResult($_FSUB);./
    Keyword ::= h a l f /.$setResult($_HALF);./
    Keyword ::= i c m p /.$setResult($_ICMP);./
    Keyword ::= l i n e /.$setResult($_LINE_);./
    Keyword ::= l o a d /.$setResult($_LOAD);./
    Keyword ::= l s h r /.$setResult($_LSHR);./
    Keyword ::= n a m e /.$setResult($_NAME_);./
    Keyword ::= n a n d /.$setResult($_NAND);./
    Keyword ::= n e s t /.$setResult($_NEST);./
    Keyword ::= n i n f /.$setResult($_NINF);./
    Keyword ::= n n a n /.$setResult($_NNAN);./
    Keyword ::= n o n e /.$setResult($_NONE);./
    Keyword ::= p i p e /.$setResult($_PIPE);./
    Keyword ::= r a n k /.$setResult($_RANK_);./
    Keyword ::= s d i v /.$setResult($_SDIV);./
    Keyword ::= s e x t /.$setResult($_SEXT);./
    Keyword ::= s i z e /.$setResult($_SIZE_);./
    Keyword ::= s r e m /.$setResult($_SREM);./
    Keyword ::= s r e t /.$setResult($_SRET);./
    Keyword ::= s y n c /.$setResult($_SYNC);./
    Keyword ::= t a i l /.$setResult($_TAIL);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE_);./
    Keyword ::= u d i v /.$setResult($_UDIV);./
    Keyword ::= u m a x /.$setResult($_UMAX);./
    Keyword ::= u m i n /.$setResult($_UMIN);./
    Keyword ::= u n i t /.$setResult($_UNIT_);./
    Keyword ::= u r e m /.$setResult($_UREM);./
    Keyword ::= v o i d /.$setResult($_VOID);./
    Keyword ::= w e a k /.$setResult($_WEAK);./
    Keyword ::= x c h g /.$setResult($_XCHG);./
    Keyword ::= z e x t /.$setResult($_ZEXT);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a f n /.$setResult($_AFN);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a r g /.$setResult($_ARG_);./
    Keyword ::= a s m /.$setResult($_ASM);./
    Keyword ::= c c c /.$setResult($_CCC);./
    Keyword ::= g n u /.$setResult($_GNU);./
    Keyword ::= h o t /.$setResult($_HOT);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= m i n /.$setResult($_MIN);./
    Keyword ::= m u l /.$setResult($_MUL);./
    Keyword ::= n s w /.$setResult($_NSW);./
    Keyword ::= n s z /.$setResult($_NSZ);./
    Keyword ::= n u w /.$setResult($_NUW);./
    Keyword ::= o g e /.$setResult($_OGE);./
    Keyword ::= o g t /.$setResult($_OGT);./
    Keyword ::= o l e /.$setResult($_OLE);./
    Keyword ::= o l t /.$setResult($_OLT);./
    Keyword ::= o n e /.$setResult($_ONE);./
    Keyword ::= o r d /.$setResult($_ORD);./
    Keyword ::= p h i /.$setResult($_PHI);./
    Keyword ::= p t r /.$setResult($_PTR);./
    Keyword ::= r e t /.$setResult($_RET);./
    Keyword ::= s d k /.$setResult($_SDK_);./
    Keyword ::= s g e /.$setResult($_SGE);./
    Keyword ::= s g t /.$setResult($_SGT);./
    Keyword ::= s h l /.$setResult($_SHL);./
    Keyword ::= s l e /.$setResult($_SLE);./
    Keyword ::= s l t /.$setResult($_SLT);./
    Keyword ::= s s p /.$setResult($_SSP);./
    Keyword ::= s u b /.$setResult($_SUB);./
    Keyword ::= t a g /.$setResult($_TAG_);./
    Keyword ::= u g e /.$setResult($_UGE);./
    Keyword ::= u g t /.$setResult($_UGT);./
    Keyword ::= u l e /.$setResult($_ULE);./
    Keyword ::= u l t /.$setResult($_ULT);./
    Keyword ::= u n e /.$setResult($_UNE);./
    Keyword ::= u n o /.$setResult($_UNO);./
    Keyword ::= v a r /.$setResult($_VAR_);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= b r /.$setResult($_BR);./
    Keyword ::= c c /.$setResult($_CC);./
    Keyword ::= g c /.$setResult($_GC);./
    Keyword ::= n e /.$setResult($_NE);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
