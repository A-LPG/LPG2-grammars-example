-- Keyword filter for FortranFortran90 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.fortran.fortran90
%options template=KeywordTemplateF.gi
%options fp=FortranFortran90KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ACCESS
    ACTION
    ADVANCE
    AIF
    ALLOCATE
    BACKSPACE
    BLANK
    CALL
    CCON
    CLOSE
    CODEROOT
    COMPLEX
    CONCATOP
    CTRLDIRECT
    CTRLREC
    CYCLE
    DEALLOCATE
    DELIM
    DOBLOCK
    DOUBLE
    ELSE
    ELSEBLOCK
    ENDBLOCK
    ENDBLOCKDATA
    ENDDO
    ENDFILE
    ENDIF
    ENDSELECT
    ERR
    EXIST
    EXIT
    FILE
    FMT
    FORM
    FORMAT
    FORMATTED
    HOLLERITH
    INQUIRE
    IOLENGTH
    IOSTART
    IOSTAT
    KIND
    LABEL
    LEN
    LET
    NAMED
    NAMELIST
    NAME_
    NEXTREC
    NML
    NULLIFY
    NUMBER
    OPEN
    OPENED
    PAD
    PAUSE
    POSITION
    PRECISION
    PRINT
    READ
    READWRITE
    RECL
    RESULT
    REWIND
    SELECT
    SELECTCASE
    SEQUENTIAL
    SIZE
    SPOFF
    SPON
    STAT
    STATUS
    SUBPROGRAMBLOCK
    THEN
    THENBLOCK
    TO
    UNFORMATTED
    UNIT
    WHILE
    WRITE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= s u b p r o g r a m b l o c k /.$setResult($_SUBPROGRAMBLOCK);./
    Keyword ::= e n d b l o c k d a t a /.$setResult($_ENDBLOCKDATA);./
    Keyword ::= u n f o r m a t t e d /.$setResult($_UNFORMATTED);./
    Keyword ::= c t r l d i r e c t /.$setResult($_CTRLDIRECT);./
    Keyword ::= d e a l l o c a t e /.$setResult($_DEALLOCATE);./
    Keyword ::= s e l e c t c a s e /.$setResult($_SELECTCASE);./
    Keyword ::= s e q u e n t i a l /.$setResult($_SEQUENTIAL);./
    Keyword ::= b a c k s p a c e /.$setResult($_BACKSPACE);./
    Keyword ::= e l s e b l o c k /.$setResult($_ELSEBLOCK);./
    Keyword ::= e n d s e l e c t /.$setResult($_ENDSELECT);./
    Keyword ::= f o r m a t t e d /.$setResult($_FORMATTED);./
    Keyword ::= h o l l e r i t h /.$setResult($_HOLLERITH);./
    Keyword ::= p r e c i s i o n /.$setResult($_PRECISION);./
    Keyword ::= r e a d w r i t e /.$setResult($_READWRITE);./
    Keyword ::= t h e n b l o c k /.$setResult($_THENBLOCK);./
    Keyword ::= a l l o c a t e /.$setResult($_ALLOCATE);./
    Keyword ::= c o d e r o o t /.$setResult($_CODEROOT);./
    Keyword ::= c o n c a t o p /.$setResult($_CONCATOP);./
    Keyword ::= e n d b l o c k /.$setResult($_ENDBLOCK);./
    Keyword ::= i o l e n g t h /.$setResult($_IOLENGTH);./
    Keyword ::= n a m e l i s t /.$setResult($_NAMELIST);./
    Keyword ::= p o s i t i o n /.$setResult($_POSITION);./
    Keyword ::= a d v a n c e /.$setResult($_ADVANCE);./
    Keyword ::= c o m p l e x /.$setResult($_COMPLEX);./
    Keyword ::= c t r l r e c /.$setResult($_CTRLREC);./
    Keyword ::= d o b l o c k /.$setResult($_DOBLOCK);./
    Keyword ::= e n d f i l e /.$setResult($_ENDFILE);./
    Keyword ::= i n q u i r e /.$setResult($_INQUIRE);./
    Keyword ::= i o s t a r t /.$setResult($_IOSTART);./
    Keyword ::= n e x t r e c /.$setResult($_NEXTREC);./
    Keyword ::= n u l l i f y /.$setResult($_NULLIFY);./
    Keyword ::= a c c e s s /.$setResult($_ACCESS);./
    Keyword ::= a c t i o n /.$setResult($_ACTION);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= f o r m a t /.$setResult($_FORMAT);./
    Keyword ::= i o s t a t /.$setResult($_IOSTAT);./
    Keyword ::= n u m b e r /.$setResult($_NUMBER);./
    Keyword ::= o p e n e d /.$setResult($_OPENED);./
    Keyword ::= r e s u l t /.$setResult($_RESULT);./
    Keyword ::= r e w i n d /.$setResult($_REWIND);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s t a t u s /.$setResult($_STATUS);./
    Keyword ::= b l a n k /.$setResult($_BLANK);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= c y c l e /.$setResult($_CYCLE);./
    Keyword ::= d e l i m /.$setResult($_DELIM);./
    Keyword ::= e n d d o /.$setResult($_ENDDO);./
    Keyword ::= e n d i f /.$setResult($_ENDIF);./
    Keyword ::= e x i s t /.$setResult($_EXIST);./
    Keyword ::= l a b e l /.$setResult($_LABEL);./
    Keyword ::= n a m e d /.$setResult($_NAMED);./
    Keyword ::= p a u s e /.$setResult($_PAUSE);./
    Keyword ::= p r i n t /.$setResult($_PRINT);./
    Keyword ::= s p o f f /.$setResult($_SPOFF);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c c o n /.$setResult($_CCON);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= f i l e /.$setResult($_FILE);./
    Keyword ::= f o r m /.$setResult($_FORM);./
    Keyword ::= k i n d /.$setResult($_KIND);./
    Keyword ::= n a m e /.$setResult($_NAME_);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= r e c l /.$setResult($_RECL);./
    Keyword ::= s i z e /.$setResult($_SIZE);./
    Keyword ::= s p o n /.$setResult($_SPON);./
    Keyword ::= s t a t /.$setResult($_STAT);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= u n i t /.$setResult($_UNIT);./
    Keyword ::= a i f /.$setResult($_AIF);./
    Keyword ::= e r r /.$setResult($_ERR);./
    Keyword ::= f m t /.$setResult($_FMT);./
    Keyword ::= l e n /.$setResult($_LEN);./
    Keyword ::= l e t /.$setResult($_LET);./
    Keyword ::= n m l /.$setResult($_NML);./
    Keyword ::= p a d /.$setResult($_PAD);./
    Keyword ::= t o /.$setResult($_TO);./
%End
