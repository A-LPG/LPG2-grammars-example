-- PGN Parser (LPG) — permissive movetext token stream
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
    pgn_database ::= $empty | pgn_database pgn_game
    pgn_game ::= tag_section movetext_section
    tag_section ::= $empty | tag_section tag_pair
    tag_pair ::= LEFT_BRACKET SYMBOL STRING RIGHT_BRACKET
    movetext_section ::= element_sequence game_termination
    element_sequence ::= $empty | element_sequence element
    element ::= INTEGER | PERIOD | SYMBOL | SUFFIX_ANNOTATION
              | NUMERIC_ANNOTATION_GLYPH
              | LEFT_PARENTHESIS element_sequence RIGHT_PARENTHESIS
    game_termination ::= WHITE_WINS | BLACK_WINS | DRAWN_GAME | ASTERISK
%End
