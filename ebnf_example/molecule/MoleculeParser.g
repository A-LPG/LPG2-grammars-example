-- Molecule Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example).
%Options la=2,ebnf
%Options fp=MoleculeParser
%options package=lpg.grammars.molecule
%options template=dtParserTemplateF.gi
%options import_terminals=MoleculeLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    molecule
%End
%Rules
    molecule ::= part_list

    part_list ::= part_ (MIDDLE_DOT part_)*

    part_ ::= structure_list
             | NUMBER structure_list

    structure_list ::= structure+

    structure ::= symbol
                 | symbol NUMBER

    symbol ::= element
              | group
              | ion

    group ::= LPAREN structure_list RPAREN

    ion ::= LBRACKET structure_list RBRACKET

    element ::= E_NH
               | E_FL
               | E_MC
               | E_LV
               | E_TS
               | E_OG
               | E_HE
               | E_LI
               | E_BE
               | E_NE
               | E_NA
               | E_MG
               | E_AL
               | E_SI
               | E_CL
               | E_AR
               | E_CA
               | E_SC
               | E_TI
               | E_CR
               | E_MN
               | E_FE
               | E_CO
               | E_NI
               | E_CU
               | E_ZN
               | E_GA
               | E_GE
               | E_AS
               | E_SE
               | E_BR
               | E_KR
               | E_RB
               | E_SR
               | E_ZR
               | E_NB
               | E_MO
               | E_TC
               | E_RU
               | E_RH
               | E_PD
               | E_AG
               | E_CD
               | E_IN
               | E_SN
               | E_SB
               | E_TE
               | E_XE
               | E_CS
               | E_BA
               | E_LA
               | E_CE
               | E_PR
               | E_ND
               | E_PM
               | E_SM
               | E_EU
               | E_GD
               | E_TB
               | E_DY
               | E_HO
               | E_ER
               | E_TM
               | E_YB
               | E_LU
               | E_HF
               | E_TA
               | E_RE
               | E_OS
               | E_IR
               | E_PT
               | E_AU
               | E_HG
               | E_TL
               | E_PB
               | E_BI
               | E_PO
               | E_AT
               | E_RN
               | E_FR
               | E_RA
               | E_AC
               | E_TH
               | E_PA
               | E_NP
               | E_PU
               | E_AM
               | E_CM
               | E_BK
               | E_CF
               | E_ES
               | E_FM
               | E_MD
               | E_NO
               | E_LR
               | E_RF
               | E_DB
               | E_SG
               | E_BH
               | E_HS
               | E_MT
               | E_DS
               | E_RG
               | E_CN
               | E_H
               | E_B
               | E_C
               | E_N
               | E_O
               | E_F
               | E_P
               | E_S
               | E_K
               | E_V
               | E_Y
               | E_I
               | E_W
               | E_U
%End
