-- FilterParser (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options la=2
%Options fp=FilterParser
%options package=lpg.grammars.rfc1960
%options template=dtParserTemplateF.gi
%options import_terminals=FilterLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= filter_

    filter_ ::= LPAREN filtercomp RPAREN

    filtercomp ::= and_ | or_ | not_ | item

    and_ ::= AMP filterlist
    or_ ::= PIPE filterlist
    not_ ::= BANG filter_

    filterlist ::= filter_
                 | filter_ filterlist

    item ::= simple | present | substring

    simple ::= attr filtertype value

    filtertype ::= EQUAL | APPROX | GREATER | LESS

    present ::= attr EQUAL STAR

    substring ::= attr EQUAL substring_tail

    substring_tail ::= any_
                     | initial any_
                     | any_ final_
                     | initial any_ final_
                     | initial final_
                     | final_

    initial ::= value
    final_ ::= value

    any_ ::= STAR
           | STAR starval

    starval ::= value STAR
              | value STAR starval

    attr ::= OCTETSTRING
    value ::= OCTETSTRING
%End
