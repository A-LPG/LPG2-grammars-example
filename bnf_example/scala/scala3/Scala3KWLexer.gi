-- Keyword filter for Scala3
%options package=lpg.grammars.scala.scala3
%options template=KeywordTemplateF.gi
%options fp=Scala3KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ABSTRACT
    CASE
    CLASS_
    DEF
    ELSE
    EXTENDS
    FALSE
    FINAL
    IF
    IMPORT_
    NEW
    NULLLITERAL
    OBJECT
    OVERRIDE
    PACKAGE
    PRIVATE
    PROTECTED
    SEALED
    SUPER
    THIS
    TRAIT
    TRUE
    VAL
    VAR
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= a b s t r a c t /.$setResult($_ABSTRACT);./
    Keyword ::= o v e r r i d e /.$setResult($_OVERRIDE);./
    Keyword ::= e x t e n d s /.$setResult($_EXTENDS);./
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT_);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT);./
    Keyword ::= s e a l e d /.$setResult($_SEALED);./
    Keyword ::= c l a s s /.$setResult($_CLASS_);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f i n a l /.$setResult($_FINAL);./
    Keyword ::= s u p e r /.$setResult($_SUPER);./
    Keyword ::= t r a i t /.$setResult($_TRAIT);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= n u l l /.$setResult($_NULLLITERAL);./
    Keyword ::= t h i s /.$setResult($_THIS);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= d e f /.$setResult($_DEF);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= v a l /.$setResult($_VAL);./
    Keyword ::= v a r /.$setResult($_VAR);./
    Keyword ::= i f /.$setResult($_IF);./
%End
