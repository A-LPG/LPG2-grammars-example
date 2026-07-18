-- XSD Regex Parser (LPG) — structural port of grammars-v4 xsd-regex/regexParser.g4
-- Nonterminals mirror g4: root / regExp / branch / piece / quantifier / atom /
-- charClass / charClassExpr / charGroup / posCharGroup / charRange / charClassEsc.
-- Lexer modes collapsed (REGEXCHAR / escapes); not token-stream soup.

%Options la=3
%Options fp=XsdRegexParser
%options package=lpg.grammars.xsd_regex
%options template=dtParserTemplateF.gi
%options import_terminals=XsdRegexLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    root
%End

%Rules
    root ::= regExp

    regExp ::= branch branch_tail

    branch_tail ::= $empty
                  | branch_tail PIPE branch

    branch ::= piece_list

    piece_list ::= $empty
                 | piece_list piece

    piece ::= atom opt_quantifier

    opt_quantifier ::= quantifier
                     | $empty

    quantifier ::= QUESTION
                 | STAR
                 | PLUS
                 | StartQuantity quantity EndQuantity

    quantity ::= quantRange
               | quantMin
               | REGEXCHAR

    quantRange ::= REGEXCHAR COMMA REGEXCHAR

    quantMin ::= REGEXCHAR COMMA

    atom ::= REGEXCHAR
           | charClass
           | LPAREN regExp RPAREN

    charClass ::= charClassEsc
                | charClassExpr
                | WildcardEsc

    charClassExpr ::= char_group_open charGroup EndCharGroup

    char_group_open ::= NegCharGroup
                      | NestedNegCharGroup
                      | PosCharGroup
                      | NestedPosCharGroup

    charGroup ::= opt_posCharGroup DASH DASH charClassExpr
                | posCharGroup DASH charClassExpr
                | posCharGroup opt_dash
                | DASH

    opt_posCharGroup ::= posCharGroup
                       | $empty

    opt_dash ::= DASH
               | $empty

    posCharGroup ::= opt_dash char_group_items

    char_group_items ::= char_group_item
                       | char_group_items char_group_item

    char_group_item ::= charRange
                      | charClassEsc

    charRange ::= seRange
                | REGEXCHAR

    seRange ::= charOrEsc DASH charOrEsc

    charOrEsc ::= REGEXCHAR
                | SingleCharEsc

    charClassEsc ::= SingleCharEsc
                   | NestedSingleCharEsc
                   | MultiCharEsc
                   | NestedMultiCharEsc
                   | catEsc
                   | complEsc

    catEsc ::= cat_open charProp EndCategory

    complEsc ::= compl_open charProp EndCategory

    cat_open ::= CatEsc
               | NestedCatEsc

    compl_open ::= ComplEsc
                 | NestedComplEsc

    charProp ::= IsCategory
               | IsBlock
%End
