-- Keyword filter for AsmPtxPtxIsa21 (KI_* + dotted K_*/U_* from Ptx.g4)
%options package=lpg.grammars.asm.ptx.ptx_isa_2_1
%options template=KeywordTemplateF.gi
%options fp=AsmPtxPtxIsa21KWLexer

%Export
    KI_ABS
    KI_ADD
    KI_ADDC
    KI_AND
    KI_ATOM
    KI_BAR
    KI_BFE
    KI_BFI
    KI_BFIND
    KI_BRA
    KI_BREV
    KI_BRKPT
    KI_CALL
    KI_CLZ
    KI_CNOT
    KI_COPYSIGN
    KI_COS
    KI_CVT
    KI_CVTA
    KI_DIV
    KI_EX2
    KI_EXIT
    KI_FMA
    KI_ISSPACEP
    KI_LD
    KI_LDU
    KI_LG2
    KI_MAD
    KI_MAD24
    KI_MAX
    KI_MEMBAR
    KI_MIN
    KI_MOV
    KI_MUL
    KI_MUL24
    KI_NEG
    KI_NOT
    KI_OR
    KI_PMEVENT
    KI_POPC
    KI_PREFETCH
    KI_PREFETCHU
    KI_PRMT
    KI_RCP
    KI_RED
    KI_REM
    KI_RET
    KI_RSQRT
    KI_SAD
    KI_SELP
    KI_SET
    KI_SETP
    KI_SHL
    KI_SHR
    KI_SIN
    KI_SLCT
    KI_SQRT
    KI_ST
    KI_SUB
    KI_SUBC
    KI_SULD
    KI_SUQ
    KI_SURED
    KI_SUST
    KI_TESTP
    KI_TEX
    KI_TRAP
    KI_TXQ
    KI_VABSDIFF
    KI_VADD
    KI_VMAD
    KI_VMAX
    KI_VMIN
    KI_VOTE
    KI_VSET
    KI_VSHL
    KI_VSHR
    KI_VSUB
    KI_XOR
    K_1D
    K_2D
    K_3D
    K_A
    K_ADD
    K_ADDRESS_SIZE
    K_ADDR_MODE_0
    K_ADDR_MODE_1
    K_ADDR_MODE_2
    K_ALIGN
    K_ALL
    K_AND
    K_ANY
    K_APPROX
    K_ARRIVE
    K_B
    K_B16
    K_B32
    K_B4E
    K_B64
    K_B8
    K_BALLOT
    K_BRANCHTARGETS
    K_CA
    K_CALLPROTOTYPE
    K_CALLTARGETS
    K_CAS
    K_CC
    K_CG
    K_CHANNEL_DATA
    K_CHANNEL_DATA_TYPE
    K_CHANNEL_ORDER
    K_CLAMP
    K_CONST
    K_CS
    K_CTA
    K_CV
    K_DEC
    K_DEPTH
    K_ECL
    K_ECR
    K_ENTRY
    K_EQ
    K_EQU
    K_EXCH
    K_EXTERN
    K_F16
    K_F32
    K_F4E
    K_F64
    K_FILE
    K_FILTER_MODE
    K_FINITE
    K_FTZ
    K_FULL
    K_FUNC
    K_G
    K_GE
    K_GEU
    K_GL
    K_GLOBAL
    K_GT
    K_GTU
    K_HEIGHT
    K_HI
    K_HS
    K_INC
    K_INFINITE
    K_L1
    K_L2
    K_LE
    K_LEU
    K_LO
    K_LOC
    K_LOCAL
    K_LS
    K_LT
    K_LTU
    K_LU
    K_MAX
    K_MAXNCTAPERSM
    K_MAXNREG
    K_MAXNTID
    K_MIN
    K_MINNCTAPERSM
    K_NAN
    K_NE
    K_NEU
    K_NORMAL
    K_NORMALIZED_COORDS
    K_NOTANUMBER
    K_NS
    K_NUM
    K_NUMBER
    K_OC
    K_OR
    K_P
    K_PARAM
    K_POPC
    K_PRAGMA
    K_PRED
    K_R
    K_RC16
    K_RC8
    K_RCP
    K_RED
    K_REG
    K_REQNTID
    K_RM
    K_RMI
    K_RN
    K_RNI
    K_RP
    K_RPI
    K_RZ
    K_RZI
    K_S16
    K_S32
    K_S64
    K_S8
    K_SAMPLERREF
    K_SAT
    K_SECTION
    K_SHARED
    K_SHIFTAMT
    K_SREG
    K_SUBNORMAL
    K_SURFREF
    K_SYNC
    K_SYS
    K_TARGET
    K_TEX
    K_TEXREF
    K_TO
    K_TRAP
    K_U16
    K_U32
    K_U64
    K_U8
    K_UNI
    K_V2
    K_V4
    K_VB
    K_VERSION
    K_VISIBLE
    K_VOLATILE
    K_W
    K_WB
    K_WIDE
    K_WIDTH
    K_WT
    K_X
    K_XOR
    K_Y
    K_Z
    K_ZERO
    U_4BYTE
    U_BYTE
    U_DEBUG_ABBREV
    U_DEBUG_INFO
    U_DEBUG_LINE
    U_DEBUG_LOC
    U_DEBUG_PUBNAMES
    U_DEBUG_RANGES
