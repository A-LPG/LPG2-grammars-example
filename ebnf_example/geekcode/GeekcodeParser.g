-- AUTO-GENERATED from antlr/grammars-v4 geekcode by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=GeekcodeParser
%options package=lpg.grammars.geekcode
%options template=dtParserTemplateF.gi
%options import_terminals=GeekcodeLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= GCODE list_1
             | IDENTIFIER list_1

    tuple ::= opt_2 tupletyepe list_4

    crossover ::= seq_5

    sizing ::= list_7

    tupletyepe ::= DRESS
                  | shapetuple
                  | AGE
                  | HAIR
                  | COMPUTERS
                  | PERL
                  | EMACS
                  | WWW
                  | USENET
                  | USENET_ORACLE
                  | KIBO
                  | OS2
                  | MACINTOSH
                  | VMS
                  | POLITCALSOCIAL
                  | POLITICSECONOMIC
                  | CYPHERPUNKS
                  | PGP
                  | STARTREK
                  | BABYLON5
                  | XFILES
                  | ROLEPLAYING
                  | TELEVISION
                  | BOOKS
                  | DILBERT
                  | DOOM
                  | EDUCATION
                  | HOUSEING
                  | RELATIONSHIPS
                  | SEXU
                  | SEXM
                  | SEXF
                  | LINUX
                  | GLASSES
                  | PENS
                  | AUTO
                  | WEIRDNESS
                  | VERBAGE
                  | BSD386
                  | JEOPARDY
                  | MAGIC
                  | BARNEY
                  | MUSIC
                  | FRIENDS
                  | NUTRITION
                  | unixtuple

    unixtuple ::= UNIX list_9

    shapetuple ::= S opt_10 list_11 list_15

    qualifier ::= NOTRIGID
                 | WANNABE
                 | FORLIVING
                 | NOKNOWLEDGE

    list_1 ::= tuple+

    opt_2 ::= REFUSE?

    grp_3 ::= sizing
             | crossover
             | qualifier

    list_4 ::= (list_4 grp_3)?

    seq_5 ::= LPAREN sizing RPAREN

    grp_6 ::= MINUS
             | PLUS
             | STAR

    list_7 ::= grp_6+

    grp_8 ::= BSD
             | U
             | AIX
             | SYSV
             | HPUX
             | IRIX
             | OSF1
             | SOLARIS
             | SCO
             | NEXT
             | LINUX

    list_9 ::= grp_8+

    opt_10 ::= sizing?

    list_11 ::= (list_11 qualifier)?

    opt_12 ::= sizing?

    list_13 ::= (list_13 qualifier)?

    seq_14 ::= COLON opt_12 list_13

    list_15 ::= (list_15 seq_14)?
%End
