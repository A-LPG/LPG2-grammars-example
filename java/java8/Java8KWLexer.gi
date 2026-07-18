-- Keyword filter for Java8 (from grammars-v4)
%options package=lpg.grammars.java.java8
%options template=KeywordTemplateF.gi
%options fp=Java8KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    CLASS
    ELSE
    EXTENDS
    FALSE
    FOR
    IF
    IMPLEMENTS
    IMPORT
    INT
    INTERFACE
    NEW
    NULLLITERAL
    PACKAGE
    PRIVATE
    PUBLIC
    RETURN
    STATIC
    TRUE
    VOID
    WHILE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= i m p l e m e n t s /.$setResult($_IMPLEMENTS);./
    Keyword ::= i n t e r f a c e /.$setResult($_INTERFACE);./
    Keyword ::= e x t e n d s /.$setResult($_EXTENDS);./
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s t a t i c /.$setResult($_STATIC);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= n u l l /.$setResult($_NULLLITERAL);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= v o i d /.$setResult($_VOID);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= i f /.$setResult($_IF);./
%End
