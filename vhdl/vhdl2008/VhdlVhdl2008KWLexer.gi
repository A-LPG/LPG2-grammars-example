-- Keyword filter for VhdlVhdl2008 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.vhdl.vhdl2008
%options template=KeywordTemplateF.gi
%options fp=VhdlVhdl2008KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ABS
    ACCESS
    ACROSS
    AFTER
    ALIAS
    ALL
    AND
    ARCHITECTURE
    ARRAY
    ASSERT
    ATTRIBUTE
    BEGIN
    BLOCK
    BODY
    BREAK
    BUFFER
    BUS
    CASE
    COMPONENT
    CONFIGURATION
    CONSTANT
    CONTEXT
    DEFAULT
    DISCONNECT
    DOWNTO
    ELSE
    ELSIF
    END
    ENTITY
    EXIT
    FILE
    FOR
    FORCE
    FUNCTION
    GENERATE
    GENERIC
    GROUP
    GUARDED
    IF
    IMPURE
    IN
    INERTIAL
    INOUT
    IS
    LABEL
    LIBRARY
    LIMIT
    LINKAGE
    LITERAL
    LOOP
    MAP
    MOD
    NAND
    NATURE
    NEW
    NEXT
    NOISE
    NOR
    NOT
    NULL_
    OF
    ON
    OPEN
    OR
    OTHERS
    OUT
    PACKAGE
    PARAMETER
    PORT
    POSTPONED
    PROCEDURAL
    PROCEDURE
    PROCESS
    PROTECTED
    PURE
    QUANTITY
    RANGE
    RECORD
    REFERENCE
    REGISTER
    REJECT
    RELEASE
    REM
    REPORT
    RETURN
    ROL
    ROR
    SELECT
    SEVERITY
    SHARED
    SIGNAL
    SLA
    SLL
    SPECTRUM
    SRA
    SRL
    SUBNATURE
    SUBTYPE
    TERMINAL
    THEN
    THROUGH
    TO
    TOLERANCE
    TRANSPORT
    TYPE
    UNAFFECTED
    UNITS
    UNTIL
    USE
    VARIABLE
    WAIT
    WHEN
    WHILE
    WITH
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
    Keyword ::= c o n f i g u r a t i o n /.$setResult($_CONFIGURATION);./
    Keyword ::= a r c h i t e c t u r e /.$setResult($_ARCHITECTURE);./
    Keyword ::= d i s c o n n e c t /.$setResult($_DISCONNECT);./
    Keyword ::= p r o c e d u r a l /.$setResult($_PROCEDURAL);./
    Keyword ::= u n a f f e c t e d /.$setResult($_UNAFFECTED);./
    Keyword ::= a t t r i b u t e /.$setResult($_ATTRIBUTE);./
    Keyword ::= c o m p o n e n t /.$setResult($_COMPONENT);./
    Keyword ::= p a r a m e t e r /.$setResult($_PARAMETER);./
    Keyword ::= p o s t p o n e d /.$setResult($_POSTPONED);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= r e f e r e n c e /.$setResult($_REFERENCE);./
    Keyword ::= s u b n a t u r e /.$setResult($_SUBNATURE);./
    Keyword ::= t o l e r a n c e /.$setResult($_TOLERANCE);./
    Keyword ::= t r a n s p o r t /.$setResult($_TRANSPORT);./
    Keyword ::= c o n s t a n t /.$setResult($_CONSTANT);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= g e n e r a t e /.$setResult($_GENERATE);./
    Keyword ::= i n e r t i a l /.$setResult($_INERTIAL);./
    Keyword ::= q u a n t i t y /.$setResult($_QUANTITY);./
    Keyword ::= r e g i s t e r /.$setResult($_REGISTER);./
    Keyword ::= s e v e r i t y /.$setResult($_SEVERITY);./
    Keyword ::= s p e c t r u m /.$setResult($_SPECTRUM);./
    Keyword ::= t e r m i n a l /.$setResult($_TERMINAL);./
    Keyword ::= v a r i a b l e /.$setResult($_VARIABLE);./
    Keyword ::= c o n t e x t /.$setResult($_CONTEXT);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= g e n e r i c /.$setResult($_GENERIC);./
    Keyword ::= g u a r d e d /.$setResult($_GUARDED);./
    Keyword ::= l i b r a r y /.$setResult($_LIBRARY);./
    Keyword ::= l i n k a g e /.$setResult($_LINKAGE);./
    Keyword ::= l i t e r a l /.$setResult($_LITERAL);./
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
    Keyword ::= p r o c e s s /.$setResult($_PROCESS);./
    Keyword ::= r e l e a s e /.$setResult($_RELEASE);./
    Keyword ::= s u b t y p e /.$setResult($_SUBTYPE);./
    Keyword ::= t h r o u g h /.$setResult($_THROUGH);./
    Keyword ::= a c c e s s /.$setResult($_ACCESS);./
    Keyword ::= a c r o s s /.$setResult($_ACROSS);./
    Keyword ::= a s s e r t /.$setResult($_ASSERT);./
    Keyword ::= b u f f e r /.$setResult($_BUFFER);./
    Keyword ::= d o w n t o /.$setResult($_DOWNTO);./
    Keyword ::= e n t i t y /.$setResult($_ENTITY);./
    Keyword ::= i m p u r e /.$setResult($_IMPURE);./
    Keyword ::= n a t u r e /.$setResult($_NATURE);./
    Keyword ::= o t h e r s /.$setResult($_OTHERS);./
    Keyword ::= r e c o r d /.$setResult($_RECORD);./
    Keyword ::= r e j e c t /.$setResult($_REJECT);./
    Keyword ::= r e p o r t /.$setResult($_REPORT);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s h a r e d /.$setResult($_SHARED);./
    Keyword ::= s i g n a l /.$setResult($_SIGNAL);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= a l i a s /.$setResult($_ALIAS);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= b l o c k /.$setResult($_BLOCK);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= e l s i f /.$setResult($_ELSIF);./
    Keyword ::= f o r c e /.$setResult($_FORCE);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= i n o u t /.$setResult($_INOUT);./
    Keyword ::= l a b e l /.$setResult($_LABEL);./
    Keyword ::= l i m i t /.$setResult($_LIMIT);./
    Keyword ::= n o i s e /.$setResult($_NOISE);./
    Keyword ::= r a n g e /.$setResult($_RANGE);./
    Keyword ::= u n i t s /.$setResult($_UNITS);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= b o d y /.$setResult($_BODY);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= f i l e /.$setResult($_FILE);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= n a n d /.$setResult($_NAND);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= p o r t /.$setResult($_PORT);./
    Keyword ::= p u r e /.$setResult($_PURE);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= w a i t /.$setResult($_WAIT);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= x n o r /.$setResult($_XNOR);./
    Keyword ::= a b s /.$setResult($_ABS);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= b u s /.$setResult($_BUS);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= m a p /.$setResult($_MAP);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= n o r /.$setResult($_NOR);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= r e m /.$setResult($_REM);./
    Keyword ::= r o l /.$setResult($_ROL);./
    Keyword ::= r o r /.$setResult($_ROR);./
    Keyword ::= s l a /.$setResult($_SLA);./
    Keyword ::= s l l /.$setResult($_SLL);./
    Keyword ::= s r a /.$setResult($_SRA);./
    Keyword ::= s r l /.$setResult($_SRL);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
