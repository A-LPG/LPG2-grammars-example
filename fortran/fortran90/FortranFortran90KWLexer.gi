-- Keyword filter for FortranFortran90 (auto-synced from FortranFortran90Lexer exports)
%options package=lpg.grammars.fortran.fortran90
%options template=KeywordTemplateF.gi
%options fp=FortranFortran90KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ACCESS
    ACCESSSPEC
    ACTION
    ADVANCE
    AIF
    ALLOCATABLE
    ALLOCATE
    ASSIGNMENT
    ASSIGNSTMT
    BACKSPACE
    BLANK
    BLOCK
    BLOCKDATA
    CALL
    CASE
    CHARACTER
    CLOSE
    CODEROOT
    COMMON
    COMPLEX
    CONCATOP
    CONTAINS
    CONTINUE
    CTRLDIRECT
    CTRLREC
    CYCLE
    DATA
    DEALLOCATE
    DEFAULT
    DELIM
    DIMENSION
    DIRECT
    DO
    DOBLOCK
    DOP
    DOUBLE
    DOUBLECOLON
    DOUBLEPRECISION
    ELSE
    ELSEBLOCK
    ELSEIF
    ELSEWHERE
    END
    ENDBLOCK
    ENDBLOCKDATA
    ENDDO
    ENDFILE
    ENDIF
    ENDINTERFACE
    ENDMODULE
    ENDSELECT
    ENDTYPE
    ENDWHERE
    ENTRY
    EOR
    EQUIVALENCE
    EXIST
    EXIT
    EXTERNAL
    FILE
    FORM
    FORMAT
    FORMATTED
    FUNCTION
    GO
    GOTO
    IF
    IMPLICIT
    IMPLIEDT
    IN
    INCLUDE
    INOUT
    INQUIRE
    INTEGER
    INTENT
    INTERFACE
    INTRINSIC
    IOLENGTH
    IOSTART
    IOSTAT
    KIND
    LEN
    LOGICAL
    MODULE
    NAMED
    NAMELIST
    NEXTREC
    NONE
    NULLIFY
    ONLY
    OPEN
    OPENED
    OPERATOR
    OPTIONAL
    OUT
    PAD
    PARAMETER
    PAUSE
    POINTER
    POSITION
    PRECISION
    PRINT
    PRIVATE
    PROCEDURE
    PROGRAM
    READ
    READWRITE
    REAL
    REC
    RECL
    RECURSIVE
    RESULT
    RETURN
    REWIND
    SAVE
    SELECT
    SELECTCASE
    SEQUENCE
    SEQUENTIAL
    SIZE
    STAT
    STATUS
    STOP
    SUBPROGRAMBLOCK
    SUBROUTINE
    TARGET
    THEN
    THENBLOCK
    TO
    TYPE
    UNDERSCORE
    UNFORMATTED
    UNIT
    USE
    WHERE
    WHILE
    WRITE
    ZCON
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= a c c e s s /.$setResult($_ACCESS);./
    Keyword ::= a c c e s s s p e c /.$setResult($_ACCESSSPEC);./
    Keyword ::= a c t i o n /.$setResult($_ACTION);./
    Keyword ::= a d v a n c e /.$setResult($_ADVANCE);./
    Keyword ::= a i f /.$setResult($_AIF);./
    Keyword ::= a l l o c a t a b l e /.$setResult($_ALLOCATABLE);./
    Keyword ::= a l l o c a t e /.$setResult($_ALLOCATE);./
    Keyword ::= a s s i g n m e n t /.$setResult($_ASSIGNMENT);./
    Keyword ::= a s s i g n /.$setResult($_ASSIGNSTMT);./
    Keyword ::= b a c k s p a c e /.$setResult($_BACKSPACE);./
    Keyword ::= b l a n k /.$setResult($_BLANK);./
    Keyword ::= b l o c k /.$setResult($_BLOCK);./
    Keyword ::= b l o c k d a t a /.$setResult($_BLOCKDATA);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c h a r a c t e r /.$setResult($_CHARACTER);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= c o d e r o o t /.$setResult($_CODEROOT);./
    Keyword ::= c o m m o n /.$setResult($_COMMON);./
    Keyword ::= c o m p l e x /.$setResult($_COMPLEX);./
    Keyword ::= c o n c a t o p /.$setResult($_CONCATOP);./
    Keyword ::= c o n t a i n s /.$setResult($_CONTAINS);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= c t r l d i r e c t /.$setResult($_CTRLDIRECT);./
    Keyword ::= c t r l r e c /.$setResult($_CTRLREC);./
    Keyword ::= c y c l e /.$setResult($_CYCLE);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= d e a l l o c a t e /.$setResult($_DEALLOCATE);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d e l i m /.$setResult($_DELIM);./
    Keyword ::= d i m e n s i o n /.$setResult($_DIMENSION);./
    Keyword ::= d i r e c t /.$setResult($_DIRECT);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= d o b l o c k /.$setResult($_DOBLOCK);./
    Keyword ::= d o p /.$setResult($_DOP);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= d o u b l e c o l o n /.$setResult($_DOUBLECOLON);./
    Keyword ::= d o u b l e p r e c i s i o n /.$setResult($_DOUBLEPRECISION);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e l s e b l o c k /.$setResult($_ELSEBLOCK);./
    Keyword ::= e l s e i f /.$setResult($_ELSEIF);./
    Keyword ::= e l s e w h e r e /.$setResult($_ELSEWHERE);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e n d b l o c k /.$setResult($_ENDBLOCK);./
    Keyword ::= e n d b l o c k d a t a /.$setResult($_ENDBLOCKDATA);./
    Keyword ::= e n d d o /.$setResult($_ENDDO);./
    Keyword ::= e n d f i l e /.$setResult($_ENDFILE);./
    Keyword ::= e n d i f /.$setResult($_ENDIF);./
    Keyword ::= e n d i n t e r f a c e /.$setResult($_ENDINTERFACE);./
    Keyword ::= e n d m o d u l e /.$setResult($_ENDMODULE);./
    Keyword ::= e n d s e l e c t /.$setResult($_ENDSELECT);./
    Keyword ::= e n d t y p e /.$setResult($_ENDTYPE);./
    Keyword ::= e n d w h e r e /.$setResult($_ENDWHERE);./
    Keyword ::= e n t r y /.$setResult($_ENTRY);./
    Keyword ::= e o r /.$setResult($_EOR);./
    Keyword ::= e q u i v a l e n c e /.$setResult($_EQUIVALENCE);./
    Keyword ::= e x i s t /.$setResult($_EXIST);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= f i l e /.$setResult($_FILE);./
    Keyword ::= f o r m /.$setResult($_FORM);./
    Keyword ::= f o r m a t /.$setResult($_FORMAT);./
    Keyword ::= f o r m a t t e d /.$setResult($_FORMATTED);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= g o /.$setResult($_GO);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i m p l i c i t /.$setResult($_IMPLICIT);./
    Keyword ::= i m p l i e d t /.$setResult($_IMPLIEDT);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i n c l u d e /.$setResult($_INCLUDE);./
    Keyword ::= i n o u t /.$setResult($_INOUT);./
    Keyword ::= i n q u i r e /.$setResult($_INQUIRE);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= i n t e n t /.$setResult($_INTENT);./
    Keyword ::= i n t e r f a c e /.$setResult($_INTERFACE);./
    Keyword ::= i n t r i n s i c /.$setResult($_INTRINSIC);./
    Keyword ::= i o l e n g t h /.$setResult($_IOLENGTH);./
    Keyword ::= i o s t a r t /.$setResult($_IOSTART);./
    Keyword ::= i o s t a t /.$setResult($_IOSTAT);./
    Keyword ::= k i n d /.$setResult($_KIND);./
    Keyword ::= l e n /.$setResult($_LEN);./
    Keyword ::= l o g i c a l /.$setResult($_LOGICAL);./
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
    Keyword ::= n a m e d /.$setResult($_NAMED);./
    Keyword ::= n a m e l i s t /.$setResult($_NAMELIST);./
    Keyword ::= n e x t r e c /.$setResult($_NEXTREC);./
    Keyword ::= n o n e /.$setResult($_NONE);./
    Keyword ::= n u l l i f y /.$setResult($_NULLIFY);./
    Keyword ::= o n l y /.$setResult($_ONLY);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= o p e n e d /.$setResult($_OPENED);./
    Keyword ::= o p e r a t o r /.$setResult($_OPERATOR);./
    Keyword ::= o p t i o n a l /.$setResult($_OPTIONAL);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= p a d /.$setResult($_PAD);./
    Keyword ::= p a r a m e t e r /.$setResult($_PARAMETER);./
    Keyword ::= p a u s e /.$setResult($_PAUSE);./
    Keyword ::= p o i n t e r /.$setResult($_POINTER);./
    Keyword ::= p o s i t i o n /.$setResult($_POSITION);./
    Keyword ::= p r e c i s i o n /.$setResult($_PRECISION);./
    Keyword ::= p r i n t /.$setResult($_PRINT);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= p r o g r a m /.$setResult($_PROGRAM);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= r e a d w r i t e /.$setResult($_READWRITE);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= r e c /.$setResult($_REC);./
    Keyword ::= r e c l /.$setResult($_RECL);./
    Keyword ::= r e c u r s i v e /.$setResult($_RECURSIVE);./
    Keyword ::= r e s u l t /.$setResult($_RESULT);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= r e w i n d /.$setResult($_REWIND);./
    Keyword ::= s a v e /.$setResult($_SAVE);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s e l e c t c a s e /.$setResult($_SELECTCASE);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE);./
    Keyword ::= s e q u e n t i a l /.$setResult($_SEQUENTIAL);./
    Keyword ::= s i z e /.$setResult($_SIZE);./
    Keyword ::= s t a t /.$setResult($_STAT);./
    Keyword ::= s t a t u s /.$setResult($_STATUS);./
    Keyword ::= s t o p /.$setResult($_STOP);./
    Keyword ::= s u b p r o g r a m b l o c k /.$setResult($_SUBPROGRAMBLOCK);./
    Keyword ::= s u b r o u t i n e /.$setResult($_SUBROUTINE);./
    Keyword ::= t a r g e t /.$setResult($_TARGET);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t h e n b l o c k /.$setResult($_THENBLOCK);./
    Keyword ::= t o /.$setResult($_TO);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= u n d e r s c o r e /.$setResult($_UNDERSCORE);./
    Keyword ::= u n f o r m a t t e d /.$setResult($_UNFORMATTED);./
    Keyword ::= u n i t /.$setResult($_UNIT);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= z c o n /.$setResult($_ZCON);./
%End
