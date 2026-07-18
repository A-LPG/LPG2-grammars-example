-- Keyword filter for Swift5 (aligned to parser terminal names)
%options package=lpg.grammars.swift.swift5
%options template=KeywordTemplateF.gi
%options fp=Swift5KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ANDAND
    AS
    ASSOCIATEDTYPE
    BANG
    BREAK
    CASE
    CATCH
    CLASS_
    CONTINUE
    DEFAULT
    DEFER
    DEINIT
    DO
    ELSE
    ENUM
    EXTENSION
    FALLTHROUGH
    FALSE
    FILEPRIVATE
    FINAL
    FOR
    FUNC
    GET
    GUARD
    HASH
    IF
    IMPORT_
    IN
    INDIRECT
    INFIX
    INIT
    INOUT
    INTERNAL
    IS
    LAZY
    LET
    MUTATING
    NIL
    OPEN
    OPERATOR
    OROR
    OVERRIDE
    PERCENT
    POSTFIX
    PREFIX
    PRIVATE
    PROTOCOL
    PUBLIC
    REPEAT
    RETURN
    SELF
    SET
    STATIC
    STRING
    STRUCT
    SUBSCRIPT
    SUPER
    SWITCH
    THROW
    THROWS
    TRUE
    TRY
    TYPEALIAS
    VAR
    WHERE
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
    Keyword ::= a s s o c i a t e d t y p e /.$setResult($_ASSOCIATEDTYPE);./
    Keyword ::= f a l l t h r o u g h /.$setResult($_FALLTHROUGH);./
    Keyword ::= f i l e p r i v a t e /.$setResult($_FILEPRIVATE);./
    Keyword ::= e x t e n s i o n /.$setResult($_EXTENSION);./
    Keyword ::= s u b s c r i p t /.$setResult($_SUBSCRIPT);./
    Keyword ::= t y p e a l i a s /.$setResult($_TYPEALIAS);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= i n d i r e c t /.$setResult($_INDIRECT);./
    Keyword ::= i n t e r n a l /.$setResult($_INTERNAL);./
    Keyword ::= m u t a t i n g /.$setResult($_MUTATING);./
    Keyword ::= o p e r a t o r /.$setResult($_OPERATOR);./
    Keyword ::= o v e r r i d e /.$setResult($_OVERRIDE);./
    Keyword ::= p r o t o c o l /.$setResult($_PROTOCOL);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= p o s t f i x /.$setResult($_POSTFIX);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= a n d a n d /.$setResult($_ANDAND);./
    Keyword ::= d e i n i t /.$setResult($_DEINIT);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT_);./
    Keyword ::= p r e f i x /.$setResult($_PREFIX);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= r e p e a t /.$setResult($_REPEAT);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s t a t i c /.$setResult($_STATIC);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= s t r u c t /.$setResult($_STRUCT);./
    Keyword ::= s w i t c h /.$setResult($_SWITCH);./
    Keyword ::= t h r o w s /.$setResult($_THROWS);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= c l a s s /.$setResult($_CLASS_);./
    Keyword ::= d e f e r /.$setResult($_DEFER);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f i n a l /.$setResult($_FINAL);./
    Keyword ::= g u a r d /.$setResult($_GUARD);./
    Keyword ::= i n f i x /.$setResult($_INFIX);./
    Keyword ::= i n o u t /.$setResult($_INOUT);./
    Keyword ::= s u p e r /.$setResult($_SUPER);./
    Keyword ::= t h r o w /.$setResult($_THROW);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= b a n g /.$setResult($_BANG);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= f u n c /.$setResult($_FUNC);./
    Keyword ::= h a s h /.$setResult($_HASH);./
    Keyword ::= i n i t /.$setResult($_INIT);./
    Keyword ::= l a z y /.$setResult($_LAZY);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= o r o r /.$setResult($_OROR);./
    Keyword ::= s e l f /.$setResult($_SELF);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= g e t /.$setResult($_GET);./
    Keyword ::= l e t /.$setResult($_LET);./
    Keyword ::= n i l /.$setResult($_NIL);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= t r y /.$setResult($_TRY);./
    Keyword ::= v a r /.$setResult($_VAR);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
%End
