-- Fen Parser (LPG)
%Options la=2
%Options fp=FenParser
%options package=lpg.grammars.fen
%options template=dtParserTemplateF.gi
%options import_terminals=FenLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    fen
%End
%Rules
    fen ::= placement SPACE color SPACE castling SPACE enpassant SPACE halfmoveclock SPACE fullmoveclock

    color ::= LETTER

    castling ::= DASH
               | castling_letters

    castling_letters ::= LETTER
                       | castling_letters LETTER

    enpassant ::= DASH
                | position

    position ::= LETTER NUMBER

    halfmoveclock ::= NUMBER
    fullmoveclock ::= NUMBER

    placement ::= rank slash_ranks
    slash_ranks ::= SLASH rank
                  | slash_ranks SLASH rank

    rank ::= rank_item
           | rank rank_item

    rank_item ::= LETTER
                | NUMBER
%End
