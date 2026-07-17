-- SGF property keywords
%options package=lpg.grammars.sgf
%options template=KeywordTemplateF.gi
%options fp=SgfKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    COLOR_W
    COLOR_B
    P_AB
    P_AE
    P_AN
    P_AP
    P_AR
    P_AS
    P_AW
    P_BL
    P_BM
    P_BR
    P_BT
    P_CA
    P_CP
    P_CR
    P_DD
    P_DM
    P_DO
    P_DT
    P_EV
    P_FF
    P_FG
    P_GB
    P_GC
    P_GM
    P_GN
    P_GW
    P_HA
    P_HO
    P_IP
    P_IT
    P_IY
    P_KM
    P_KO
    P_LB
    P_LN
    P_MA
    P_MN
    P_OB
    P_ON
    P_OT
    P_OW
    P_PB
    P_PC
    P_PL
    P_PM
    P_PW
    P_RE
    P_RO
    P_RU
    P_SE
    P_SL
    P_SO
    P_SQ
    P_ST
    P_SU
    P_SZ
    P_TB
    P_TE
    P_TM
    P_TR
    P_TW
    P_UC
    P_US
    P_VW
    P_WL
    P_WR
    P_WT
    P_C
    P_N
    P_V
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= w /.$setResult($_COLOR_W);./
              | b /.$setResult($_COLOR_B);./
              | a b /.$setResult($_P_AB);./
              | a e /.$setResult($_P_AE);./
              | a n /.$setResult($_P_AN);./
              | a p /.$setResult($_P_AP);./
              | a r /.$setResult($_P_AR);./
              | a s /.$setResult($_P_AS);./
              | a w /.$setResult($_P_AW);./
              | b l /.$setResult($_P_BL);./
              | b m /.$setResult($_P_BM);./
              | b r /.$setResult($_P_BR);./
              | b t /.$setResult($_P_BT);./
              | c a /.$setResult($_P_CA);./
              | c p /.$setResult($_P_CP);./
              | c r /.$setResult($_P_CR);./
              | d d /.$setResult($_P_DD);./
              | d m /.$setResult($_P_DM);./
              | d o /.$setResult($_P_DO);./
              | d t /.$setResult($_P_DT);./
              | e v /.$setResult($_P_EV);./
              | f f /.$setResult($_P_FF);./
              | f g /.$setResult($_P_FG);./
              | g b /.$setResult($_P_GB);./
              | g c /.$setResult($_P_GC);./
              | g m /.$setResult($_P_GM);./
              | g n /.$setResult($_P_GN);./
              | g w /.$setResult($_P_GW);./
              | h a /.$setResult($_P_HA);./
              | h o /.$setResult($_P_HO);./
              | i p /.$setResult($_P_IP);./
              | i t /.$setResult($_P_IT);./
              | i y /.$setResult($_P_IY);./
              | k m /.$setResult($_P_KM);./
              | k o /.$setResult($_P_KO);./
              | l b /.$setResult($_P_LB);./
              | l n /.$setResult($_P_LN);./
              | m a /.$setResult($_P_MA);./
              | m n /.$setResult($_P_MN);./
              | o b /.$setResult($_P_OB);./
              | o n /.$setResult($_P_ON);./
              | o t /.$setResult($_P_OT);./
              | o w /.$setResult($_P_OW);./
              | p b /.$setResult($_P_PB);./
              | p c /.$setResult($_P_PC);./
              | p l /.$setResult($_P_PL);./
              | p m /.$setResult($_P_PM);./
              | p w /.$setResult($_P_PW);./
              | r e /.$setResult($_P_RE);./
              | r o /.$setResult($_P_RO);./
              | r u /.$setResult($_P_RU);./
              | s e /.$setResult($_P_SE);./
              | s l /.$setResult($_P_SL);./
              | s o /.$setResult($_P_SO);./
              | s q /.$setResult($_P_SQ);./
              | s t /.$setResult($_P_ST);./
              | s u /.$setResult($_P_SU);./
              | s z /.$setResult($_P_SZ);./
              | t b /.$setResult($_P_TB);./
              | t e /.$setResult($_P_TE);./
              | t m /.$setResult($_P_TM);./
              | t r /.$setResult($_P_TR);./
              | t w /.$setResult($_P_TW);./
              | u c /.$setResult($_P_UC);./
              | u s /.$setResult($_P_US);./
              | v w /.$setResult($_P_VW);./
              | w l /.$setResult($_P_WL);./
              | w r /.$setResult($_P_WR);./
              | w t /.$setResult($_P_WT);./
              | c /.$setResult($_P_C);./
              | n /.$setResult($_P_N);./
              | v /.$setResult($_P_V);./
%End
