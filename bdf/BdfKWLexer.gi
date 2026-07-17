-- BDF keywords (folded case)
%options package=lpg.grammars.bdf
%options template=KeywordTemplateF.gi
%options fp=BdfKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    STARTFONT
    ENDFONT
    FONT
    SIZE
    FONTBOUNDINGBOX
    STARTPROPERTIES
    ENDPROPERTIES
    CHARS
    STARTCHAR
    ENDCHAR
    ENCODING
    SWIDTH
    DWIDTH
    BBX
    BITMAP
    FONT_ASCENT
    FONT_DESCENT
    FOUNDRY
    FAMILY_NAME
    WEIGHT_NAME
    SLANT
    SETWIDTH_NAME
    ADD_STYLE_NAME
    PIXEL_SIZE
    POINT_SIZE
    RESOLUTION_X
    RESOLUTION_Y
    SPACING
    AVERAGE_WIDTH
    CHARSET_REGISTRY
    CHARSET_ENCODING
    FONTNAME_REGISTRY
    CHARSET_COLLECTIONS
    FONT_NAME
    FACE_NAME
    COPYRIGHT
    FONT_VERSION
    UNDERLINE_POSITION
    UNDERLINE_THICKNESS
    X_HEIGHT
    CAP_HEIGHT
    RAW_ASCENT
    RAW_DESCENT
    NORM_SPACE
    RELATIVE_WEIGHT
    RELATIVE_SETWIDTH
    FIGURE_WIDTH
    AVG_LOWERCASE_WIDTH
    AVG_UPPERCASE_WIDTH
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    _
    0    1    2    3    4    5    6    7    8    9
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= s t a r t f o n t /.$setResult($_STARTFONT);./
              | e n d f o n t /.$setResult($_ENDFONT);./
              | f o n t /.$setResult($_FONT);./
              | s i z e /.$setResult($_SIZE);./
              | f o n t b o u n d i n g b o x /.$setResult($_FONTBOUNDINGBOX);./
              | s t a r t p r o p e r t i e s /.$setResult($_STARTPROPERTIES);./
              | e n d p r o p e r t i e s /.$setResult($_ENDPROPERTIES);./
              | c h a r s /.$setResult($_CHARS);./
              | s t a r t c h a r /.$setResult($_STARTCHAR);./
              | e n d c h a r /.$setResult($_ENDCHAR);./
              | e n c o d i n g /.$setResult($_ENCODING);./
              | s w i d t h /.$setResult($_SWIDTH);./
              | d w i d t h /.$setResult($_DWIDTH);./
              | b b x /.$setResult($_BBX);./
              | b i t m a p /.$setResult($_BITMAP);./
              | f o n t _ a s c e n t /.$setResult($_FONT_ASCENT);./
              | f o n t _ d e s c e n t /.$setResult($_FONT_DESCENT);./
              | f o u n d r y /.$setResult($_FOUNDRY);./
              | f a m i l y _ n a m e /.$setResult($_FAMILY_NAME);./
              | w e i g h t _ n a m e /.$setResult($_WEIGHT_NAME);./
              | s l a n t /.$setResult($_SLANT);./
              | s e t w i d t h _ n a m e /.$setResult($_SETWIDTH_NAME);./
              | a d d _ s t y l e _ n a m e /.$setResult($_ADD_STYLE_NAME);./
              | p i x e l _ s i z e /.$setResult($_PIXEL_SIZE);./
              | p o i n t _ s i z e /.$setResult($_POINT_SIZE);./
              | r e s o l u t i o n _ x /.$setResult($_RESOLUTION_X);./
              | r e s o l u t i o n _ y /.$setResult($_RESOLUTION_Y);./
              | s p a c i n g /.$setResult($_SPACING);./
              | a v e r a g e _ w i d t h /.$setResult($_AVERAGE_WIDTH);./
              | c h a r s e t _ r e g i s t r y /.$setResult($_CHARSET_REGISTRY);./
              | c h a r s e t _ e n c o d i n g /.$setResult($_CHARSET_ENCODING);./
              | f o n t n a m e _ r e g i s t r y /.$setResult($_FONTNAME_REGISTRY);./
              | c h a r s e t _ c o l l e c t i o n s /.$setResult($_CHARSET_COLLECTIONS);./
              | f o n t _ n a m e /.$setResult($_FONT_NAME);./
              | f a c e _ n a m e /.$setResult($_FACE_NAME);./
              | c o p y r i g h t /.$setResult($_COPYRIGHT);./
              | f o n t _ v e r s i o n /.$setResult($_FONT_VERSION);./
              | u n d e r l i n e _ p o s i t i o n /.$setResult($_UNDERLINE_POSITION);./
              | u n d e r l i n e _ t h i c k n e s s /.$setResult($_UNDERLINE_THICKNESS);./
              | x _ h e i g h t /.$setResult($_X_HEIGHT);./
              | c a p _ h e i g h t /.$setResult($_CAP_HEIGHT);./
              | r a w _ a s c e n t /.$setResult($_RAW_ASCENT);./
              | r a w _ d e s c e n t /.$setResult($_RAW_DESCENT);./
              | n o r m _ s p a c e /.$setResult($_NORM_SPACE);./
              | r e l a t i v e _ w e i g h t /.$setResult($_RELATIVE_WEIGHT);./
              | r e l a t i v e _ s e t w i d t h /.$setResult($_RELATIVE_SETWIDTH);./
              | f i g u r e _ w i d t h /.$setResult($_FIGURE_WIDTH);./
              | a v g _ l o w e r c a s e _ w i d t h /.$setResult($_AVG_LOWERCASE_WIDTH);./
              | a v g _ u p p e r c a s e _ w i d t h /.$setResult($_AVG_UPPERCASE_WIDTH);./
%End
