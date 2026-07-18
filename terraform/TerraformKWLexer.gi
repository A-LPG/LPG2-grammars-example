-- Terraform keyword filter
%options package=lpg.grammars.terraform
%options template=KeywordTemplateF.gi
%options fp=TerraformKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    LOCALS
    RESOURCE
    VARIABLE
    OUTPUT
    MODULE
    PROVIDER
    DATA
    TERRAFORM
    TRUE
    FALSE
    NULLLITERAL
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= t e r r a f o r m /.$setResult($_TERRAFORM);./
              | r e s o u r c e /.$setResult($_RESOURCE);./
              | v a r i a b l e /.$setResult($_VARIABLE);./
              | p r o v i d e r /.$setResult($_PROVIDER);./
              | m o d u l e /.$setResult($_MODULE);./
              | o u t p u t /.$setResult($_OUTPUT);./
              | l o c a l s /.$setResult($_LOCALS);./
              | d a t a /.$setResult($_DATA);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | n u l l /.$setResult($_NULLLITERAL);./
%End
