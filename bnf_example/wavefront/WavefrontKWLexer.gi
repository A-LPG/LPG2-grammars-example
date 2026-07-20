-- Keyword filter
%options package=lpg.grammars.wavefront
%options template=KeywordTemplateF.gi
%options fp=WavefrontKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    V
    VN
    VT
    VP
    CSTYPE
    DEG
    BMAT
    STEP
    P
    L
    F
    CURV
    CURV2
    SURF
    PARM
    TRIM
    HOLE
    SCRV
    SP
    END
    CON
    G
    S
    MG
    O
    BEVEL
    C_INTERP
    D_INTERP
    LOD
    USEMTL
    USEMAP
    MTLLIB
    MAPLIB
    SHADOW_OBJ
    TRACE_OBJ
    CTECH
    STECH
    BMATRIX
    BEZIER
    BSPLINE
    CARDINAL
    TAYLOR
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
    0 1 2 3 4 5 6 7 8 9
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= v /.$setResult($_V);./
              | v n /.$setResult($_VN);./
              | v t /.$setResult($_VT);./
              | v p /.$setResult($_VP);./
              | c s t y p e /.$setResult($_CSTYPE);./
              | d e g /.$setResult($_DEG);./
              | b m a t /.$setResult($_BMAT);./
              | s t e p /.$setResult($_STEP);./
              | p /.$setResult($_P);./
              | l /.$setResult($_L);./
              | f /.$setResult($_F);./
              | c u r v /.$setResult($_CURV);./
              | c u r v 2 /.$setResult($_CURV2);./
              | s u r f /.$setResult($_SURF);./
              | p a r m /.$setResult($_PARM);./
              | t r i m /.$setResult($_TRIM);./
              | h o l e /.$setResult($_HOLE);./
              | s c r v /.$setResult($_SCRV);./
              | s p /.$setResult($_SP);./
              | e n d /.$setResult($_END);./
              | c o n /.$setResult($_CON);./
              | g /.$setResult($_G);./
              | s /.$setResult($_S);./
              | m g /.$setResult($_MG);./
              | o /.$setResult($_O);./
              | b e v e l /.$setResult($_BEVEL);./
              | c _ i n t e r p /.$setResult($_C_INTERP);./
              | d _ i n t e r p /.$setResult($_D_INTERP);./
              | l o d /.$setResult($_LOD);./
              | u s e m t l /.$setResult($_USEMTL);./
              | u s e m a p /.$setResult($_USEMAP);./
              | m t l l i b /.$setResult($_MTLLIB);./
              | m a p l i b /.$setResult($_MAPLIB);./
              | s h a d o w _ o b j /.$setResult($_SHADOW_OBJ);./
              | t r a c e _ o b j /.$setResult($_TRACE_OBJ);./
              | c t e c h /.$setResult($_CTECH);./
              | s t e c h /.$setResult($_STECH);./
              | b m a t r i x /.$setResult($_BMATRIX);./
              | b e z i e r /.$setResult($_BEZIER);./
              | b s p l i n e /.$setResult($_BSPLINE);./
              | c a r d i n a l /.$setResult($_CARDINAL);./
              | t a y l o r /.$setResult($_TAYLOR);./
%End
