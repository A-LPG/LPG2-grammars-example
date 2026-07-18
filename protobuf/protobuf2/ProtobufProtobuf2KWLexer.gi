-- Keyword filter for ProtobufProtobuf2KWLexer (FoldedCase; from g4)
%options package=lpg.grammars.protobuf.protobuf2
%options template=KeywordTemplateF.gi
%options fp=ProtobufProtobuf2KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    BOOL
    BOOL_LIT
    BYTES
    DOUBLE
    ENUM
    EXTEND
    EXTENSIONS
    FLOAT
    GROUP
    IMPORT
    MAP
    MAX
    MESSAGE
    ONEOF
    OPTION
    OPTIONAL
    PACKAGE
    PUBLIC
    REPEATED
    REQUIRED
    RESERVED
    RETURNS
    RPC
    SERVICE
    STREAM
    STRING
    SYNTAX
    TO
    WEAK
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= e x t e n s i o n s /.$setResult($_EXTENSIONS);./
    Keyword ::= o p t i o n a l /.$setResult($_OPTIONAL);./
    Keyword ::= r e p e a t e d /.$setResult($_REPEATED);./
    Keyword ::= r e q u i r e d /.$setResult($_REQUIRED);./
    Keyword ::= r e s e r v e d /.$setResult($_RESERVED);./
    Keyword ::= m e s s a g e /.$setResult($_MESSAGE);./
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS);./
    Keyword ::= s e r v i c e /.$setResult($_SERVICE);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e x t e n d /.$setResult($_EXTEND);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= o p t i o n /.$setResult($_OPTION);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= s t r e a m /.$setResult($_STREAM);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= s y n t a x /.$setResult($_SYNTAX);./
    Keyword ::= b y t e s /.$setResult($_BYTES);./
    Keyword ::= f a l s e /.$setResult($_BOOL_LIT);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= o n e o f /.$setResult($_ONEOF);./
    Keyword ::= b o o l /.$setResult($_BOOL);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= t r u e /.$setResult($_BOOL_LIT);./
    Keyword ::= w e a k /.$setResult($_WEAK);./
    Keyword ::= m a p /.$setResult($_MAP);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= r p c /.$setResult($_RPC);./
    Keyword ::= t o /.$setResult($_TO);./
%End
