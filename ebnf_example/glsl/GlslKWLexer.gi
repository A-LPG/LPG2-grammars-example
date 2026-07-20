-- Keyword filter for Glsl (aligned to parser terminal names)
%options package=lpg.grammars.glsl
%options template=KeywordTemplateF.gi
%options fp=GlslKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ANDAND
    ATTRIBUTE
    BANG
    BOOL
    BREAK
    BUFFER
    CARET
    CASE
    CENTROID
    COHERENT
    CONST
    CONTINUE
    DEFAULT
    DISCARD
    DO
    DOUBLE
    ELSE
    FALSE
    FLAT
    FLOAT
    FOR
    HIGHP
    IF
    IIMAGEBUFFER
    IIMAGECUBE
    IIMAGECUBEARRAY
    IMAGEBUFFER
    IMAGECUBE
    IMAGECUBEARRAY
    IN
    INOUT
    INT
    INVARIANT
    ISAMPLERBUFFER
    ISAMPLERCUBE
    ISAMPLERCUBEARRAY
    LAYOUT
    LOWP
    LSHIFT
    MEDIUMP
    MINUSMINUS
    NOPERSPECTIVE
    OROR
    OUT
    PATCH
    PERCENT
    PLUSPLUS
    PRECISE
    PRECISION
    READONLY
    RESTRICT
    RETURN
    RSHIFT
    SAMPLE
    SAMPLERBUFFER
    SAMPLERCUBE
    SAMPLERCUBEARRAY
    SAMPLERCUBEARRAYSHADOW
    SAMPLERCUBESHADOW
    SHARED
    SMOOTH
    STRUCT
    SUBROUTINE
    SWITCH
    TILDE
    TRUE
    UIMAGEBUFFER
    UIMAGECUBE
    UIMAGECUBEARRAY
    UINT
    UNIFORM
    USAMPLERBUFFER
    USAMPLERCUBE
    USAMPLERCUBEARRAY
    VARYING
    VOID
    VOLATILE
    WHILE
    WRITEONLY
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= s a m p l e r c u b e a r r a y s h a d o w /.$setResult($_SAMPLERCUBEARRAYSHADOW);./
    Keyword ::= i s a m p l e r c u b e a r r a y /.$setResult($_ISAMPLERCUBEARRAY);./
    Keyword ::= s a m p l e r c u b e s h a d o w /.$setResult($_SAMPLERCUBESHADOW);./
    Keyword ::= u s a m p l e r c u b e a r r a y /.$setResult($_USAMPLERCUBEARRAY);./
    Keyword ::= s a m p l e r c u b e a r r a y /.$setResult($_SAMPLERCUBEARRAY);./
    Keyword ::= i i m a g e c u b e a r r a y /.$setResult($_IIMAGECUBEARRAY);./
    Keyword ::= u i m a g e c u b e a r r a y /.$setResult($_UIMAGECUBEARRAY);./
    Keyword ::= i m a g e c u b e a r r a y /.$setResult($_IMAGECUBEARRAY);./
    Keyword ::= i s a m p l e r b u f f e r /.$setResult($_ISAMPLERBUFFER);./
    Keyword ::= u s a m p l e r b u f f e r /.$setResult($_USAMPLERBUFFER);./
    Keyword ::= n o p e r s p e c t i v e /.$setResult($_NOPERSPECTIVE);./
    Keyword ::= s a m p l e r b u f f e r /.$setResult($_SAMPLERBUFFER);./
    Keyword ::= i i m a g e b u f f e r /.$setResult($_IIMAGEBUFFER);./
    Keyword ::= i s a m p l e r c u b e /.$setResult($_ISAMPLERCUBE);./
    Keyword ::= u i m a g e b u f f e r /.$setResult($_UIMAGEBUFFER);./
    Keyword ::= u s a m p l e r c u b e /.$setResult($_USAMPLERCUBE);./
    Keyword ::= i m a g e b u f f e r /.$setResult($_IMAGEBUFFER);./
    Keyword ::= s a m p l e r c u b e /.$setResult($_SAMPLERCUBE);./
    Keyword ::= i i m a g e c u b e /.$setResult($_IIMAGECUBE);./
    Keyword ::= m i n u s m i n u s /.$setResult($_MINUSMINUS);./
    Keyword ::= s u b r o u t i n e /.$setResult($_SUBROUTINE);./
    Keyword ::= u i m a g e c u b e /.$setResult($_UIMAGECUBE);./
    Keyword ::= a t t r i b u t e /.$setResult($_ATTRIBUTE);./
    Keyword ::= i m a g e c u b e /.$setResult($_IMAGECUBE);./
    Keyword ::= i n v a r i a n t /.$setResult($_INVARIANT);./
    Keyword ::= p r e c i s i o n /.$setResult($_PRECISION);./
    Keyword ::= w r i t e o n l y /.$setResult($_WRITEONLY);./
    Keyword ::= c e n t r o i d /.$setResult($_CENTROID);./
    Keyword ::= c o h e r e n t /.$setResult($_COHERENT);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= p l u s p l u s /.$setResult($_PLUSPLUS);./
    Keyword ::= r e a d o n l y /.$setResult($_READONLY);./
    Keyword ::= r e s t r i c t /.$setResult($_RESTRICT);./
    Keyword ::= v o l a t i l e /.$setResult($_VOLATILE);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d i s c a r d /.$setResult($_DISCARD);./
    Keyword ::= m e d i u m p /.$setResult($_MEDIUMP);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= p r e c i s e /.$setResult($_PRECISE);./
    Keyword ::= u n i f o r m /.$setResult($_UNIFORM);./
    Keyword ::= v a r y i n g /.$setResult($_VARYING);./
    Keyword ::= a n d a n d /.$setResult($_ANDAND);./
    Keyword ::= b u f f e r /.$setResult($_BUFFER);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= l a y o u t /.$setResult($_LAYOUT);./
    Keyword ::= l s h i f t /.$setResult($_LSHIFT);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= r s h i f t /.$setResult($_RSHIFT);./
    Keyword ::= s a m p l e /.$setResult($_SAMPLE);./
    Keyword ::= s h a r e d /.$setResult($_SHARED);./
    Keyword ::= s m o o t h /.$setResult($_SMOOTH);./
    Keyword ::= s t r u c t /.$setResult($_STRUCT);./
    Keyword ::= s w i t c h /.$setResult($_SWITCH);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c a r e t /.$setResult($_CARET);./
    Keyword ::= c o n s t /.$setResult($_CONST);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= h i g h p /.$setResult($_HIGHP);./
    Keyword ::= i n o u t /.$setResult($_INOUT);./
    Keyword ::= p a t c h /.$setResult($_PATCH);./
    Keyword ::= t i l d e /.$setResult($_TILDE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= b a n g /.$setResult($_BANG);./
    Keyword ::= b o o l /.$setResult($_BOOL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= f l a t /.$setResult($_FLAT);./
    Keyword ::= l o w p /.$setResult($_LOWP);./
    Keyword ::= o r o r /.$setResult($_OROR);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= u i n t /.$setResult($_UINT);./
    Keyword ::= v o i d /.$setResult($_VOID);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
%End
