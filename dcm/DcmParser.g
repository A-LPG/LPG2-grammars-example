-- DCM Parser (LPG) — subset for synthesized examples
%Options la=2
%Options fp=DcmParser
%options package=lpg.grammars.dcm
%options template=dtParserTemplateF.gi
%options import_terminals=DcmLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    konservierung
%End
%Rules
    konservierung ::= opt_nls HEADER nls opt_kopf rumpf

    opt_nls ::= $empty | nls
    nls ::= NL | nls NL

    opt_kopf ::= $empty | kopf
    kopf ::= modulkopf_info
           | funktionsdef
           | modulkopf_info funktionsdef

    modulkopf_info ::= mod_zeile | modulkopf_info mod_zeile
    mod_zeile ::= MODULKOPF IDENTIFIER TEXT nls
                | MODULKOPF TEXT nls

    funktionsdef ::= FUNKTIONEN NL fkt_lines END nls
    fkt_lines ::= fkt_line | fkt_lines fkt_line
    fkt_line ::= FKT IDENTIFIER TEXT TEXT nls

    rumpf ::= $empty | kenngroessen
    kenngroessen ::= kenngroesse | kenngroessen kenngroesse

    kenngroesse ::= festwert
    festwert ::= FESTWERT IDENTIFIER NL kgr_info opt_einheit WERT realzahl NL END nls
               | FESTWERT IDENTIFIER NL kgr_info opt_einheit TEXTKW TEXT NL END nls

    kgr_info ::= $empty
               | LANGNAME TEXT NL
               | DISPLAYNAME name_or_text NL
               | LANGNAME TEXT NL DISPLAYNAME name_or_text NL

    name_or_text ::= IDENTIFIER | TEXT
    opt_einheit ::= $empty | EINHEIT_W TEXT NL
    realzahl ::= INT | FLOAT
%End
