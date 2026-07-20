-- Keyword filter for VerilogSystemverilog (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.verilog.systemverilog
%options template=KeywordTemplateF.gi
%options fp=VerilogSystemverilogKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ALIAS
    ALWAYS
    AND
    ASSERT
    ASSIGN
    ASSUME
    AUTOMATIC
    BEFORE
    BEGIN
    BIND
    BINS
    BINSOF
    BIT
    BREAK
    BUF
    BYTE
    CASE
    CASEX
    CASEZ
    CELL
    CELLDEFINE_DIRECTIVE
    CHANDLE
    CHECKER
    CLASS
    CLOCKING
    CMOS
    CONFIG
    CONST
    CONSTRAINT
    CONTEXT
    CONTINUE
    COVER
    COVERGROUP
    COVERPOINT
    CROSS
    DEASSIGN
    DEFAULT
    DEFINE_DIRECTIVE
    DEFPARAM
    DESIGN
    DISABLE
    DIST
    DO
    EDGE
    ELSE
    ELSIF_DIRECTIVE
    END
    ENDCASE
    ENDCELLDEFINE_DIRECTIVE
    ENDCHECKER
    ENDCLASS
    ENDCLOCKING
    ENDCONFIG
    ENDFUNCTION
    ENDGENERATE
    ENDGROUP
    ENDIF_DIRECTIVE
    ENDINTERFACE
    ENDMODULE
    ENDPACKAGE
    ENDPRIMITIVE
    ENDPROGRAM
    ENDPROPERTY
    ENDSEQUENCE
    ENDSPECIFY
    ENDTABLE
    ENDTASK
    ENUM
    EVENT
    EVENTUALLY
    EXPECT
    EXPORT
    EXTENDS
    EXTERN
    FINAL
    FOR
    FORCE
    FOREACH
    FOREVER
    FORK
    FORKJOIN
    FUNCTION
    GENERATE
    GENVAR
    GLOBAL
    IF
    IFDEF_DIRECTIVE
    IFF
    IFNDEF_DIRECTIVE
    IFNONE
    IMPLEMENTS
    IMPLIES
    IMPORT
    INCLUDE
    INITIAL
    INOUT
    INPUT
    INSIDE
    INSTANCE
    INT
    INTEGER
    INTERCONNECT
    INTERFACE
    INTERSECT
    JOIN
    LARGE
    LET
    LIBLIST
    LIBRARY
    LINE_DIRECTIVE
    LOCAL
    LOCALPARAM
    LOGIC
    LONGINT
    MACROMODULE
    MATCHES
    MEDIUM
    MODPORT
    MODULE
    NAND
    NEGEDGE
    NETTYPE
    NEW
    NEXTTIME
    NMOS
    NOR
    NOSHOWCANCELLED
    NOT
    NULL
    OPTION
    OR
    OUTPUT
    PACKAGE
    PACKED
    PARAMETER
    PMOS
    POSEDGE
    PRAGMA_DIRECTIVE
    PRIMITIVE
    PRIORITY
    PROGRAM
    PROPERTY
    PROTECTED
    PULLDOWN
    PULLUP
    PURE
    RAND
    RANDC
    RANDCASE
    RANDOMIZE
    RANDSEQUENCE
    RCMOS
    REAL
    REALTIME
    REF
    REG
    RELEASE
    REPEAT
    RESETALL_DIRECTIVE
    RESTRICT
    RETURN
    RNMOS
    RPMOS
    RTRAN
    SAMPLE
    SCALARED
    SEQUENCE
    SHORTINT
    SHORTREAL
    SHOWCANCELLED
    SIGNED
    SMALL
    SOFT
    SOLVE
    SPECIFY
    SPECPARAM
    STATIC
    STD
    STRING
    STRONG
    STRUCT
    SUPER
    TABLE
    TAGGED
    TASK
    THIS
    THROUGHOUT
    TIME
    TIMEPRECISION
    TIMESCALE_DIRECTIVE
    TIMEUNIT
    TRAN
    TRI
    TRIAND
    TRIOR
    TRIREG
    TYPE
    TYPEDEF
    UNDEFINEALL_DIRECTIVE
    UNDEF_DIRECTIVE
    UNION
    UNIQUE
    UNSIGNED
    UNTIL
    UNTYPED
    USE
    UWIRE
    VAR
    VECTORED
    VIRTUAL
    VOID
    WAIT
    WAND
    WEAK
    WHILE
    WILDCARD
    WIRE
    WITH
    WITHIN
    WOR
    XNOR
    XOR
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= n o s h o w c a n c e l l e d /.$setResult($_NOSHOWCANCELLED);./
    Keyword ::= e n d c e l l d e f i n e /.$setResult($_ENDCELLDEFINE_DIRECTIVE);./
    Keyword ::= s h o w c a n c e l l e d /.$setResult($_SHOWCANCELLED);./
    Keyword ::= t i m e p r e c i s i o n /.$setResult($_TIMEPRECISION);./
    Keyword ::= e n d i n t e r f a c e /.$setResult($_ENDINTERFACE);./
    Keyword ::= e n d p r i m i t i v e /.$setResult($_ENDPRIMITIVE);./
    Keyword ::= i n t e r c o n n e c t /.$setResult($_INTERCONNECT);./
    Keyword ::= r a n d s e q u e n c e /.$setResult($_RANDSEQUENCE);./
    Keyword ::= e n d c l o c k i n g /.$setResult($_ENDCLOCKING);./
    Keyword ::= e n d f u n c t i o n /.$setResult($_ENDFUNCTION);./
    Keyword ::= e n d g e n e r a t e /.$setResult($_ENDGENERATE);./
    Keyword ::= e n d p r o p e r t y /.$setResult($_ENDPROPERTY);./
    Keyword ::= e n d s e q u e n c e /.$setResult($_ENDSEQUENCE);./
    Keyword ::= m a c r o m o d u l e /.$setResult($_MACROMODULE);./
    Keyword ::= u n d e f i n e a l l /.$setResult($_UNDEFINEALL_DIRECTIVE);./
    Keyword ::= c e l l d e f i n e /.$setResult($_CELLDEFINE_DIRECTIVE);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT);./
    Keyword ::= c o v e r g r o u p /.$setResult($_COVERGROUP);./
    Keyword ::= c o v e r p o i n t /.$setResult($_COVERPOINT);./
    Keyword ::= e n d c h e c k e r /.$setResult($_ENDCHECKER);./
    Keyword ::= e n d p a c k a g e /.$setResult($_ENDPACKAGE);./
    Keyword ::= e n d p r o g r a m /.$setResult($_ENDPROGRAM);./
    Keyword ::= e n d s p e c i f y /.$setResult($_ENDSPECIFY);./
    Keyword ::= e v e n t u a l l y /.$setResult($_EVENTUALLY);./
    Keyword ::= i m p l e m e n t s /.$setResult($_IMPLEMENTS);./
    Keyword ::= l o c a l p a r a m /.$setResult($_LOCALPARAM);./
    Keyword ::= t h r o u g h o u t /.$setResult($_THROUGHOUT);./
    Keyword ::= a u t o m a t i c /.$setResult($_AUTOMATIC);./
    Keyword ::= e n d c o n f i g /.$setResult($_ENDCONFIG);./
    Keyword ::= e n d m o d u l e /.$setResult($_ENDMODULE);./
    Keyword ::= i n t e r f a c e /.$setResult($_INTERFACE);./
    Keyword ::= i n t e r s e c t /.$setResult($_INTERSECT);./
    Keyword ::= p a r a m e t e r /.$setResult($_PARAMETER);./
    Keyword ::= p r i m i t i v e /.$setResult($_PRIMITIVE);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= r a n d o m i z e /.$setResult($_RANDOMIZE);./
    Keyword ::= s h o r t r e a l /.$setResult($_SHORTREAL);./
    Keyword ::= s p e c p a r a m /.$setResult($_SPECPARAM);./
    Keyword ::= t i m e s c a l e /.$setResult($_TIMESCALE_DIRECTIVE);./
    Keyword ::= c l o c k i n g /.$setResult($_CLOCKING);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= d e a s s i g n /.$setResult($_DEASSIGN);./
    Keyword ::= d e f p a r a m /.$setResult($_DEFPARAM);./
    Keyword ::= e n d c l a s s /.$setResult($_ENDCLASS);./
    Keyword ::= e n d g r o u p /.$setResult($_ENDGROUP);./
    Keyword ::= e n d t a b l e /.$setResult($_ENDTABLE);./
    Keyword ::= f o r k j o i n /.$setResult($_FORKJOIN);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= g e n e r a t e /.$setResult($_GENERATE);./
    Keyword ::= i n s t a n c e /.$setResult($_INSTANCE);./
    Keyword ::= n e x t t i m e /.$setResult($_NEXTTIME);./
    Keyword ::= p r i o r i t y /.$setResult($_PRIORITY);./
    Keyword ::= p r o p e r t y /.$setResult($_PROPERTY);./
    Keyword ::= p u l l d o w n /.$setResult($_PULLDOWN);./
    Keyword ::= r a n d c a s e /.$setResult($_RANDCASE);./
    Keyword ::= r e a l t i m e /.$setResult($_REALTIME);./
    Keyword ::= r e s e t a l l /.$setResult($_RESETALL_DIRECTIVE);./
    Keyword ::= r e s t r i c t /.$setResult($_RESTRICT);./
    Keyword ::= s c a l a r e d /.$setResult($_SCALARED);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE);./
    Keyword ::= s h o r t i n t /.$setResult($_SHORTINT);./
    Keyword ::= t i m e u n i t /.$setResult($_TIMEUNIT);./
    Keyword ::= u n s i g n e d /.$setResult($_UNSIGNED);./
    Keyword ::= v e c t o r e d /.$setResult($_VECTORED);./
    Keyword ::= w i l d c a r d /.$setResult($_WILDCARD);./
    Keyword ::= c h a n d l e /.$setResult($_CHANDLE);./
    Keyword ::= c h e c k e r /.$setResult($_CHECKER);./
    Keyword ::= c o n t e x t /.$setResult($_CONTEXT);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d i s a b l e /.$setResult($_DISABLE);./
    Keyword ::= e n d c a s e /.$setResult($_ENDCASE);./
    Keyword ::= e n d t a s k /.$setResult($_ENDTASK);./
    Keyword ::= e x t e n d s /.$setResult($_EXTENDS);./
    Keyword ::= f o r e a c h /.$setResult($_FOREACH);./
    Keyword ::= f o r e v e r /.$setResult($_FOREVER);./
    Keyword ::= i m p l i e s /.$setResult($_IMPLIES);./
    Keyword ::= i n c l u d e /.$setResult($_INCLUDE);./
    Keyword ::= i n i t i a l /.$setResult($_INITIAL);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= l i b l i s t /.$setResult($_LIBLIST);./
    Keyword ::= l i b r a r y /.$setResult($_LIBRARY);./
    Keyword ::= l o n g i n t /.$setResult($_LONGINT);./
    Keyword ::= m a t c h e s /.$setResult($_MATCHES);./
    Keyword ::= m o d p o r t /.$setResult($_MODPORT);./
    Keyword ::= n e g e d g e /.$setResult($_NEGEDGE);./
    Keyword ::= n e t t y p e /.$setResult($_NETTYPE);./
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
    Keyword ::= p o s e d g e /.$setResult($_POSEDGE);./
    Keyword ::= p r o g r a m /.$setResult($_PROGRAM);./
    Keyword ::= r e l e a s e /.$setResult($_RELEASE);./
    Keyword ::= s p e c i f y /.$setResult($_SPECIFY);./
    Keyword ::= t y p e d e f /.$setResult($_TYPEDEF);./
    Keyword ::= u n t y p e d /.$setResult($_UNTYPED);./
    Keyword ::= v i r t u a l /.$setResult($_VIRTUAL);./
    Keyword ::= a l w a y s /.$setResult($_ALWAYS);./
    Keyword ::= a s s e r t /.$setResult($_ASSERT);./
    Keyword ::= a s s i g n /.$setResult($_ASSIGN);./
    Keyword ::= a s s u m e /.$setResult($_ASSUME);./
    Keyword ::= b e f o r e /.$setResult($_BEFORE);./
    Keyword ::= b i n s o f /.$setResult($_BINSOF);./
    Keyword ::= c o n f i g /.$setResult($_CONFIG);./
    Keyword ::= d e f i n e /.$setResult($_DEFINE_DIRECTIVE);./
    Keyword ::= d e s i g n /.$setResult($_DESIGN);./
    Keyword ::= e x p e c t /.$setResult($_EXPECT);./
    Keyword ::= e x p o r t /.$setResult($_EXPORT);./
    Keyword ::= e x t e r n /.$setResult($_EXTERN);./
    Keyword ::= g e n v a r /.$setResult($_GENVAR);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= i f n d e f /.$setResult($_IFNDEF_DIRECTIVE);./
    Keyword ::= i f n o n e /.$setResult($_IFNONE);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= i n s i d e /.$setResult($_INSIDE);./
    Keyword ::= m e d i u m /.$setResult($_MEDIUM);./
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
    Keyword ::= o p t i o n /.$setResult($_OPTION);./
    Keyword ::= o u t p u t /.$setResult($_OUTPUT);./
    Keyword ::= p a c k e d /.$setResult($_PACKED);./
    Keyword ::= p r a g m a /.$setResult($_PRAGMA_DIRECTIVE);./
    Keyword ::= p u l l u p /.$setResult($_PULLUP);./
    Keyword ::= r e p e a t /.$setResult($_REPEAT);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s a m p l e /.$setResult($_SAMPLE);./
    Keyword ::= s i g n e d /.$setResult($_SIGNED);./
    Keyword ::= s t a t i c /.$setResult($_STATIC);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= s t r o n g /.$setResult($_STRONG);./
    Keyword ::= s t r u c t /.$setResult($_STRUCT);./
    Keyword ::= t a g g e d /.$setResult($_TAGGED);./
    Keyword ::= t r i a n d /.$setResult($_TRIAND);./
    Keyword ::= t r i r e g /.$setResult($_TRIREG);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE);./
    Keyword ::= w i t h i n /.$setResult($_WITHIN);./
    Keyword ::= a l i a s /.$setResult($_ALIAS);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c a s e x /.$setResult($_CASEX);./
    Keyword ::= c a s e z /.$setResult($_CASEZ);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= c o n s t /.$setResult($_CONST);./
    Keyword ::= c o v e r /.$setResult($_COVER);./
    Keyword ::= c r o s s /.$setResult($_CROSS);./
    Keyword ::= e l s i f /.$setResult($_ELSIF_DIRECTIVE);./
    Keyword ::= e n d i f /.$setResult($_ENDIF_DIRECTIVE);./
    Keyword ::= e v e n t /.$setResult($_EVENT);./
    Keyword ::= f i n a l /.$setResult($_FINAL);./
    Keyword ::= f o r c e /.$setResult($_FORCE);./
    Keyword ::= i f d e f /.$setResult($_IFDEF_DIRECTIVE);./
    Keyword ::= i n o u t /.$setResult($_INOUT);./
    Keyword ::= i n p u t /.$setResult($_INPUT);./
    Keyword ::= l a r g e /.$setResult($_LARGE);./
    Keyword ::= l o c a l /.$setResult($_LOCAL);./
    Keyword ::= l o g i c /.$setResult($_LOGIC);./
    Keyword ::= r a n d c /.$setResult($_RANDC);./
    Keyword ::= r c m o s /.$setResult($_RCMOS);./
    Keyword ::= r n m o s /.$setResult($_RNMOS);./
    Keyword ::= r p m o s /.$setResult($_RPMOS);./
    Keyword ::= r t r a n /.$setResult($_RTRAN);./
    Keyword ::= s m a l l /.$setResult($_SMALL);./
    Keyword ::= s o l v e /.$setResult($_SOLVE);./
    Keyword ::= s u p e r /.$setResult($_SUPER);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= t r i o r /.$setResult($_TRIOR);./
    Keyword ::= u n d e f /.$setResult($_UNDEF_DIRECTIVE);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= u w i r e /.$setResult($_UWIRE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= b i n d /.$setResult($_BIND);./
    Keyword ::= b i n s /.$setResult($_BINS);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c e l l /.$setResult($_CELL);./
    Keyword ::= c m o s /.$setResult($_CMOS);./
    Keyword ::= d i s t /.$setResult($_DIST);./
    Keyword ::= e d g e /.$setResult($_EDGE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= f o r k /.$setResult($_FORK);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= l i n e /.$setResult($_LINE_DIRECTIVE);./
    Keyword ::= n a n d /.$setResult($_NAND);./
    Keyword ::= n m o s /.$setResult($_NMOS);./
    Keyword ::= n u l l /.$setResult($_NULL);./
    Keyword ::= p m o s /.$setResult($_PMOS);./
    Keyword ::= p u r e /.$setResult($_PURE);./
    Keyword ::= r a n d /.$setResult($_RAND);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= s o f t /.$setResult($_SOFT);./
    Keyword ::= t a s k /.$setResult($_TASK);./
    Keyword ::= t h i s /.$setResult($_THIS);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t r a n /.$setResult($_TRAN);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= v o i d /.$setResult($_VOID);./
    Keyword ::= w a i t /.$setResult($_WAIT);./
    Keyword ::= w a n d /.$setResult($_WAND);./
    Keyword ::= w e a k /.$setResult($_WEAK);./
    Keyword ::= w i r e /.$setResult($_WIRE);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= x n o r /.$setResult($_XNOR);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= b i t /.$setResult($_BIT);./
    Keyword ::= b u f /.$setResult($_BUF);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i f f /.$setResult($_IFF);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= l e t /.$setResult($_LET);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= n o r /.$setResult($_NOR);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= r e f /.$setResult($_REF);./
    Keyword ::= r e g /.$setResult($_REG);./
    Keyword ::= s t d /.$setResult($_STD);./
    Keyword ::= t r i /.$setResult($_TRI);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= v a r /.$setResult($_VAR);./
    Keyword ::= w o r /.$setResult($_WOR);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= o r /.$setResult($_OR);./
%End
