-- SGF Parser (LPG)
%Options la=2
%Options fp=SgfParser
%options package=lpg.grammars.sgf
%options template=dtParserTemplateF.gi
%options import_terminals=SgfLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    collection
%End
%Rules
    collection ::= gameTrees
    gameTrees ::= gameTree | gameTrees gameTree
    gameTree ::= LPAREN sequence gameTrees_opt RPAREN
    gameTrees_opt ::= $empty | gameTrees
    sequence ::= nodes
    nodes ::= node | nodes node
    node ::= SEMI props_opt
    props_opt ::= $empty | props
    props ::= property_ | props property_
    property_ ::= propident propvalues
    propident ::= COLOR_W | COLOR_B | UCLETTER | P_AB | P_AE | P_AN | P_AP | P_AR | P_AS | P_AW | P_BL | P_BM | P_BR | P_BT | P_CA | P_CP | P_CR | P_DD | P_DM | P_DO | P_DT | P_EV | P_FF | P_FG | P_GB | P_GC | P_GM | P_GN | P_GW | P_HA | P_HO | P_IP | P_IT | P_IY | P_KM | P_KO | P_LB | P_LN | P_MA | P_MN | P_OB | P_ON | P_OT | P_OW | P_PB | P_PC | P_PL | P_PM | P_PW | P_RE | P_RO | P_RU | P_SE | P_SL | P_SO | P_SQ | P_ST | P_SU | P_SZ | P_TB | P_TE | P_TM | P_TR | P_TW | P_UC | P_US | P_VW | P_WL | P_WR | P_WT | P_C | P_N | P_V
    propvalues ::= NONE
                 | texts
    texts ::= TEXT | texts TEXT
%End
