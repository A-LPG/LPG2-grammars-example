-- Keyword filter for AsmPdp7 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.asm.pdp7
%options template=KeywordTemplateF.gi
%options fp=AsmPdp7KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ADD
    ALS
    ALSS
    AND
    BEG
    CAF
    CCK
    CDF
    CIA
    CIL
    CLOF
    CLON
    CLQ
    CLSF
    CMA
    CMQ
    CPB
    CRRB
    CRSF
    CZM
    DAC
    DPCF
    DPRC
    DPRS
    DPSF
    DSCS
    DSLD
    DSLM
    DSLS
    DSLW
    DSM
    DSRS
    DSSF
    DZM
    HLT
    IDIV
    IOF
    ION
    IRSS
    ISZ
    JMP
    JMS
    KRB
    KSF
    LAC
    LACQ
    LAS
    LAW
    LCK
    LDA
    LLS
    LLSS
    LMQ
    LPB
    LRS
    LRSS
    MUL
    NOP
    OMQ
    PCF
    PSA
    PSF
    RAEF
    RAL
    RAR
    RCL
    RCR
    RLPD
    RRB
    RSA
    RSF
    RTL
    RTR
    SAD
    SCK
    SKP
    SMA
    SNA
    SNL
    SPB
    SYS
    SZA
    SZL
    TAD
    TCF
    TLS
    TSF
    WBL
    WCGA
    XCT
    XOR
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= a l s s /.$setResult($_ALSS);./
    Keyword ::= c l o f /.$setResult($_CLOF);./
    Keyword ::= c l o n /.$setResult($_CLON);./
    Keyword ::= c l s f /.$setResult($_CLSF);./
    Keyword ::= c r r b /.$setResult($_CRRB);./
    Keyword ::= c r s f /.$setResult($_CRSF);./
    Keyword ::= d p c f /.$setResult($_DPCF);./
    Keyword ::= d p r c /.$setResult($_DPRC);./
    Keyword ::= d p r s /.$setResult($_DPRS);./
    Keyword ::= d p s f /.$setResult($_DPSF);./
    Keyword ::= d s c s /.$setResult($_DSCS);./
    Keyword ::= d s l d /.$setResult($_DSLD);./
    Keyword ::= d s l m /.$setResult($_DSLM);./
    Keyword ::= d s l s /.$setResult($_DSLS);./
    Keyword ::= d s l w /.$setResult($_DSLW);./
    Keyword ::= d s r s /.$setResult($_DSRS);./
    Keyword ::= d s s f /.$setResult($_DSSF);./
    Keyword ::= i d i v /.$setResult($_IDIV);./
    Keyword ::= i r s s /.$setResult($_IRSS);./
    Keyword ::= l a c q /.$setResult($_LACQ);./
    Keyword ::= l l s s /.$setResult($_LLSS);./
    Keyword ::= l r s s /.$setResult($_LRSS);./
    Keyword ::= r a e f /.$setResult($_RAEF);./
    Keyword ::= r l p d /.$setResult($_RLPD);./
    Keyword ::= w c g a /.$setResult($_WCGA);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a l s /.$setResult($_ALS);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= b e g /.$setResult($_BEG);./
    Keyword ::= c a f /.$setResult($_CAF);./
    Keyword ::= c c k /.$setResult($_CCK);./
    Keyword ::= c d f /.$setResult($_CDF);./
    Keyword ::= c i a /.$setResult($_CIA);./
    Keyword ::= c i l /.$setResult($_CIL);./
    Keyword ::= c l q /.$setResult($_CLQ);./
    Keyword ::= c m a /.$setResult($_CMA);./
    Keyword ::= c m q /.$setResult($_CMQ);./
    Keyword ::= c p b /.$setResult($_CPB);./
    Keyword ::= c z m /.$setResult($_CZM);./
    Keyword ::= d a c /.$setResult($_DAC);./
    Keyword ::= d s m /.$setResult($_DSM);./
    Keyword ::= d z m /.$setResult($_DZM);./
    Keyword ::= h l t /.$setResult($_HLT);./
    Keyword ::= i o f /.$setResult($_IOF);./
    Keyword ::= i o n /.$setResult($_ION);./
    Keyword ::= i s z /.$setResult($_ISZ);./
    Keyword ::= j m p /.$setResult($_JMP);./
    Keyword ::= j m s /.$setResult($_JMS);./
    Keyword ::= k r b /.$setResult($_KRB);./
    Keyword ::= k s f /.$setResult($_KSF);./
    Keyword ::= l a c /.$setResult($_LAC);./
    Keyword ::= l a s /.$setResult($_LAS);./
    Keyword ::= l a w /.$setResult($_LAW);./
    Keyword ::= l c k /.$setResult($_LCK);./
    Keyword ::= l d a /.$setResult($_LDA);./
    Keyword ::= l l s /.$setResult($_LLS);./
    Keyword ::= l m q /.$setResult($_LMQ);./
    Keyword ::= l p b /.$setResult($_LPB);./
    Keyword ::= l r s /.$setResult($_LRS);./
    Keyword ::= m u l /.$setResult($_MUL);./
    Keyword ::= n o p /.$setResult($_NOP);./
    Keyword ::= o m q /.$setResult($_OMQ);./
    Keyword ::= p c f /.$setResult($_PCF);./
    Keyword ::= p s a /.$setResult($_PSA);./
    Keyword ::= p s f /.$setResult($_PSF);./
    Keyword ::= r a l /.$setResult($_RAL);./
    Keyword ::= r a r /.$setResult($_RAR);./
    Keyword ::= r c l /.$setResult($_RCL);./
    Keyword ::= r c r /.$setResult($_RCR);./
    Keyword ::= r r b /.$setResult($_RRB);./
    Keyword ::= r s a /.$setResult($_RSA);./
    Keyword ::= r s f /.$setResult($_RSF);./
    Keyword ::= r t l /.$setResult($_RTL);./
    Keyword ::= r t r /.$setResult($_RTR);./
    Keyword ::= s a d /.$setResult($_SAD);./
    Keyword ::= s c k /.$setResult($_SCK);./
    Keyword ::= s k p /.$setResult($_SKP);./
    Keyword ::= s m a /.$setResult($_SMA);./
    Keyword ::= s n a /.$setResult($_SNA);./
    Keyword ::= s n l /.$setResult($_SNL);./
    Keyword ::= s p b /.$setResult($_SPB);./
    Keyword ::= s y s /.$setResult($_SYS);./
    Keyword ::= s z a /.$setResult($_SZA);./
    Keyword ::= s z l /.$setResult($_SZL);./
    Keyword ::= t a d /.$setResult($_TAD);./
    Keyword ::= t c f /.$setResult($_TCF);./
    Keyword ::= t l s /.$setResult($_TLS);./
    Keyword ::= t s f /.$setResult($_TSF);./
    Keyword ::= w b l /.$setResult($_WBL);./
    Keyword ::= x c t /.$setResult($_XCT);./
    Keyword ::= x o r /.$setResult($_XOR);./
%End
