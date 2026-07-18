-- AUTO-GENERATED from antlr/grammars-v4 smiles by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SmilesParser
%options package=lpg.grammars.smiles
%options template=dtParserTemplateF.gi
%options import_terminals=SmilesLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    smiles_file
%End

%Rules
    smiles_file ::= smiles_list

    smiles_list ::= smiles
                  | smiles_list smiles

    smiles ::= chain opt_1

    atom ::= bracket_atom
           | aliphatic_organic
           | aromatic_organic
           | STAR

    aliphatic_organic ::= UB
           | UC
           | UN
           | UO
           | US
           | UP
           | UF
           | UC LL
           | UB LR
           | UI

    aromatic_organic ::= LB
           | LC
           | LN
           | LO
           | LS
           | LP

    bracket_atom ::= LBRACKET opt_2 symbol opt_3 opt_4 opt_5 opt_6 RBRACKET

    isotope ::= list_7

    symbol ::= element_symbols
           | aromatic_symbol
           | STAR

    element_symbols ::= UH
           | UH LE
           | UL LI
           | UB LE
           | UB
           | UC
           | UN
           | UO
           | UF
           | UN LE
           | UN LA
           | UM LG
           | UA LL
           | US LI
           | UP
           | US
           | UC LL
           | UA LR
           | UK
           | UC LA
           | US LC
           | UT LI
           | UV
           | UC LR
           | UM LN
           | UF LE
           | UC LO
           | UN LI
           | UC LU
           | UZ LN
           | UG LA
           | UG LE
           | UA LS
           | US LE
           | UB LR
           | UK LR
           | UR LB
           | US LR
           | UY
           | UZ LR
           | UN LB
           | UM LO
           | UT LC
           | UR LU
           | UR LH
           | UP LD
           | UA LG
           | UC LD
           | UI LN
           | US LN
           | US LB
           | UT LE
           | UI
           | UX LE
           | UC LS
           | UB LA
           | UH LF
           | UT LA
           | UW
           | UR LE
           | UO LS
           | UI LR
           | UP LT
           | UA LU
           | UH LG
           | UT LL
           | UP LB
           | UB LI
           | UP LO
           | UA LT
           | UR LN
           | UF LR
           | UR LA
           | UR LF
           | UD LB
           | US LG
           | UB LH
           | UH LS
           | UM LT
           | UD LS
           | UR LG
           | UC LN
           | UF LL
           | UL LV
           | UL LA
           | UC LE
           | UP LR
           | UN LD
           | UP LM
           | US LM
           | UE LU
           | UG LD
           | UT LB
           | UD LY
           | UH LO
           | UE LR
           | UT LM
           | UY LB
           | UL LU
           | UA LC
           | UT LH
           | UP LA
           | UU
           | UN LP
           | UP LU
           | UA LM
           | UC LM
           | UB LK
           | UC LF
           | UE LS
           | UF LM
           | UM LD
           | UN LO
           | UL LR

    aromatic_symbol ::= LC
           | LN
           | LO
           | LP
           | LS
           | LS LE
           | LA LS

    chiral ::= AT
           | OP_44488
           | _TH1
           | _TH2
           | _AL1
           | _AL2
           | _SP1
           | _SP2
           | _SP3
           | _TB1
           | _TB2
           | _TB3
           | _TB4
           | _TB5
           | _TB6
           | _TB7
           | _TB8
           | _TB9
           | _TB10
           | _TB11
           | _TB12
           | _TB13
           | _TB14
           | _TB15
           | _TB16
           | _TB17
           | _TB18
           | _TB19
           | _TB20
           | _TB21
           | _TB22
           | _TB23
           | _TB24
           | _TB25
           | _TB26
           | _TB27
           | _TB28
           | _TB29
           | _TB30
           | _OH1
           | _OH2
           | _OH3
           | _OH4
           | _OH5
           | _OH6
           | _OH7
           | _OH8
           | _OH9
           | _OH10
           | _OH11
           | _OH12
           | _OH13
           | _OH14
           | _OH15
           | _OH16
           | _OH17
           | _OH18
           | _OH19
           | _OH20
           | _OH21
           | _OH22
           | _OH23
           | _OH24
           | _OH25
           | _OH26
           | _OH27
           | _OH28
           | _OH29
           | _OH30
           | grp_8 DIGIT DIGIT

    hcount ::= UH opt_9

    charge ::= grp_10 opt_11 opt_12
           | MINUSMINUS
           | PLUSPLUS

    class_ ::= COLON list_13

    bond ::= MINUS
           | EQ
           | HASH
           | DOLLAR
           | COLON
           | SLASH
           | BACKSLASH

    ringbond ::= opt_14 grp_15

    branched_atom ::= atom list_16 list_17

    branch ::= LPAREN opt_19 chain RPAREN

    chain ::= branched_atom list_23

    terminator ::= SPACE TAB
           | LINEFEED
           | CARRIAGE_RETURN

    opt_1 ::= terminator
           | $empty

    opt_2 ::= isotope
           | $empty

    opt_3 ::= chiral
           | $empty

    opt_4 ::= hcount
           | $empty

    opt_5 ::= charge
           | $empty

    opt_6 ::= class_
           | $empty

    list_7 ::= DIGIT
           | list_7 DIGIT

    grp_8 ::= _TB
           | _OH

    opt_9 ::= DIGIT
           | $empty

    grp_10 ::= PLUS
           | MINUS

    opt_11 ::= DIGIT
           | $empty

    opt_12 ::= DIGIT
           | $empty

    list_13 ::= DIGIT
           | list_13 DIGIT

    opt_14 ::= bond
           | $empty

    grp_15 ::= DIGIT
           | PERCENT DIGIT DIGIT

    list_16 ::= $empty
           | list_16 ringbond

    list_17 ::= $empty
           | list_17 branch

    grp_18 ::= bond
           | DOT

    opt_19 ::= grp_18
           | $empty

    grp_21 ::= bond
           | DOT

    opt_22 ::= grp_21
           | $empty

    grp_20 ::= opt_22 branched_atom

    list_23 ::= $empty
           | list_23 grp_20

%End
