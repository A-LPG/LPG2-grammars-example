-- VBA Like Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Ported from antlr/grammars-v4 vba/vba_like/vba_like.g4 for parse-level examples.

%Options la=2,ebnf
%Options fp=VbaLikeParser
%options package=lpg.grammars.vba.vba_like
%options template=dtParserTemplateF.gi
%options import_terminals=VbaLikeLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    -- program : likePatternElement* EOF
    program ::= likePatternElement*

    likePatternElement ::= likePatternChar
                          | likePatternCharlist
                          | wildcard

    likePatternChar ::= CHAR
                       | MINUS
                       | RBRACKET

    wildcard ::= WILD_CHAR
                | WILD_SEQ
                | WILD_DIGIT

    likePatternCharlist ::= LBRACKET RBRACKET
                           | LBRACKET BANG RBRACKET
                           | LBRACKET charList RBRACKET
                           | LBRACKET BANG charList RBRACKET

    charList ::= MINUS
                | MINUS opt_trailing_minus
                | MINUS charListElements
                | MINUS charListElements opt_trailing_minus
                | charListElements
                | charListElements opt_trailing_minus

    opt_trailing_minus ::= MINUS

    charListElements ::= charListElement+

    charListElement ::= charlistChar
                       | charRange

    charlistChar ::= CHAR
                    | WILD_SEQ
                    | WILD_DIGIT
                    | WILD_CHAR
                    | LBRACKET

    charRange ::= charlistChar MINUS charlistChar
%End
