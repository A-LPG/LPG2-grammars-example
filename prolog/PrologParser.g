-- AUTO-GENERATED from antlr/grammars-v4 prolog by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=PrologParser
%options package=lpg.grammars.prolog
%options template=dtParserTemplateF.gi
%options import_terminals=PrologLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    p_text
%End

%Rules
    p_text ::= list_2

    directive ::= OP_65657 term DOT

    clause ::= term DOT

    termlist ::= term list_4

    term ::= VARIABLE
           | LPAREN term RPAREN
           | opt_5 integer
           | opt_6 FLOAT
           | atom LPAREN termlist RPAREN
           | term operator_ term
           | operator_ term
           | LBRACKET termlist opt_8 RBRACKET
           | LBRACE termlist RBRACE
           | atom

    operator_ ::= OP_65657
           | OP_25615
           | OP_85852
           | DYNAMIC
           | MULTIFILE
           | DISCONTIGUOUS
           | PUBLIC
           | SEMI
           | ARROW
           | COMMA
           | OP_83047
           | EQ
           | OP_17777
           | EQEQ
           | OP_53763
           | OP_55176
           | OP_78338
           | OP_13812
           | OP_2522
           | OP_56644
           | IS
           | OP_10267
           | OP_38803
           | LT
           | OP_37127
           | GT
           | GTEQ
           | COLON
           | PLUS
           | MINUS
           | OP_22382
           | OP_4854
           | STAR
           | SLASH
           | SLASHSLASH
           | REM
           | MOD
           | LSHIFT
           | RSHIFT
           | STARSTAR
           | CARET
           | BACKSLASH

    atom ::= LBRACKET RBRACKET
           | LBRACE RBRACE
           | LETTER_DIGIT
           | GRAPHIC_TOKEN
           | QUOTED
           | DOUBLE_QUOTED_LIST
           | BACK_QUOTED_STRING
           | SEMI
           | BANG

    integer ::= DECIMAL
           | CHARACTER_CODE_CONSTANT
           | BINARY
           | OCTAL
           | HEX

    grp_1 ::= directive | clause

    list_2 ::= $empty | list_2 grp_1

    seq_3 ::= COMMA term

    list_4 ::= $empty | list_4 seq_3

    opt_5 ::= MINUS | $empty

    opt_6 ::= MINUS | $empty

    grp_7 ::= PIPE term

    opt_8 ::= grp_7 | $empty

%End
