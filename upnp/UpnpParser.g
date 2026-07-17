-- UPnP Parser (LPG)
%Options la=2
%Options fp=UpnpParser
%options package=lpg.grammars.upnp
%options template=dtParserTemplateF.gi
%options import_terminals=UpnpLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    searchCrit
%End
%Rules
    searchCrit ::= searchExp
                 | ASTERISK

    searchExp ::= relExp
                | searchExp wchars LOGOP wchars searchExp
                | LPAREN wchars_opt searchExp wchars_opt RPAREN

    LOGOP ::= AND | OR

    relExp ::= PROPERTY wchars BINOP wchars QUOTEDSTRING
             | PROPERTY wchars EXISTS wchars BOOLVAL

    BINOP ::= EQ | NE | LT | LE | GT | GE | CONTAINS | DOESNOTCONTAIN | DERIVEDFROM
    BOOLVAL ::= TRUE | FALSE
    PROPERTY ::= PROP_UPNP_LONGDESCRIPTION | PROP_UPNP_EPISODENUMBER | PROP_UPNP_SERIESTITLE | PROP_UPNP_CHANNELNAME | PROP_RES_RESOLUTION | PROP_DC_DESCRIPTION | PROP_UPNP_CHANNELNR | PROP_PV_CAPTUREDATE | PROP_AT_PROTOCOLINFO | PROP_PV_AVKEYWORDS | PROP_UPNP_DIRECTOR | PROP_RES_DURATION | PROP_UPNP_ARTIST | PROP_UPNP_AUTHOR | PROP_UPNP_RATING | PROP_DC_CREATOR | PROP_UPNP_ACTOR | PROP_UPNP_GENRE | PROP_UPNP_ALBUM | PROP_UPNP_CLASS | PROP_PV_RATING | PROP_PV_CUSTOM | PROP_DC_TITLE | PROP_DC_DATE | PROP_AT_REFID | PROP_AT_ID

    wchars ::= WCHAR | wchars WCHAR
    wchars_opt ::= $empty | wchars
%End
