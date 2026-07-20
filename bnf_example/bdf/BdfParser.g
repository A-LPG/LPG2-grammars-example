-- BDF Parser (LPG)
%Options la=2
%Options fp=BdfParser
%options package=lpg.grammars.bdf
%options template=dtParserTemplateF.gi
%options import_terminals=BdfLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    font
%End
%Rules
    font ::= startfont
    startfont ::= STARTFONT arg decls ENDFONT
    decls ::= decl | decls decl
    decl ::= fontdecl | sizedecl | fontboundingboxdecl | propertiesdecl
           | charsdecl | chardecl

    fontdecl ::= FONT arg
    sizedecl ::= SIZE arg arg arg
    fontboundingboxdecl ::= FONTBOUNDINGBOX arg arg arg arg
    propertiesdecl ::= STARTPROPERTIES arg prop_items ENDPROPERTIES
    prop_items ::= $empty | prop_items prop_item
    prop_item ::= FONT_ASCENT arg | FONT_DESCENT arg
                | FOUNDRY QUOTEDSTRING | FAMILY_NAME QUOTEDSTRING
                | WEIGHT_NAME QUOTEDSTRING | SLANT QUOTEDSTRING
                | SETWIDTH_NAME QUOTEDSTRING | ADD_STYLE_NAME QUOTEDSTRING
                | PIXEL_SIZE arg | POINT_SIZE arg
                | RESOLUTION_X arg | RESOLUTION_Y arg
                | SPACING QUOTEDSTRING | AVERAGE_WIDTH arg
                | CHARSET_REGISTRY QUOTEDSTRING | CHARSET_ENCODING QUOTEDSTRING
                | FONTNAME_REGISTRY QUOTEDSTRING | CHARSET_COLLECTIONS QUOTEDSTRING
                | FONT_NAME QUOTEDSTRING | FACE_NAME QUOTEDSTRING
                | COPYRIGHT QUOTEDSTRING | FONT_VERSION QUOTEDSTRING
                | UNDERLINE_POSITION arg | UNDERLINE_THICKNESS arg
                | X_HEIGHT arg | CAP_HEIGHT arg
                | RAW_ASCENT arg | RAW_DESCENT arg | NORM_SPACE arg
                | RELATIVE_WEIGHT arg | RELATIVE_SETWIDTH arg
                | FIGURE_WIDTH arg | AVG_LOWERCASE_WIDTH arg | AVG_UPPERCASE_WIDTH arg

    charsdecl ::= CHARS arg
    chardecl ::= STARTCHAR arg char_items ENDCHAR
    char_items ::= $empty | char_items char_item
    char_item ::= ENCODING arg | SWIDTH arg arg | DWIDTH arg arg
                | BBX arg arg arg arg | BITMAP args
    args ::= $empty | args arg

    -- non-keyword ARG becomes IDENTIFIER via checkForKeyWord
    arg ::= IDENTIFIER
%End
