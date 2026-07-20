-- BEEP Parser (LPG)
%Options la=2
%Options fp=BeepParser
%options package=lpg.grammars.rfc3080
%options template=dtParserTemplateF.gi
%options import_terminals=BeepLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    frame
%End
%Rules
    frame ::= data
    data ::= header payload_trailer
    header ::= msg | rpy | err | ans | nul
    msg ::= MSG SP common
    rpy ::= RPY SP common
    ans ::= ANS SP common SP ansno
    err ::= ERR SP common
    nul ::= NUL SP common
    common ::= channel SP msgno SP more SP seqno SP size
    channel ::= NUMBER
    msgno ::= NUMBER
    more ::= DOT | STAR
    seqno ::= NUMBER
    size ::= NUMBER
    ansno ::= NUMBER
    payload_trailer ::= PAYLOAD_TRAILER
%End
