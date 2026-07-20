-- Smalltalk Parser (LPG) — structural port of grammars-v4 Smalltalk.g4
-- Nonterminals: script/sequence/temps/statements/expression/cascade/...
-- Adaptations (not soup): lexer skips ws/comments; NUMBER token instead of DIGIT+;
-- block args use `[:x | body]` pipe separator (Amber-style, common in g4 examples).

%Options la=3
%Options fp=SmalltalkParser
%options package=lpg.grammars.smalltalk
%options template=dtParserTemplateF.gi
%options import_terminals=SmalltalkLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    script
%End

%Rules
    script ::= sequence

    sequence ::= temps
               | temps statements
               | statements

    temps ::= PIPE id_list PIPE

    id_list ::= IDENTIFIER
              | id_list IDENTIFIER

    statements ::= answer
                 | expressions PERIOD answer
                 | expressions
                 | expressions PERIOD

    answer ::= CARROT expression
             | CARROT expression PERIOD

    expression ::= assignment
                 | cascade
                 | keywordSend
                 | binarySend
                 | primitive

    expressions ::= expression
                  | expressions PERIOD expression

    cascade ::= cascade_head cascade_tail

    cascade_head ::= keywordSend | binarySend

    cascade_tail ::= SEMI_COLON message
                   | cascade_tail SEMI_COLON message

    message ::= binaryMessage
              | unaryMessage
              | keywordMessage

    assignment ::= variable ASSIGNMENT expression

    variable ::= IDENTIFIER

    binarySend ::= unarySend
                 | unarySend binaryTail

    unarySend ::= operand
                | operand unaryTail

    keywordSend ::= binarySend keywordMessage

    keywordMessage ::= keywordPair
                     | keywordMessage keywordPair

    keywordPair ::= KEYWORD binarySend

    operand ::= literal
              | reference
              | subexpression

    subexpression ::= OPEN_PAREN expression CLOSE_PAREN

    literal ::= runtimeLiteral
              | parsetimeLiteral

    runtimeLiteral ::= dynamicDictionary
                     | dynamicArray
                     | block

    -- Amber/Redline blocks: [:args | body]
    block ::= BLOCK_START BLOCK_END
            | BLOCK_START sequence BLOCK_END
            | BLOCK_START blockParamList PIPE BLOCK_END
            | BLOCK_START blockParamList PIPE sequence BLOCK_END

    blockParamList ::= BLOCK_PARAM
                     | blockParamList BLOCK_PARAM

    dynamicDictionary ::= DYNDICT_START DYNARR_END
                        | DYNDICT_START expressions DYNARR_END

    dynamicArray ::= DYNARR_START DYNARR_END
                   | DYNARR_START expressions DYNARR_END

    parsetimeLiteral ::= pseudoVariable
                       | number
                       | charConstant
                       | literalArray
                       | string
                       | symbol

    number ::= NUMBER
             | MINUS NUMBER

    charConstant ::= CHARACTER_CONSTANT

    pseudoVariable ::= RESERVED_WORD

    string ::= STRING

    symbol ::= HASH bareSymbol

    primitive ::= LT KEYWORD NUMBER GT

    bareSymbol ::= IDENTIFIER
                 | binary_sel
                 | string
                 | keywords

    keywords ::= KEYWORD
               | keywords KEYWORD

    literalArray ::= LITARR_START literalArrayRest

    literalArrayRest ::= CLOSE_PAREN
                       | lit_elems CLOSE_PAREN

    lit_elems ::= lit_elem
                | lit_elems lit_elem

    lit_elem ::= parsetimeLiteral
               | bareLiteralArray
               | bareSymbol

    bareLiteralArray ::= OPEN_PAREN literalArrayRest

    unaryTail ::= unaryMessage
                | unaryMessage unaryTail

    unaryMessage ::= unarySelector

    unarySelector ::= IDENTIFIER

    reference ::= variable

    binaryTail ::= binaryMessage
                 | binaryMessage binaryTail

    binary_sel ::= BINARY_SELECTOR | MINUS | LT | GT | PIPE

    binaryMessage ::= binary_sel unarySend
%End
