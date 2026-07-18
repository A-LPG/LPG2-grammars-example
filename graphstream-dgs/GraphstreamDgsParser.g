-- AUTO-GENERATED from antlr/grammars-v4 graphstream-dgs by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=GraphstreamDgsParser
%options package=lpg.grammars.graphstream_dgs
%options template=dtParserTemplateF.gi
%options import_terminals=GraphstreamDgsLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    dgs
%End

%Rules
    dgs ::= header list_2

    header ::= MAGIC EOL identifier INT INT EOL

    event ::= grp_3 grp_4

    an ::= AN identifier attributes

    cn ::= CN identifier attributes

    dn ::= DN identifier

    ae ::= AE identifier identifier opt_5 identifier attributes

    ce ::= CE identifier attributes

    de ::= DE identifier

    cg ::= CG attributes

    st ::= ST REAL

    cl ::= CL

    attributes ::= list_6

    attribute ::= opt_8 identifier opt_12

    value ::= STRING
           | INT
           | REAL
           | COLOR
           | array_
           | a_map
           | identifier

    array_ ::= LBRACE opt_16 RBRACE

    a_map ::= LBRACK opt_20 RBRACK

    mapping ::= identifier assign value

    direction ::= LANGLE
           | RANGLE

    assign ::= EQUALS
           | COLON

    identifier ::= STRING
           | INT
           | WORD list_22

    grp_1 ::= event | COMMENT | EOL

    list_2 ::= $empty | list_2 grp_1

    grp_3 ::= an | cn | dn | ae | ce | de | cg | st | cl

    grp_4 ::= COMMENT | EOL

    opt_5 ::= direction | $empty

    list_6 ::= $empty | list_6 attribute

    grp_7 ::= PLUS | MINUS

    opt_8 ::= grp_7 | $empty

    seq_9 ::= COMMA value

    list_10 ::= $empty | list_10 seq_9

    seq_11 ::= assign value list_10

    opt_12 ::= seq_11 | $empty

    seq_13 ::= COMMA value

    list_14 ::= $empty | list_14 seq_13

    seq_15 ::= value list_14

    opt_16 ::= seq_15 | $empty

    seq_17 ::= COMMA mapping

    list_18 ::= $empty | list_18 seq_17

    seq_19 ::= mapping list_18

    opt_20 ::= seq_19 | $empty

    seq_21 ::= DOT WORD

    list_22 ::= $empty | list_22 seq_21

%End