%End

%Terminals
    DollarSign ::= '$'
    Percent ::= '%'
    Dot ::= '.'
    _
    0    1    2    3    4    5    6    7    8    9
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End

%Headers
/.
        final static int tokenKind[] = new int[128];
        static
        {
            tokenKind['$'] = $sym_type.$prefix$DollarSign$suffix$;
            tokenKind['%'] = $sym_type.$prefix$Percent$suffix$;
            tokenKind['.'] = $sym_type.$prefix$Dot$suffix$;
            tokenKind['_'] = $sym_type.$prefix$_$suffix$;

            tokenKind['0'] = $sym_type.$prefix$0$suffix$;
            tokenKind['1'] = $sym_type.$prefix$1$suffix$;
            tokenKind['2'] = $sym_type.$prefix$2$suffix$;
            tokenKind['3'] = $sym_type.$prefix$3$suffix$;
            tokenKind['4'] = $sym_type.$prefix$4$suffix$;
            tokenKind['5'] = $sym_type.$prefix$5$suffix$;
            tokenKind['6'] = $sym_type.$prefix$6$suffix$;
            tokenKind['7'] = $sym_type.$prefix$7$suffix$;
            tokenKind['8'] = $sym_type.$prefix$8$suffix$;
            tokenKind['9'] = $sym_type.$prefix$9$suffix$;

            tokenKind['a'] = $sym_type.$prefix$a$suffix$;
            tokenKind['b'] = $sym_type.$prefix$b$suffix$;
            tokenKind['c'] = $sym_type.$prefix$c$suffix$;
            tokenKind['d'] = $sym_type.$prefix$d$suffix$;
            tokenKind['e'] = $sym_type.$prefix$e$suffix$;
            tokenKind['f'] = $sym_type.$prefix$f$suffix$;
            tokenKind['g'] = $sym_type.$prefix$g$suffix$;
            tokenKind['h'] = $sym_type.$prefix$h$suffix$;
            tokenKind['i'] = $sym_type.$prefix$i$suffix$;
            tokenKind['j'] = $sym_type.$prefix$j$suffix$;
            tokenKind['k'] = $sym_type.$prefix$k$suffix$;
            tokenKind['l'] = $sym_type.$prefix$l$suffix$;
            tokenKind['m'] = $sym_type.$prefix$m$suffix$;
            tokenKind['n'] = $sym_type.$prefix$n$suffix$;
            tokenKind['o'] = $sym_type.$prefix$o$suffix$;
            tokenKind['p'] = $sym_type.$prefix$p$suffix$;
            tokenKind['q'] = $sym_type.$prefix$q$suffix$;
            tokenKind['r'] = $sym_type.$prefix$r$suffix$;
            tokenKind['s'] = $sym_type.$prefix$s$suffix$;
            tokenKind['t'] = $sym_type.$prefix$t$suffix$;
            tokenKind['u'] = $sym_type.$prefix$u$suffix$;
            tokenKind['v'] = $sym_type.$prefix$v$suffix$;
            tokenKind['w'] = $sym_type.$prefix$w$suffix$;
            tokenKind['x'] = $sym_type.$prefix$x$suffix$;
            tokenKind['y'] = $sym_type.$prefix$y$suffix$;
            tokenKind['z'] = $sym_type.$prefix$z$suffix$;
            // case-insensitive: map A-Z to same kinds as a-z
            tokenKind['A'] = $sym_type.$prefix$a$suffix$;
            tokenKind['B'] = $sym_type.$prefix$b$suffix$;
            tokenKind['C'] = $sym_type.$prefix$c$suffix$;
            tokenKind['D'] = $sym_type.$prefix$d$suffix$;
            tokenKind['E'] = $sym_type.$prefix$e$suffix$;
            tokenKind['F'] = $sym_type.$prefix$f$suffix$;
            tokenKind['G'] = $sym_type.$prefix$g$suffix$;
            tokenKind['H'] = $sym_type.$prefix$h$suffix$;
            tokenKind['I'] = $sym_type.$prefix$i$suffix$;
            tokenKind['J'] = $sym_type.$prefix$j$suffix$;
            tokenKind['K'] = $sym_type.$prefix$k$suffix$;
            tokenKind['L'] = $sym_type.$prefix$l$suffix$;
            tokenKind['M'] = $sym_type.$prefix$m$suffix$;
            tokenKind['N'] = $sym_type.$prefix$n$suffix$;
            tokenKind['O'] = $sym_type.$prefix$o$suffix$;
            tokenKind['P'] = $sym_type.$prefix$p$suffix$;
            tokenKind['Q'] = $sym_type.$prefix$q$suffix$;
            tokenKind['R'] = $sym_type.$prefix$r$suffix$;
            tokenKind['S'] = $sym_type.$prefix$s$suffix$;
            tokenKind['T'] = $sym_type.$prefix$t$suffix$;
            tokenKind['U'] = $sym_type.$prefix$u$suffix$;
            tokenKind['V'] = $sym_type.$prefix$v$suffix$;
            tokenKind['W'] = $sym_type.$prefix$w$suffix$;
            tokenKind['X'] = $sym_type.$prefix$x$suffix$;
            tokenKind['Y'] = $sym_type.$prefix$y$suffix$;
            tokenKind['Z'] = $sym_type.$prefix$z$suffix$;
        };

        final int getKind(int c)
        {
            return ((c & 0xFFFFFF80) == 0 ? tokenKind[c] : 0);
        }
    ./
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= Dot c h a n n e l _ d a t a _ t y p e /.$setResult($_K_CHANNEL_DATA_TYPE);./
    Keyword ::= Dot n o r m a l i z e d _ c o o r d s /.$setResult($_K_NORMALIZED_COORDS);./
    Keyword ::= Dot d e b u g _ p u b n a m e s /.$setResult($_U_DEBUG_PUBNAMES);./
    Keyword ::= Dot b r a n c h t a r g e t s /.$setResult($_K_BRANCHTARGETS);./
    Keyword ::= Dot c a l l p r o t o t y p e /.$setResult($_K_CALLPROTOTYPE);./
    Keyword ::= Dot c h a n n e l _ o r d e r /.$setResult($_K_CHANNEL_ORDER);./
    Keyword ::= Dot a d d r e s s _ s i z e /.$setResult($_K_ADDRESS_SIZE);./
    Keyword ::= Dot c h a n n e l _ d a t a /.$setResult($_K_CHANNEL_DATA);./
    Keyword ::= Dot d e b u g _ a b b r e v /.$setResult($_U_DEBUG_ABBREV);./
    Keyword ::= Dot d e b u g _ r a n g e s /.$setResult($_U_DEBUG_RANGES);./
    Keyword ::= Dot m a x n c t a p e r s m /.$setResult($_K_MAXNCTAPERSM);./
    Keyword ::= Dot m i n n c t a p e r s m /.$setResult($_K_MINNCTAPERSM);./
    Keyword ::= Dot a d d r _ m o d e _ 0 /.$setResult($_K_ADDR_MODE_0);./
    Keyword ::= Dot a d d r _ m o d e _ 1 /.$setResult($_K_ADDR_MODE_1);./
    Keyword ::= Dot a d d r _ m o d e _ 2 /.$setResult($_K_ADDR_MODE_2);./
    Keyword ::= Dot c a l l t a r g e t s /.$setResult($_K_CALLTARGETS);./
    Keyword ::= Dot f i l t e r _ m o d e /.$setResult($_K_FILTER_MODE);./
    Keyword ::= Dot d e b u g _ i n f o /.$setResult($_U_DEBUG_INFO);./
    Keyword ::= Dot d e b u g _ l i n e /.$setResult($_U_DEBUG_LINE);./
    Keyword ::= Dot n o t a n u m b e r /.$setResult($_K_NOTANUMBER);./
    Keyword ::= Dot s a m p l e r r e f /.$setResult($_K_SAMPLERREF);./
    Keyword ::= Dot d e b u g _ l o c /.$setResult($_U_DEBUG_LOC);./
    Keyword ::= Dot s u b n o r m a l /.$setResult($_K_SUBNORMAL);./
    Keyword ::= Dot i n f i n i t e /.$setResult($_K_INFINITE);./
    Keyword ::= Dot s h i f t a m t /.$setResult($_K_SHIFTAMT);./
    Keyword ::= Dot v o l a t i l e /.$setResult($_K_VOLATILE);./
    Keyword ::= p r e f e t c h u /.$setResult($_KI_PREFETCHU);./
    Keyword ::= Dot m a x n r e g /.$setResult($_K_MAXNREG);./
    Keyword ::= Dot m a x n t i d /.$setResult($_K_MAXNTID);./
    Keyword ::= Dot r e q n t i d /.$setResult($_K_REQNTID);./
    Keyword ::= Dot s e c t i o n /.$setResult($_K_SECTION);./
    Keyword ::= Dot s u r f r e f /.$setResult($_K_SURFREF);./
    Keyword ::= Dot v e r s i o n /.$setResult($_K_VERSION);./
    Keyword ::= Dot v i s i b l e /.$setResult($_K_VISIBLE);./
    Keyword ::= c o p y s i g n /.$setResult($_KI_COPYSIGN);./
    Keyword ::= i s s p a c e p /.$setResult($_KI_ISSPACEP);./
    Keyword ::= p r e f e t c h /.$setResult($_KI_PREFETCH);./
    Keyword ::= v a b s d i f f /.$setResult($_KI_VABSDIFF);./
    Keyword ::= Dot a p p r o x /.$setResult($_K_APPROX);./
    Keyword ::= Dot a r r i v e /.$setResult($_K_ARRIVE);./
    Keyword ::= Dot b a l l o t /.$setResult($_K_BALLOT);./
    Keyword ::= Dot e x t e r n /.$setResult($_K_EXTERN);./
    Keyword ::= Dot f i n i t e /.$setResult($_K_FINITE);./
    Keyword ::= Dot g l o b a l /.$setResult($_K_GLOBAL);./
    Keyword ::= Dot h e i g h t /.$setResult($_K_HEIGHT);./
    Keyword ::= Dot n o r m a l /.$setResult($_K_NORMAL);./
    Keyword ::= Dot n u m b e r /.$setResult($_K_NUMBER);./
    Keyword ::= Dot p r a g m a /.$setResult($_K_PRAGMA);./
    Keyword ::= Dot s h a r e d /.$setResult($_K_SHARED);./
    Keyword ::= Dot t a r g e t /.$setResult($_K_TARGET);./
    Keyword ::= Dot t e x r e f /.$setResult($_K_TEXREF);./
    Keyword ::= p m e v e n t /.$setResult($_KI_PMEVENT);./
    Keyword ::= Dot 4 b y t e /.$setResult($_U_4BYTE);./
    Keyword ::= Dot a l i g n /.$setResult($_K_ALIGN);./
    Keyword ::= Dot c l a m p /.$setResult($_K_CLAMP);./
    Keyword ::= Dot c o n s t /.$setResult($_K_CONST);./
    Keyword ::= Dot d e p t h /.$setResult($_K_DEPTH);./
    Keyword ::= Dot e n t r y /.$setResult($_K_ENTRY);./
    Keyword ::= Dot l o c a l /.$setResult($_K_LOCAL);./
    Keyword ::= Dot p a r a m /.$setResult($_K_PARAM);./
    Keyword ::= Dot w i d t h /.$setResult($_K_WIDTH);./
    Keyword ::= m e m b a r /.$setResult($_KI_MEMBAR);./
    Keyword ::= Dot b y t e /.$setResult($_U_BYTE);./
    Keyword ::= Dot e x c h /.$setResult($_K_EXCH);./
    Keyword ::= Dot f i l e /.$setResult($_K_FILE);./
    Keyword ::= Dot f u l l /.$setResult($_K_FULL);./
    Keyword ::= Dot f u n c /.$setResult($_K_FUNC);./
    Keyword ::= Dot p o p c /.$setResult($_K_POPC);./
    Keyword ::= Dot p r e d /.$setResult($_K_PRED);./
    Keyword ::= Dot r c 1 6 /.$setResult($_K_RC16);./
    Keyword ::= Dot s r e g /.$setResult($_K_SREG);./
    Keyword ::= Dot s y n c /.$setResult($_K_SYNC);./
    Keyword ::= Dot t r a p /.$setResult($_K_TRAP);./
    Keyword ::= Dot w i d e /.$setResult($_K_WIDE);./
    Keyword ::= Dot z e r o /.$setResult($_K_ZERO);./
    Keyword ::= b f i n d /.$setResult($_KI_BFIND);./
    Keyword ::= b r k p t /.$setResult($_KI_BRKPT);./
    Keyword ::= m a d 2 4 /.$setResult($_KI_MAD24);./
    Keyword ::= m u l 2 4 /.$setResult($_KI_MUL24);./
    Keyword ::= r s q r t /.$setResult($_KI_RSQRT);./
    Keyword ::= s u r e d /.$setResult($_KI_SURED);./
    Keyword ::= t e s t p /.$setResult($_KI_TESTP);./
    Keyword ::= Dot a d d /.$setResult($_K_ADD);./
    Keyword ::= Dot a l l /.$setResult($_K_ALL);./
    Keyword ::= Dot a n d /.$setResult($_K_AND);./
    Keyword ::= Dot a n y /.$setResult($_K_ANY);./
    Keyword ::= Dot b 1 6 /.$setResult($_K_B16);./
    Keyword ::= Dot b 3 2 /.$setResult($_K_B32);./
    Keyword ::= Dot b 4 e /.$setResult($_K_B4E);./
    Keyword ::= Dot b 6 4 /.$setResult($_K_B64);./
    Keyword ::= Dot c a s /.$setResult($_K_CAS);./
    Keyword ::= Dot c t a /.$setResult($_K_CTA);./
    Keyword ::= Dot d e c /.$setResult($_K_DEC);./
    Keyword ::= Dot e c l /.$setResult($_K_ECL);./
    Keyword ::= Dot e c r /.$setResult($_K_ECR);./
    Keyword ::= Dot e q u /.$setResult($_K_EQU);./
    Keyword ::= Dot f 1 6 /.$setResult($_K_F16);./
    Keyword ::= Dot f 3 2 /.$setResult($_K_F32);./
    Keyword ::= Dot f 4 e /.$setResult($_K_F4E);./
    Keyword ::= Dot f 6 4 /.$setResult($_K_F64);./
    Keyword ::= Dot f t z /.$setResult($_K_FTZ);./
    Keyword ::= Dot g e u /.$setResult($_K_GEU);./
    Keyword ::= Dot g t u /.$setResult($_K_GTU);./
    Keyword ::= Dot i n c /.$setResult($_K_INC);./
    Keyword ::= Dot l e u /.$setResult($_K_LEU);./
    Keyword ::= Dot l o c /.$setResult($_K_LOC);./
    Keyword ::= Dot l t u /.$setResult($_K_LTU);./
    Keyword ::= Dot m a x /.$setResult($_K_MAX);./
    Keyword ::= Dot m i n /.$setResult($_K_MIN);./
    Keyword ::= Dot n a n /.$setResult($_K_NAN);./
    Keyword ::= Dot n e u /.$setResult($_K_NEU);./
    Keyword ::= Dot n u m /.$setResult($_K_NUM);./
    Keyword ::= Dot r c 8 /.$setResult($_K_RC8);./
    Keyword ::= Dot r c p /.$setResult($_K_RCP);./
    Keyword ::= Dot r e d /.$setResult($_K_RED);./
    Keyword ::= Dot r e g /.$setResult($_K_REG);./
    Keyword ::= Dot r m i /.$setResult($_K_RMI);./
    Keyword ::= Dot r n i /.$setResult($_K_RNI);./
    Keyword ::= Dot r p i /.$setResult($_K_RPI);./
    Keyword ::= Dot r z i /.$setResult($_K_RZI);./
    Keyword ::= Dot s 1 6 /.$setResult($_K_S16);./
    Keyword ::= Dot s 3 2 /.$setResult($_K_S32);./
    Keyword ::= Dot s 6 4 /.$setResult($_K_S64);./
    Keyword ::= Dot s a t /.$setResult($_K_SAT);./
    Keyword ::= Dot s y s /.$setResult($_K_SYS);./
    Keyword ::= Dot t e x /.$setResult($_K_TEX);./
    Keyword ::= Dot u 1 6 /.$setResult($_K_U16);./
    Keyword ::= Dot u 3 2 /.$setResult($_K_U32);./
    Keyword ::= Dot u 6 4 /.$setResult($_K_U64);./
    Keyword ::= Dot u n i /.$setResult($_K_UNI);./
    Keyword ::= Dot x o r /.$setResult($_K_XOR);./
    Keyword ::= a d d c /.$setResult($_KI_ADDC);./
    Keyword ::= a t o m /.$setResult($_KI_ATOM);./
    Keyword ::= b r e v /.$setResult($_KI_BREV);./
    Keyword ::= c a l l /.$setResult($_KI_CALL);./
    Keyword ::= c n o t /.$setResult($_KI_CNOT);./
    Keyword ::= c v t a /.$setResult($_KI_CVTA);./
    Keyword ::= e x i t /.$setResult($_KI_EXIT);./
    Keyword ::= p o p c /.$setResult($_KI_POPC);./
    Keyword ::= p r m t /.$setResult($_KI_PRMT);./
    Keyword ::= s e l p /.$setResult($_KI_SELP);./
    Keyword ::= s e t p /.$setResult($_KI_SETP);./
    Keyword ::= s l c t /.$setResult($_KI_SLCT);./
    Keyword ::= s q r t /.$setResult($_KI_SQRT);./
    Keyword ::= s u b c /.$setResult($_KI_SUBC);./
    Keyword ::= s u l d /.$setResult($_KI_SULD);./
    Keyword ::= s u s t /.$setResult($_KI_SUST);./
    Keyword ::= t r a p /.$setResult($_KI_TRAP);./
    Keyword ::= v a d d /.$setResult($_KI_VADD);./
    Keyword ::= v m a d /.$setResult($_KI_VMAD);./
    Keyword ::= v m a x /.$setResult($_KI_VMAX);./
    Keyword ::= v m i n /.$setResult($_KI_VMIN);./
    Keyword ::= v o t e /.$setResult($_KI_VOTE);./
    Keyword ::= v s e t /.$setResult($_KI_VSET);./
    Keyword ::= v s h l /.$setResult($_KI_VSHL);./
    Keyword ::= v s h r /.$setResult($_KI_VSHR);./
    Keyword ::= v s u b /.$setResult($_KI_VSUB);./
    Keyword ::= Dot 1 d /.$setResult($_K_1D);./
    Keyword ::= Dot 2 d /.$setResult($_K_2D);./
    Keyword ::= Dot 3 d /.$setResult($_K_3D);./
    Keyword ::= Dot l 1 /.$setResult($_K_L1);./
    Keyword ::= Dot l 2 /.$setResult($_K_L2);./
    Keyword ::= Dot b 8 /.$setResult($_K_B8);./
    Keyword ::= Dot c a /.$setResult($_K_CA);./
    Keyword ::= Dot c c /.$setResult($_K_CC);./
    Keyword ::= Dot c g /.$setResult($_K_CG);./
    Keyword ::= Dot c s /.$setResult($_K_CS);./
    Keyword ::= Dot c v /.$setResult($_K_CV);./
    Keyword ::= Dot e q /.$setResult($_K_EQ);./
    Keyword ::= Dot g e /.$setResult($_K_GE);./
    Keyword ::= Dot g l /.$setResult($_K_GL);./
    Keyword ::= Dot g t /.$setResult($_K_GT);./
    Keyword ::= Dot h i /.$setResult($_K_HI);./
    Keyword ::= Dot h s /.$setResult($_K_HS);./
    Keyword ::= Dot l e /.$setResult($_K_LE);./
    Keyword ::= Dot l o /.$setResult($_K_LO);./
    Keyword ::= Dot l s /.$setResult($_K_LS);./
    Keyword ::= Dot l t /.$setResult($_K_LT);./
    Keyword ::= Dot l u /.$setResult($_K_LU);./
    Keyword ::= Dot n e /.$setResult($_K_NE);./
    Keyword ::= Dot n s /.$setResult($_K_NS);./
    Keyword ::= Dot o c /.$setResult($_K_OC);./
    Keyword ::= Dot o r /.$setResult($_K_OR);./
    Keyword ::= Dot r m /.$setResult($_K_RM);./
    Keyword ::= Dot r n /.$setResult($_K_RN);./
    Keyword ::= Dot r p /.$setResult($_K_RP);./
    Keyword ::= Dot r z /.$setResult($_K_RZ);./
    Keyword ::= Dot s 8 /.$setResult($_K_S8);./
    Keyword ::= Dot t o /.$setResult($_K_TO);./
    Keyword ::= Dot u 8 /.$setResult($_K_U8);./
    Keyword ::= Dot v 2 /.$setResult($_K_V2);./
    Keyword ::= Dot v 4 /.$setResult($_K_V4);./
    Keyword ::= Dot v b /.$setResult($_K_VB);./
    Keyword ::= Dot w b /.$setResult($_K_WB);./
    Keyword ::= Dot w t /.$setResult($_K_WT);./
    Keyword ::= a b s /.$setResult($_KI_ABS);./
    Keyword ::= a d d /.$setResult($_KI_ADD);./
    Keyword ::= a n d /.$setResult($_KI_AND);./
    Keyword ::= b a r /.$setResult($_KI_BAR);./
    Keyword ::= b f e /.$setResult($_KI_BFE);./
    Keyword ::= b f i /.$setResult($_KI_BFI);./
    Keyword ::= b r a /.$setResult($_KI_BRA);./
    Keyword ::= c l z /.$setResult($_KI_CLZ);./
    Keyword ::= c o s /.$setResult($_KI_COS);./
    Keyword ::= c v t /.$setResult($_KI_CVT);./
    Keyword ::= d i v /.$setResult($_KI_DIV);./
    Keyword ::= e x 2 /.$setResult($_KI_EX2);./
    Keyword ::= f m a /.$setResult($_KI_FMA);./
    Keyword ::= l d u /.$setResult($_KI_LDU);./
    Keyword ::= l g 2 /.$setResult($_KI_LG2);./
    Keyword ::= m a d /.$setResult($_KI_MAD);./
    Keyword ::= m a x /.$setResult($_KI_MAX);./
    Keyword ::= m i n /.$setResult($_KI_MIN);./
    Keyword ::= m o v /.$setResult($_KI_MOV);./
    Keyword ::= m u l /.$setResult($_KI_MUL);./
    Keyword ::= n e g /.$setResult($_KI_NEG);./
    Keyword ::= n o t /.$setResult($_KI_NOT);./
    Keyword ::= r c p /.$setResult($_KI_RCP);./
    Keyword ::= r e d /.$setResult($_KI_RED);./
    Keyword ::= r e m /.$setResult($_KI_REM);./
    Keyword ::= r e t /.$setResult($_KI_RET);./
    Keyword ::= s a d /.$setResult($_KI_SAD);./
    Keyword ::= s e t /.$setResult($_KI_SET);./
    Keyword ::= s h l /.$setResult($_KI_SHL);./
    Keyword ::= s h r /.$setResult($_KI_SHR);./
    Keyword ::= s i n /.$setResult($_KI_SIN);./
    Keyword ::= s u b /.$setResult($_KI_SUB);./
    Keyword ::= s u q /.$setResult($_KI_SUQ);./
    Keyword ::= t e x /.$setResult($_KI_TEX);./
    Keyword ::= t x q /.$setResult($_KI_TXQ);./
    Keyword ::= x o r /.$setResult($_KI_XOR);./
    Keyword ::= Dot a /.$setResult($_K_A);./
    Keyword ::= Dot b /.$setResult($_K_B);./
    Keyword ::= Dot g /.$setResult($_K_G);./
    Keyword ::= Dot p /.$setResult($_K_P);./
    Keyword ::= Dot r /.$setResult($_K_R);./
    Keyword ::= Dot w /.$setResult($_K_W);./
    Keyword ::= Dot x /.$setResult($_K_X);./
    Keyword ::= Dot y /.$setResult($_K_Y);./
    Keyword ::= Dot z /.$setResult($_K_Z);./
    Keyword ::= l d /.$setResult($_KI_LD);./
    Keyword ::= o r /.$setResult($_KI_OR);./
    Keyword ::= s t /.$setResult($_KI_ST);./
%End
