-- SnowballParser (LPG)
%Options la=2
%Options fp=SnowballParser
%options package=lpg.grammars.esolang.snowball
%options template=dtParserTemplateF.gi
%options import_terminals=SnowballLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    program
%End
%Rules

    program ::= p_list
    p_list ::= $empty | p_list p

    p ::= declaration
        | r_definition
        | g_definition
        | BACKWARDMODE LPAREN p_list RPAREN

    declaration ::= STRINGS LPAREN name_list RPAREN
                  | INTEGERS LPAREN name_list RPAREN
                  | BOOLEANS LPAREN name_list RPAREN
                  | ROUTINES LPAREN name_list RPAREN
                  | EXTERNALS LPAREN name_list RPAREN
                  | GROUPINGS LPAREN name_list RPAREN

    name_list ::= $empty | name_list IDENTIFIER

    r_definition ::= DEFINE IDENTIFIER AS c
    g_definition ::= DEFINE IDENTIFIER g g_tail
    g_tail ::= $empty | g_tail plus_minus g
    plus_minus ::= PLUS | MINUS

    g ::= IDENTIFIER | LITERAL_STRING

    c ::= LPAREN c_list RPAREN
        | IDENTIFIER
        | LITERAL_STRING
        | TRUE
        | FALSE
        | QUESTION
        | DELETE
        | NEXT
        | TOLIMIT
        | ATLIMIT
        | SUBSTRING
        | LBRACKET
        | RBRACKET
        | EQUAL LITERAL_STRING
        | EQUAL IDENTIFIER
        | NOT c
        | TEST c
        | TRY c
        | DO c
        | FAIL c
        | GOTO c
        | GOPAST c
        | REPEAT c
        | BACKWARDS c
        | REVERSE c

    c_list ::= $empty | c_list c

%End
