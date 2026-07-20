-- Javadoc Parser (LPG) — structural subset of grammars-v4 JavadocParser.g4
-- Not nested token-stream soup. real_g4_port subset (description + block tags).

%Options la=2
%Options fp=JavadocParser
%options package=lpg.grammars.javadoc
%options template=dtParserTemplateF.gi
%options import_terminals=JavadocLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    documentation
%End
%Rules
    documentation ::= JAVADOC_START opt_ws documentationContent JAVADOC_END opt_nl
                    | documentationContent

    documentationContent ::= description opt_ws
                           | opt_ws tagSection
                           | description NEWLINE opt_ws tagSection

    description ::= descriptionLine description_tail
    description_tail ::= $empty | description_tail NEWLINE descriptionLine

    descriptionLine ::= descriptionLineStart desc_elems
                      | inlineTag desc_elems
    desc_elems ::= $empty | desc_elems descriptionLineElement

    descriptionLineStart ::= opt_space textish textish_tail
    textish ::= TEXT_CONTENT | NAME | STAR | SLASH | BRACE_OPEN | BRACE_CLOSE
    textish_tail ::= $empty | textish_tail textish | textish_tail SPACE | textish_tail AT

    descriptionLineElement ::= inlineTag | descriptionLineText
    descriptionLineText ::= text_run
    text_run ::= textish | SPACE | AT | text_run textish | text_run SPACE | text_run AT

    tagSection ::= blockTag block_tags
    block_tags ::= $empty | block_tags blockTag

    blockTag ::= opt_space AT NAME opt_space block_contents
    block_contents ::= $empty | block_contents blockTagContent

    blockTagContent ::= blockTagText | inlineTag | NEWLINE
    blockTagText ::= textish | SPACE | STAR | SLASH | BRACE_OPEN | BRACE_CLOSE
                   | blockTagText textish | blockTagText SPACE | blockTagText STAR
                   | blockTagText SLASH | blockTagText BRACE_OPEN | blockTagText BRACE_CLOSE

    inlineTag ::= INLINE_TAG_START NAME opt_space opt_inline BRACE_CLOSE
    opt_inline ::= $empty | braceText brace_more
    brace_more ::= $empty | brace_more braceText | brace_more NEWLINE
    braceText ::= TEXT_CONTENT | NAME | SPACE | STAR | SLASH | NEWLINE

    opt_ws ::= $empty | opt_ws SPACE | opt_ws NEWLINE
    opt_space ::= $empty | SPACE
    opt_nl ::= $empty | opt_nl NEWLINE
%End
