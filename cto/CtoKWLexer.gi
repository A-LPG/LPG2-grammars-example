-- Keyword filter
%options package=lpg.grammars.cto
%options template=KeywordTemplateF.gi
%options fp=CtoKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    NAMESPACE
    IMPORT
    ASSET
    PARTICIPANT
    TRANSACTION
    EVENT
    ENUM
    CONCEPT
    ABSTRACT
    EXTENDS
    IDENTIFIED
    OPTIONAL
    DEFAULT
    REGEX
    RANGE
    INSTANCE
    OF
    TRUE
    FALSE
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
    0 1 2 3 4 5 6 7 8 9
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= n a m e s p a c e /.$setResult($_NAMESPACE);./
              | i m p o r t /.$setResult($_IMPORT);./
              | a s s e t /.$setResult($_ASSET);./
              | p a r t i c i p a n t /.$setResult($_PARTICIPANT);./
              | t r a n s a c t i o n /.$setResult($_TRANSACTION);./
              | e v e n t /.$setResult($_EVENT);./
              | e n u m /.$setResult($_ENUM);./
              | c o n c e p t /.$setResult($_CONCEPT);./
              | a b s t r a c t /.$setResult($_ABSTRACT);./
              | e x t e n d s /.$setResult($_EXTENDS);./
              | i d e n t i f i e d /.$setResult($_IDENTIFIED);./
              | o p t i o n a l /.$setResult($_OPTIONAL);./
              | d e f a u l t /.$setResult($_DEFAULT);./
              | r e g e x /.$setResult($_REGEX);./
              | r a n g e /.$setResult($_RANGE);./
              | i n s t a n c e /.$setResult($_INSTANCE);./
              | o f /.$setResult($_OF);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
%End
