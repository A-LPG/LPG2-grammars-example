-- Keyword filter for Kuka (aligned to parser terminal names)
%options package=lpg.grammars.kuka
%options template=KeywordTemplateF.gi
%options fp=KukaKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    AND
    ANIN
    ANOUT
    BOOL
    BRAKE
    CASE
    CHAR
    CIRC
    CONST
    CONTINUE
    DECL
    DEF
    DEFAULT
    DEFDAT
    DEFFCT
    DELAY
    DO
    DOTDOT
    ELSE
    END
    ENDDAT
    ENDFCT
    ENDFOR
    ENDIF
    ENDLOOP
    ENDSWITCH
    ENDWHILE
    ENUM
    EXIT
    EXOR
    EXT
    EXTFCT
    FALSE
    FOR
    GLOBAL
    GOTO
    HALT
    HASH
    IF
    IMPORT
    INT
    INTERRUPT
    IS
    LIN
    LOOP
    LTGT
    NOT
    OR
    PRIO
    PTP
    PUBLIC
    REAL
    REPEAT
    RETURN
    SEC
    SIGNAL
    STRUC
    SWITCH
    THEN
    TO
    TRIGGER
    TRUE
    UNTIL
    WAIT
    WHEN
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
    Keyword ::= e n d s w i t c h /.$setResult($_ENDSWITCH);./
    Keyword ::= i n t e r r u p t /.$setResult($_INTERRUPT);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= e n d w h i l e /.$setResult($_ENDWHILE);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= e n d l o o p /.$setResult($_ENDLOOP);./
    Keyword ::= t r i g g e r /.$setResult($_TRIGGER);./
    Keyword ::= d e f d a t /.$setResult($_DEFDAT);./
    Keyword ::= d e f f c t /.$setResult($_DEFFCT);./
    Keyword ::= d o t d o t /.$setResult($_DOTDOT);./
    Keyword ::= e n d d a t /.$setResult($_ENDDAT);./
    Keyword ::= e n d f c t /.$setResult($_ENDFCT);./
    Keyword ::= e n d f o r /.$setResult($_ENDFOR);./
    Keyword ::= e x t f c t /.$setResult($_EXTFCT);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= r e p e a t /.$setResult($_REPEAT);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s i g n a l /.$setResult($_SIGNAL);./
    Keyword ::= s w i t c h /.$setResult($_SWITCH);./
    Keyword ::= a n o u t /.$setResult($_ANOUT);./
    Keyword ::= b r a k e /.$setResult($_BRAKE);./
    Keyword ::= c o n s t /.$setResult($_CONST);./
    Keyword ::= d e l a y /.$setResult($_DELAY);./
    Keyword ::= e n d i f /.$setResult($_ENDIF);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= s t r u c /.$setResult($_STRUC);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= a n i n /.$setResult($_ANIN);./
    Keyword ::= b o o l /.$setResult($_BOOL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= c i r c /.$setResult($_CIRC);./
    Keyword ::= d e c l /.$setResult($_DECL);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= e x o r /.$setResult($_EXOR);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= h a l t /.$setResult($_HALT);./
    Keyword ::= h a s h /.$setResult($_HASH);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= l t g t /.$setResult($_LTGT);./
    Keyword ::= p r i o /.$setResult($_PRIO);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= w a i t /.$setResult($_WAIT);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= d e f /.$setResult($_DEF);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e x t /.$setResult($_EXT);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= l i n /.$setResult($_LIN);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= p t p /.$setResult($_PTP);./
    Keyword ::= s e c /.$setResult($_SEC);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
