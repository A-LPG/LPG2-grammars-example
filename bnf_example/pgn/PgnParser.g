-- PGN Parser (LPG) — structural port of grammars-v4 pgn/PGN.g4
-- Nonterminals: parse / pgn_database / pgn_game / tag_section / tag_pair /
-- tag_name / tag_value / movetext_section / element_sequence / element /
-- move_number_indication / san_move / recursive_variation / game_termination

%Options la=2
%Options fp=PgnParser
%options package=lpg.grammars.pgn
%options template=dtParserTemplateF.gi
%options import_terminals=PgnLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    parse
%End

%Rules
    parse ::= pgn_database

    pgn_database ::= $empty
                   | pgn_database pgn_game

    pgn_game ::= tag_section movetext_section

    tag_section ::= $empty
                  | tag_section tag_pair

    tag_pair ::= LEFT_BRACKET tag_name tag_value RIGHT_BRACKET

    tag_name ::= SYMBOL

    tag_value ::= STRING

    movetext_section ::= element_sequence game_termination

    element_sequence ::= $empty
                       | element_sequence element
                       | element_sequence recursive_variation

    element ::= move_number_indication
              | san_move
              | NUMERIC_ANNOTATION_GLYPH

    move_number_indication ::= INTEGER
                             | INTEGER PERIOD

    -- SYMBOL plus optional traditional suffix (!, ?, !!, …) from PGN import format
    san_move ::= SYMBOL
               | SYMBOL SUFFIX_ANNOTATION

    recursive_variation ::= LEFT_PARENTHESIS element_sequence RIGHT_PARENTHESIS

    game_termination ::= WHITE_WINS
                       | BLACK_WINS
                       | DRAWN_GAME
                       | ASTERISK
%End
