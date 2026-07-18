-- Tnsnames keyword filter (folded case for DESCRIPTION etc.)
%options package=lpg.grammars.tnsnames
%options template=KeywordTemplateF.gi
%options fp=TnsnamesKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    DESCRIPTION
    ADDRESS
    PROTOCOL
    HOST
    PORT
    TCP
    CONNECT_DATA
    SERVICE_NAME
    SID
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
    0 1 2 3 4 5 6 7 8 9
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= d e s c r i p t i o n /.$setResult($_DESCRIPTION);./
              | c o n n e c t '_' d a t a /.$setResult($_CONNECT_DATA);./
              | s e r v i c e '_' n a m e /.$setResult($_SERVICE_NAME);./
              | p r o t o c o l /.$setResult($_PROTOCOL);./
              | a d d r e s s /.$setResult($_ADDRESS);./
              | h o s t /.$setResult($_HOST);./
              | p o r t /.$setResult($_PORT);./
              | t c p /.$setResult($_TCP);./
              | s i d /.$setResult($_SID);./
%End
