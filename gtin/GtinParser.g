-- GTIN Parser (LPG) — structural port of grammars-v4 gtin/gtin.g4
-- Nonterminals mirror g4: gtin / gtin8 / ean8 / gtin12 / upc / upc_a /
-- upc_e / gtin13 / ean13 / bookland / ismn / issn / gtin14 / supplemental_code.
-- backtrack resolves EOF-length alternatives (ANTLR ALL(*)); not digit-ladder soup.

%Options la=2,backtrack
%Options fp=GtinParser
%options package=lpg.grammars.gtin
%options template=btParserTemplateF.gi
%options import_terminals=GtinLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    gtin
%End

%Rules
    -- gtin: (gtin8 | gtin12 | gtin13 | gtin14 | supplemental_code) EOF
    gtin ::= gtin8
           | gtin12
           | gtin13
           | gtin14
           | supplemental_code

    gtin8 ::= ean8

    ean8 ::= any_digit any_digit any_digit any_digit any_digit any_digit any_digit any_digit

    gtin12 ::= upc

    gtin13 ::= ean13

    gtin14 ::= ean14

    upc ::= upc_a
          | upc_e

    -- 12 digits (1+5+5+1)
    upc_a ::= num_system upc_a_manufacturer upc_a_product check_code

    upc_a_manufacturer ::= upc_a_5

    upc_a_product ::= upc_a_5

    upc_a_5 ::= any_digit any_digit any_digit any_digit any_digit

    upc_e ::= any_digit any_digit any_digit any_digit any_digit any_digit

    num_system ::= any_digit

    check_code ::= any_digit

    supplemental_code ::= supplemental_code_5
                        | supplemental_code_2

    supplemental_code_5 ::= any_digit any_digit any_digit any_digit any_digit

    supplemental_code_2 ::= any_digit any_digit

    -- 13 digits
    ean13 ::= ean13_ismn
            | ean13_issn
            | ean13_bookland
            | ean13_generic

    ean13_generic ::= gs1_prefix ean_13_manprod check_code

    ean13_ismn ::= gs1_prefix_ismn ismn_publisher_number ismn_item_number check_code

    gs1_prefix_ismn ::= DIGIT_9 DIGIT_7 DIGIT_9 DIGIT_0

    ismn_publisher_number ::= any_digit any_digit any_digit any_digit

    ismn_item_number ::= any_digit any_digit any_digit any_digit

    ean13_bookland ::= gs1_prefix_bookland bookland_isbn

    bookland_isbn ::= any_digit any_digit any_digit any_digit any_digit any_digit any_digit any_digit any_digit

    gs1_prefix_bookland ::= gs1_prefix_bookland_1
                          | gs1_prefix_bookland_2

    gs1_prefix_bookland_1 ::= DIGIT_9 DIGIT_7 DIGIT_9 bookland_digit_1_9

    bookland_digit_1_9 ::= DIGIT_1 | DIGIT_2 | DIGIT_3 | DIGIT_4 | DIGIT_5
                         | DIGIT_6 | DIGIT_7 | DIGIT_8 | DIGIT_9

    gs1_prefix_bookland_2 ::= DIGIT_9 DIGIT_7 DIGIT_8 any_digit

    gs1_prefix_issn ::= DIGIT_9 DIGIT_7 DIGIT_7

    ean13_issn ::= gs1_prefix_issn issn check_code

    issn ::= any_digit any_digit any_digit any_digit any_digit any_digit any_digit any_digit any_digit

    ean_13_manprod ::= any_digit any_digit any_digit any_digit any_digit any_digit any_digit any_digit any_digit

    gs1_prefix ::= any_digit any_digit any_digit

    ean14 ::= ean14_packaging ean14_product check_code

    ean14_packaging ::= DIGIT_0 | DIGIT_1 | DIGIT_2 | DIGIT_3 | DIGIT_4
                      | DIGIT_5 | DIGIT_6 | DIGIT_7 | DIGIT_8

    ean14_product ::= any_digit any_digit any_digit any_digit any_digit any_digit
                    any_digit any_digit any_digit any_digit any_digit any_digit

    any_digit ::= DIGIT_0 | DIGIT_1 | DIGIT_2 | DIGIT_3 | DIGIT_4
                | DIGIT_5 | DIGIT_6 | DIGIT_7 | DIGIT_8 | DIGIT_9
%End
