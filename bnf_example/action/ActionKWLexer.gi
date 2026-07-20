-- Keyword filter for Action (aligned to parser terminal names)
%options package=lpg.grammars.action
%options template=KeywordTemplateF.gi
%options fp=ActionKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ADDOP
    ARRAY
    AT
    BYTE
    CARD
    CARET
    CHAR
    DEFINE
    DO
    ELSE
    ELSEIF
    EXIT
    FI
    FOR
    FUNC
    IF
    INT
    MODULE
    MUL
    MULTOP
    NUMCONST
    OD
    POINTER
    PROC
    RELOP
    RETURN
    SPECIALOP
    STEP
    STRCONST
    THEN
    TO
    TYPE
    UNTIL
    WHILE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= s p e c i a l o p /.$setResult($_SPECIALOP);./
    Keyword ::= n u m c o n s t /.$setResult($_NUMCONST);./
    Keyword ::= s t r c o n s t /.$setResult($_STRCONST);./
    Keyword ::= p o i n t e r /.$setResult($_POINTER);./
    Keyword ::= d e f i n e /.$setResult($_DEFINE);./
    Keyword ::= e l s e i f /.$setResult($_ELSEIF);./
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
    Keyword ::= m u l t o p /.$setResult($_MULTOP);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= a d d o p /.$setResult($_ADDOP);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= c a r e t /.$setResult($_CARET);./
    Keyword ::= r e l o p /.$setResult($_RELOP);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= c a r d /.$setResult($_CARD);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= f u n c /.$setResult($_FUNC);./
    Keyword ::= p r o c /.$setResult($_PROC);./
    Keyword ::= s t e p /.$setResult($_STEP);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= m u l /.$setResult($_MUL);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= f i /.$setResult($_FI);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= o d /.$setResult($_OD);./
    Keyword ::= t o /.$setResult($_TO);./
%End
