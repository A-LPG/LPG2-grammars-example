-- Keyword filter for FortranFortran77 (aligned to parser terminal names)
%options package=lpg.grammars.fortran.fortran77
%options template=KeywordTemplateF.gi
%options fp=FortranFortran77KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ACCESS
    ASSIGN
    BACKSPACE
    BLANK
    BLOCK
    CALL
    CHARACTER
    CLOSE
    COMMON
    COMPLEX
    CONTINUE
    DATA
    DIMENSION
    DIV
    DO
    DOLLAR
    DOUBLE
    ELSE
    ELSEIF
    END
    ENDDO
    ENDFILE
    ENDIF
    ENTRY
    EOL
    EQUIVALENCE
    EQV
    ERR
    EXIST
    EXTERNAL
    FALSE
    FCON
    FILE
    FMT
    FORM
    FORMAT
    FORMATTED
    FUNCTION
    GE
    GO
    GOTO
    HOLLERITH
    ICON
    IF
    IMPLICIT
    INQUIRE
    INTEGER
    INTRINSIC
    IOSTART
    LABEL
    LAND
    LE
    LET
    LNOT
    LOGICAL
    LOR
    NAME
    NAMED
    NE
    NEQV
    NEXTREC
    NONE
    OPEN
    OPENED
    PARAMETER
    PAUSE
    PCON
    POINTER
    POSITION
    POWER
    PRECISION
    PRINT
    PROGRAM
    RCON
    READ
    REAL
    RECL
    RETURN
    REWIND
    SAVE
    SCON
    SEQUENTIAL
    STATUS
    STOP
    SUBROUTINE
    THEN
    TO
    TRUE
    UNFORMATTED
    UNIT
    WRITE
    XCON
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= e q u i v a l e n c e /.$setResult($_EQUIVALENCE);./
    Keyword ::= u n f o r m a t t e d /.$setResult($_UNFORMATTED);./
    Keyword ::= s e q u e n t i a l /.$setResult($_SEQUENTIAL);./
    Keyword ::= s u b r o u t i n e /.$setResult($_SUBROUTINE);./
    Keyword ::= b a c k s p a c e /.$setResult($_BACKSPACE);./
    Keyword ::= c h a r a c t e r /.$setResult($_CHARACTER);./
    Keyword ::= d i m e n s i o n /.$setResult($_DIMENSION);./
    Keyword ::= f o r m a t t e d /.$setResult($_FORMATTED);./
    Keyword ::= h o l l e r i t h /.$setResult($_HOLLERITH);./
    Keyword ::= i n t r i n s i c /.$setResult($_INTRINSIC);./
    Keyword ::= p a r a m e t e r /.$setResult($_PARAMETER);./
    Keyword ::= p r e c i s i o n /.$setResult($_PRECISION);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= i m p l i c i t /.$setResult($_IMPLICIT);./
    Keyword ::= p o s i t i o n /.$setResult($_POSITION);./
    Keyword ::= c o m p l e x /.$setResult($_COMPLEX);./
    Keyword ::= e n d f i l e /.$setResult($_ENDFILE);./
    Keyword ::= i n q u i r e /.$setResult($_INQUIRE);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= i o s t a r t /.$setResult($_IOSTART);./
    Keyword ::= l o g i c a l /.$setResult($_LOGICAL);./
    Keyword ::= n e x t r e c /.$setResult($_NEXTREC);./
    Keyword ::= p o i n t e r /.$setResult($_POINTER);./
    Keyword ::= p r o g r a m /.$setResult($_PROGRAM);./
    Keyword ::= a c c e s s /.$setResult($_ACCESS);./
    Keyword ::= a s s i g n /.$setResult($_ASSIGN);./
    Keyword ::= c o m m o n /.$setResult($_COMMON);./
    Keyword ::= d o l l a r /.$setResult($_DOLLAR);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e l s e i f /.$setResult($_ELSEIF);./
    Keyword ::= f o r m a t /.$setResult($_FORMAT);./
    Keyword ::= o p e n e d /.$setResult($_OPENED);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= r e w i n d /.$setResult($_REWIND);./
    Keyword ::= s t a t u s /.$setResult($_STATUS);./
    Keyword ::= b l a n k /.$setResult($_BLANK);./
    Keyword ::= b l o c k /.$setResult($_BLOCK);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= e n d d o /.$setResult($_ENDDO);./
    Keyword ::= e n d i f /.$setResult($_ENDIF);./
    Keyword ::= e n t r y /.$setResult($_ENTRY);./
    Keyword ::= e x i s t /.$setResult($_EXIST);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= l a b e l /.$setResult($_LABEL);./
    Keyword ::= n a m e d /.$setResult($_NAMED);./
    Keyword ::= p a u s e /.$setResult($_PAUSE);./
    Keyword ::= p o w e r /.$setResult($_POWER);./
    Keyword ::= p r i n t /.$setResult($_PRINT);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= f c o n /.$setResult($_FCON);./
    Keyword ::= f i l e /.$setResult($_FILE);./
    Keyword ::= f o r m /.$setResult($_FORM);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= i c o n /.$setResult($_ICON);./
    Keyword ::= l a n d /.$setResult($_LAND);./
    Keyword ::= l n o t /.$setResult($_LNOT);./
    Keyword ::= n a m e /.$setResult($_NAME);./
    Keyword ::= n e q v /.$setResult($_NEQV);./
    Keyword ::= n o n e /.$setResult($_NONE);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= p c o n /.$setResult($_PCON);./
    Keyword ::= r c o n /.$setResult($_RCON);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= r e c l /.$setResult($_RECL);./
    Keyword ::= s a v e /.$setResult($_SAVE);./
    Keyword ::= s c o n /.$setResult($_SCON);./
    Keyword ::= s t o p /.$setResult($_STOP);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= u n i t /.$setResult($_UNIT);./
    Keyword ::= x c o n /.$setResult($_XCON);./
    Keyword ::= d i v /.$setResult($_DIV);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e o l /.$setResult($_EOL);./
    Keyword ::= e q v /.$setResult($_EQV);./
    Keyword ::= e r r /.$setResult($_ERR);./
    Keyword ::= f m t /.$setResult($_FMT);./
    Keyword ::= l e t /.$setResult($_LET);./
    Keyword ::= l o r /.$setResult($_LOR);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= g e /.$setResult($_GE);./
    Keyword ::= g o /.$setResult($_GO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= l e /.$setResult($_LE);./
    Keyword ::= n e /.$setResult($_NE);./
    Keyword ::= t o /.$setResult($_TO);./
%End
