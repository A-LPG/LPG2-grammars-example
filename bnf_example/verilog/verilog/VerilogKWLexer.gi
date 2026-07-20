-- Keyword filter for Verilog (aligned to parser terminal names)
%options package=lpg.grammars.verilog.verilog
%options template=KeywordTemplateF.gi
%options fp=VerilogKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ALWAYS
    AND
    ANDAND
    ASSIGN
    AT
    AUTOMATIC
    BANG
    BEGIN
    BUF
    CARET
    CASE
    CASEX
    CASEZ
    CELL
    CMOS
    CO
    CONFIG
    DEASSIGN
    DEFAULT
    DEFPARAM
    DESIGN
    DISABLE
    DOLLAR
    DQ
    EDGE
    ELSE
    END
    ENDCASE
    ENDCONFIG
    ENDFUNCTION
    ENDGENERATE
    ENDMODULE
    ENDPRIMITIVE
    ENDSPECIFY
    ENDTABLE
    ENDTASK
    EVENT
    FATARROW
    FILENAME
    FOR
    FORCE
    FOREVER
    FORK
    FUNCTION
    GA
    GENERATE
    GENVAR
    HASH
    IF
    IFNONE
    INCLUDE
    INITIAL
    INOUT
    INPUT
    INSTANCE
    INTEGER
    JOIN
    LARGE
    LIBLIST
    LIBRARY
    LOCALPARAM
    LP
    LSHIFT
    MACROMODULE
    MEDIUM
    MODULE
    NAND
    NEGEDGE
    NMOS
    NOR
    NOSHOWCANCELLED
    NOT
    OR
    OROR
    OUTPUT
    PARAMETER
    PATHPULSE_
    PERCENT
    PIPE
    PMOS
    POSEDGE
    PRIMITIVE
    PULLDOWN
    PULLUP
    RCMOS
    REAL
    REALTIME
    REG
    RELEASE
    REPEAT
    RNMOS
    RP
    RPMOS
    RSHIFT
    RTRAN
    SCALARED
    SHOWCANCELLED
    SIGNED
    SL
    SMALL
    SPECIFY
    SPECPARAM
    STARSTAR
    STRING
    TABLE
    TASK
    TILDE
    TIME
    TRAN
    TRI
    TRIAND
    TRIOR
    TRIREG
    URSHIFT
    USE
    UWIRE
    VECTORED
    WAIT
    WAND
    WHILE
    WIRE
    WOR
    XNOR
    XOR
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= n o s h o w c a n c e l l e d /.$setResult($_NOSHOWCANCELLED);./
    Keyword ::= s h o w c a n c e l l e d /.$setResult($_SHOWCANCELLED);./
    Keyword ::= e n d p r i m i t i v e /.$setResult($_ENDPRIMITIVE);./
    Keyword ::= e n d f u n c t i o n /.$setResult($_ENDFUNCTION);./
    Keyword ::= e n d g e n e r a t e /.$setResult($_ENDGENERATE);./
    Keyword ::= m a c r o m o d u l e /.$setResult($_MACROMODULE);./
    Keyword ::= e n d s p e c i f y /.$setResult($_ENDSPECIFY);./
    Keyword ::= l o c a l p a r a m /.$setResult($_LOCALPARAM);./
    Keyword ::= a u t o m a t i c /.$setResult($_AUTOMATIC);./
    Keyword ::= e n d c o n f i g /.$setResult($_ENDCONFIG);./
    Keyword ::= e n d m o d u l e /.$setResult($_ENDMODULE);./
    Keyword ::= p a r a m e t e r /.$setResult($_PARAMETER);./
    Keyword ::= p a t h p u l s e /.$setResult($_PATHPULSE_);./
    Keyword ::= p r i m i t i v e /.$setResult($_PRIMITIVE);./
    Keyword ::= s p e c p a r a m /.$setResult($_SPECPARAM);./
    Keyword ::= d e a s s i g n /.$setResult($_DEASSIGN);./
    Keyword ::= d e f p a r a m /.$setResult($_DEFPARAM);./
    Keyword ::= e n d t a b l e /.$setResult($_ENDTABLE);./
    Keyword ::= f a t a r r o w /.$setResult($_FATARROW);./
    Keyword ::= f i l e n a m e /.$setResult($_FILENAME);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= g e n e r a t e /.$setResult($_GENERATE);./
    Keyword ::= i n s t a n c e /.$setResult($_INSTANCE);./
    Keyword ::= p u l l d o w n /.$setResult($_PULLDOWN);./
    Keyword ::= r e a l t i m e /.$setResult($_REALTIME);./
    Keyword ::= s c a l a r e d /.$setResult($_SCALARED);./
    Keyword ::= s t a r s t a r /.$setResult($_STARSTAR);./
    Keyword ::= v e c t o r e d /.$setResult($_VECTORED);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d i s a b l e /.$setResult($_DISABLE);./
    Keyword ::= e n d c a s e /.$setResult($_ENDCASE);./
    Keyword ::= e n d t a s k /.$setResult($_ENDTASK);./
    Keyword ::= f o r e v e r /.$setResult($_FOREVER);./
    Keyword ::= i n c l u d e /.$setResult($_INCLUDE);./
    Keyword ::= i n i t i a l /.$setResult($_INITIAL);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= l i b l i s t /.$setResult($_LIBLIST);./
    Keyword ::= l i b r a r y /.$setResult($_LIBRARY);./
    Keyword ::= n e g e d g e /.$setResult($_NEGEDGE);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= p o s e d g e /.$setResult($_POSEDGE);./
    Keyword ::= r e l e a s e /.$setResult($_RELEASE);./
    Keyword ::= s p e c i f y /.$setResult($_SPECIFY);./
    Keyword ::= u r s h i f t /.$setResult($_URSHIFT);./
    Keyword ::= a l w a y s /.$setResult($_ALWAYS);./
    Keyword ::= a n d a n d /.$setResult($_ANDAND);./
    Keyword ::= a s s i g n /.$setResult($_ASSIGN);./
    Keyword ::= c o n f i g /.$setResult($_CONFIG);./
    Keyword ::= d e s i g n /.$setResult($_DESIGN);./
    Keyword ::= d o l l a r /.$setResult($_DOLLAR);./
    Keyword ::= g e n v a r /.$setResult($_GENVAR);./
    Keyword ::= i f n o n e /.$setResult($_IFNONE);./
    Keyword ::= l s h i f t /.$setResult($_LSHIFT);./
    Keyword ::= m e d i u m /.$setResult($_MEDIUM);./
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
    Keyword ::= o u t p u t /.$setResult($_OUTPUT);./
    Keyword ::= p u l l u p /.$setResult($_PULLUP);./
    Keyword ::= r e p e a t /.$setResult($_REPEAT);./
    Keyword ::= r s h i f t /.$setResult($_RSHIFT);./
    Keyword ::= s i g n e d /.$setResult($_SIGNED);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= t r i a n d /.$setResult($_TRIAND);./
    Keyword ::= t r i r e g /.$setResult($_TRIREG);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= c a r e t /.$setResult($_CARET);./
    Keyword ::= c a s e x /.$setResult($_CASEX);./
    Keyword ::= c a s e z /.$setResult($_CASEZ);./
    Keyword ::= e v e n t /.$setResult($_EVENT);./
    Keyword ::= f o r c e /.$setResult($_FORCE);./
    Keyword ::= i n o u t /.$setResult($_INOUT);./
    Keyword ::= i n p u t /.$setResult($_INPUT);./
    Keyword ::= l a r g e /.$setResult($_LARGE);./
    Keyword ::= r c m o s /.$setResult($_RCMOS);./
    Keyword ::= r n m o s /.$setResult($_RNMOS);./
    Keyword ::= r p m o s /.$setResult($_RPMOS);./
    Keyword ::= r t r a n /.$setResult($_RTRAN);./
    Keyword ::= s m a l l /.$setResult($_SMALL);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= t i l d e /.$setResult($_TILDE);./
    Keyword ::= t r i o r /.$setResult($_TRIOR);./
    Keyword ::= u w i r e /.$setResult($_UWIRE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= b a n g /.$setResult($_BANG);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c e l l /.$setResult($_CELL);./
    Keyword ::= c m o s /.$setResult($_CMOS);./
    Keyword ::= e d g e /.$setResult($_EDGE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= f o r k /.$setResult($_FORK);./
    Keyword ::= h a s h /.$setResult($_HASH);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= n a n d /.$setResult($_NAND);./
    Keyword ::= n m o s /.$setResult($_NMOS);./
    Keyword ::= o r o r /.$setResult($_OROR);./
    Keyword ::= p i p e /.$setResult($_PIPE);./
    Keyword ::= p m o s /.$setResult($_PMOS);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= t a s k /.$setResult($_TASK);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t r a n /.$setResult($_TRAN);./
    Keyword ::= w a i t /.$setResult($_WAIT);./
    Keyword ::= w a n d /.$setResult($_WAND);./
    Keyword ::= w i r e /.$setResult($_WIRE);./
    Keyword ::= x n o r /.$setResult($_XNOR);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= b u f /.$setResult($_BUF);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= n o r /.$setResult($_NOR);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= r e g /.$setResult($_REG);./
    Keyword ::= t r i /.$setResult($_TRI);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= w o r /.$setResult($_WOR);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= c o /.$setResult($_CO);./
    Keyword ::= d q /.$setResult($_DQ);./
    Keyword ::= g a /.$setResult($_GA);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= l p /.$setResult($_LP);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= r p /.$setResult($_RP);./
    Keyword ::= s l /.$setResult($_SL);./
%End
