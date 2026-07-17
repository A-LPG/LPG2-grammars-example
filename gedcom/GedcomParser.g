-- GedcomParser (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options la=2
%Options fp=GedcomParser
%options package=lpg.grammars.gedcom
%options template=dtParserTemplateF.gi
%options import_terminals=GedcomLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    gedcom
%End

%Rules
    gedcom ::= line
             | gedcom line

    line ::= level opt_xref tag opt_value EOL

    opt_xref ::= $empty | pointer
    opt_value ::= $empty | line_value

    level ::= digits
    digits ::= DIGIT | digits DIGIT

    tag ::= alphanums
    alphanums ::= alphanum | alphanums alphanum
    alphanum ::= ALPHA | DIGIT

    line_value ::= line_item | line_value line_item

    line_item ::= pointer | escape | anychar

    escape ::= AT SHARP escape_text AT non_at

    non_at ::= ALPHA | DIGIT | OTHERCHAR | SHARP

    escape_text ::= anychar | escape_text anychar

    pointer ::= AT alphanum pointer_string AT
              | AT alphanum AT

    pointer_string ::= pointer_char | pointer_string pointer_char
    pointer_char ::= ALPHA | DIGIT | OTHERCHAR | SHARP

    anychar ::= ALPHA | DIGIT | OTHERCHAR | SHARP | ATAT
%End
