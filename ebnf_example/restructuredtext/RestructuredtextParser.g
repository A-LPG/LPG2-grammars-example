-- AUTO-GENERATED from antlr/grammars-v4 restructuredtext by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack,ebnf
%Options fp=RestructuredtextParser
%options package=lpg.grammars.restructuredtext
%options template=btParserTemplateF.gi
%options import_terminals=RestructuredtextLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    parse
%End

%Rules
    parse ::= list_2

    element ::= section
               | sectionElement

    sectionElement ::= listItemBullet
                      | listItemEnumerated
                      | paragraph
                      | lineBlock
                      | comment

    comment ::= list_3 Comment list_4 opt_7

    commentParagraphs ::= commentParagraph commentRest

    commentRest ::= list_9

    commentParagraph ::= list_10

    commentLineNoBreak ::= commentLineAtoms

    commentLine ::= LineBreak Space Space Space commentLineNoBreak

    commentLineAtoms ::= list_11

    paragraph ::= lines

    section ::= opt_13 title opt_14 SectionSeparator list_15 list_16

    title ::= LineBreak textStart
             | LineBreak lineSpecial list_17 opt_18
             | lineNormal
             | lineStar

    lineBlock ::= LineBreak lineBlockLine opt_19 list_20

    lineBlockLine ::= Block Space opt_21 list_22 starText
                     | Block Space opt_23 list_24

    listItemBullet ::= bulletCrossLine
                      | bulletSimple
                      | LineBreak list_25 grp_26

    bulletCrossLine ::= LineBreak list_27 bullet list_28 opt_30

    bulletSimple ::= LineBreak list_31 bullet list_32 paragraphNoBreak list_33

    bullet ::= Star
              | Minus
              | Plus

    listItemEnumerated ::= LineBreak lineSpecial list_34 opt_37

    paragraphNoBreak ::= lineNoBreak list_38

    lineNoBreak ::= opt_39 spanLineStartNoStar list_40

    lines ::= linesStar
             | linesNormal

    linesNormal ::= lineNormal grp_41

    linesStar ::= lineStar
                 | lineStar lineNoBreak opt_43
                 | lineStar lineNoBreak linesStar

    lineNormal ::= LineBreak opt_44 list_45 opt_49
                  | lineSpecial

    lineStar ::= LineBreak opt_50 list_51 starText
                | LineBreak opt_52 list_53 starText

    lineSpecial ::= Numbers Dot
                   | LineBreak opt_54 Numbers
                   | LineBreak opt_55 SectionSeparator seq_57 list_58

    empty_line ::= LineBreak list_59

    indentation ::= list_60

    spanLineStartNoStar ::= reference
                           | referenceIn
                           | hyperlinkTarget
                           | hyperlink
                           | hyperlinkDoc
                           | backTickText
                           | quotedLiteral
                           | textLineStart

    textLineStart ::= list_61 list_62

    lineStart_fragment ::= grp_63
                          | grp_65
                          | grp_67
                          | grp_69
                          | seq_71
                          | grp_72
                          | grp_74
                          | grp_76
                          | Alphabet
                          | separator separator
                          | TimeStar
                          | SquareLeft
                          | SquareRight
                          | RoundLeft
                          | RoundRight
                          | SemiColon
                          | Colon
                          | QuotationDouble
                          | QuotationSingle
                          | Dot
                          | UnderScore
                          | AngleLeft
                          | AngleRight
                          | Any

    text ::= list_78 list_79

    textStart ::= forcedText
                 | lineStart_fragment
                 | text_fragment_start list_80
                 | Space

    forcedText ::= RoundLeft Star RoundRight
                  | SquareLeft Star SquareRight
                  | QuotationSingle Star QuotationSingle
                  | QuotationSingle QuotationDouble Star QuotationDouble QuotationSingle

    spanNoStar ::= reference
                  | referenceIn
                  | hyperlinkTarget
                  | hyperlink
                  | hyperlinkDoc
                  | backTickText
                  | quotedLiteral
                  | text

    span ::= starText
            | spanNoStar

    quotedLiteral ::= AngleRight Space lineNoBreak

    text_fragment_start ::= SemiColon
                           | Numbers
                           | Alphabet
                           | Space
                           | SquareLeft
                           | SquareRight
                           | RoundLeft
                           | RoundRight
                           | Colon
                           | separator
                           | AngleLeft
                           | AngleRight
                           | QuotationDouble
                           | Dot
                           | Star Space
                           | Any

    text_fragment ::= text_fragment_start
                     | forcedText
                     | Block
                     | Literal
                     | Comment
                     | Dot
                     | Quote

    starText ::= list_81 LineBreak
                | list_82 starNoSpace starAtoms list_85 list_86 LineBreak
                | list_87 starNoSpace starAtoms list_88 LineBreak
                | list_89 list_90 starAtoms list_91 LineBreak

    starAtoms ::= list_92 list_95

    starNoSpace ::= grp_96

    starAtom ::= grp_97

    backTickText ::= opt_99 body opt_100

    body ::= BackTick list_101 backTickAtoms list_102
            | BackTick backTickNoSpace backTickAtoms list_103
            | BackTick BackTick

    backTickAtoms ::= list_104

    backTickNoSpace ::= grp_105

    backTickAtom ::= grp_106
                    | BackTick grp_107

    reference ::= list_108 UnderScore

    referenceIn ::= UnderScore list_109 Colon Space url

    hyperlinkTarget ::= UnderScore list_110

    hyperlink ::= BackTick list_111 Space AngleLeft url AngleRight BackTick UnderScore Space

    hyperlinkDoc ::= _DOC_ BackTick list_112 Space AngleLeft url AngleRight BackTick
                    | _DOC_ BackTick url BackTick

    url ::= list_113

    urlAtom ::= grp_114

    hyperlinkAtom ::= grp_115

    separator ::= grp_116

    grp_1 ::= element
             | empty_line

    list_2 ::= grp_1+

    list_3 ::= (list_3 Space)?

    list_4 ::= (list_4 Space)?

    opt_5 ::= commentParagraphs?

    seq_6 ::= commentLineNoBreak opt_5

    opt_7 ::= seq_6?

    seq_8 ::= empty_line commentParagraph

    list_9 ::= (list_9 seq_8)?

    list_10 ::= commentLine+

    list_11 ::= LineBreak+

    seq_12 ::= LineBreak SectionSeparator

    opt_13 ::= seq_12?

    opt_14 ::= LineBreak?

    list_15 ::= (list_15 LineBreak)?

    list_16 ::= (list_16 sectionElement)?

    list_17 ::= Space+

    opt_18 ::= paragraphNoBreak?

    opt_19 ::= LineBreak?

    list_20 ::= (list_20 lineBlockLine)?

    opt_21 ::= indentation?

    list_22 ::= (list_22 span)?

    opt_23 ::= indentation?

    list_24 ::= span+

    list_25 ::= (list_25 Space)?

    grp_26 ::= Minus
              | Plus

    list_27 ::= (list_27 Space)?

    list_28 ::= (list_28 Space)?

    list_29 ::= paragraph+

    opt_30 ::= list_29?

    list_31 ::= (list_31 Space)?

    list_32 ::= Space+

    list_33 ::= (list_33 paragraph)?

    list_34 ::= Space+

    list_35 ::= (list_35 paragraph)?

    seq_36 ::= paragraphNoBreak list_35

    opt_37 ::= seq_36?

    list_38 ::= (list_38 lines)?

    opt_39 ::= indentation?

    list_40 ::= (list_40 span)?

    opt_42 ::= linesNormal?

    grp_41 ::= linesStar
              | opt_42

    opt_43 ::= linesNormal?

    opt_44 ::= indentation?

    list_45 ::= spanLineStartNoStar+

    list_46 ::= (list_46 span)?

    list_47 ::= spanNoStar+

    seq_48 ::= list_46 list_47

    opt_49 ::= seq_48?

    opt_50 ::= indentation?

    list_51 ::= (list_51 spanLineStartNoStar)?

    opt_52 ::= indentation?

    list_53 ::= text_fragment+

    opt_54 ::= indentation?

    opt_55 ::= indentation?

    list_56 ::= Space+

    seq_57 ::= list_56 SectionSeparator

    list_58 ::= (list_58 Space)?

    list_59 ::= (list_59 Space)?

    list_60 ::= Space+

    list_61 ::= lineStart_fragment+

    list_62 ::= (list_62 text_fragment)?

    grp_64 ::= Space
              | LineBreak
              | Star

    grp_63 ::= Minus grp_64

    grp_66 ::= Space
              | Star

    grp_65 ::= Plus grp_66

    grp_68 ::= Space
              | LineBreak
              | Star

    grp_67 ::= Numbers Dot grp_68

    grp_70 ::= Dot
              | LineBreak
              | Star

    grp_69 ::= Numbers grp_70

    seq_71 ::= Alphabet Dot

    grp_73 ::= Space
              | Star

    grp_72 ::= Block grp_73

    grp_75 ::= Space
              | Star

    grp_74 ::= UnderScore grp_75

    grp_77 ::= Dot
              | LineBreak
              | Star

    grp_76 ::= Alphabet grp_77

    list_78 ::= textStart+

    list_79 ::= (list_79 text_fragment)?

    list_80 ::= text_fragment_start+

    list_81 ::= Star+

    list_82 ::= Star+

    list_83 ::= (list_83 Star)?

    seq_84 ::= LineBreak list_83 starNoSpace starAtoms

    list_85 ::= (list_85 seq_84)?

    list_86 ::= (list_86 Star)?

    list_87 ::= Star+

    list_88 ::= (list_88 Star)?

    list_89 ::= Star+

    list_90 ::= Space+

    list_91 ::= Star+

    list_92 ::= (list_92 starAtom)?

    list_93 ::= (list_93 Star)?

    seq_94 ::= list_93 starAtom

    list_95 ::= (list_95 seq_94)?

    grp_96 ::= Star
              | LineBreak
              | Space
              | SectionSeparator

    grp_97 ::= Star
              | LineBreak

    seq_98 ::= Colon Alphabet Colon

    opt_99 ::= seq_98?

    opt_100 ::= UnderScore?

    list_101 ::= (list_101 BackTick)?

    list_102 ::= BackTick+

    list_103 ::= BackTick+

    list_104 ::= backTickAtom+

    grp_105 ::= BackTick
               | LineBreak
               | Space

    grp_106 ::= BackTick
               | LineBreak

    grp_107 ::= BackTick
               | LineBreak

    list_108 ::= Any+

    list_109 ::= hyperlinkAtom+

    list_110 ::= Any+

    list_111 ::= hyperlinkAtom+

    list_112 ::= hyperlinkAtom+

    list_113 ::= urlAtom+

    grp_114 ::= LineBreak
               | BackTick

    grp_115 ::= LineBreak
               | AngleLeft
               | AngleRight
               | BackTick
               | Star

    grp_116 ::= Minus
               | Equal
               | Plus
               | Hat
%End
