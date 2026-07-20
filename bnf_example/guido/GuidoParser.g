-- GuidoParser (LPG)
%Options la=2
%Options fp=GuidoParser
%options package=lpg.grammars.guido
%options template=dtParserTemplateF.gi
%options import_terminals=GuidoLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    prog
%End
%Rules

    prog ::= segments
           | sequencelist

    segments ::= segment | segments segment
    segment ::= LBRACE seqlists RBRACE
    seqlists ::= sequencelist | seqlists sequencelist

    sequencelist ::= sequence | sequencelist COMMA sequence
    sequence ::= LBRACKET seq_items RBRACKET
    seq_items ::= seq_item | seq_items seq_item
    seq_item ::= tag | note | chord

    tag ::= TAGSTART tagname opt_parameters opt_notes
    tagname ::= TITLE | TEMPO | CLEF | METER | SLUR | KEY | BARFORMAT | STAFF | T | REPEATEND | STRING
    opt_parameters ::= $empty | parameters
    parameters ::= LT parameter param_tail GT
    param_tail ::= $empty | param_tail COMMA parameter
    parameter ::= STRINGLITERAL | number | kvpair
    kvpair ::= STRING EQUAL kv_vals
    kv_vals ::= kv_val | kv_vals kv_val
    kv_val ::= STRING | NUMBER

    opt_notes ::= $empty | notes
    notes ::= LPAREN note_or_chords RPAREN
    note_or_chords ::= note_or_chord | note_or_chords note_or_chord
    note_or_chord ::= note | chord

    note ::= notename opt_accidental opt_octave opt_duration opt_dotting
    chord ::= LBRACE note chord_tail RBRACE
    chord_tail ::= $empty | chord_tail COMMA note

    notename ::= STRING | REST
    opt_accidental ::= $empty | SHARP | AMP
    opt_octave ::= $empty | number
    number ::= opt_sign NUMBER
    opt_sign ::= $empty | MINUS | PLUS
    opt_duration ::= $empty | duration
    duration ::= opt_star fraction
    opt_star ::= $empty | STAR
    fraction ::= opt_number opt_denom
    opt_number ::= $empty | number
    opt_denom ::= $empty | SLASH number
    opt_dotting ::= $empty | dots
    dots ::= DOT | dots DOT

%End
