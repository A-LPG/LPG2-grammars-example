-- Keyword filter for Lpc (aligned to parser terminal names)
%options package=lpg.grammars.lpc
%options template=KeywordTemplateF.gi
%options fp=LpcKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    BasicType
    Break
    Catch
    ClassKw
    Continue
    Default
    Do
    Efun
    Else
    For
    Foreach
    If
    In
    Inherit
    New
    Return
    Switch
    TypeModifier
    While
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= o b j e c t _ t x /.$setResult($_BasicType);./
    Keyword ::= f u n c t i o n /.$setResult($_BasicType);./
    Keyword ::= c o n t i n u e /.$setResult($_Continue);./
    Keyword ::= i n h e r i t /.$setResult($_Inherit);./
    Keyword ::= m a p p i n g /.$setResult($_BasicType);./
    Keyword ::= f o r e a c h /.$setResult($_Foreach);./
    Keyword ::= p r i v a t e /.$setResult($_TypeModifier);./
    Keyword ::= p r o t e c t e d /.$setResult($_TypeModifier);./
    Keyword ::= v a r a r g s /.$setResult($_TypeModifier);./
    Keyword ::= d e f a u l t /.$setResult($_Default);./
    Keyword ::= n o m a s k /.$setResult($_TypeModifier);./
    Keyword ::= b u f f e r /.$setResult($_BasicType);./
    Keyword ::= o b j e c t /.$setResult($_BasicType);./
    Keyword ::= s t r i n g /.$setResult($_BasicType);./
    Keyword ::= s t a t i c /.$setResult($_TypeModifier);./
    Keyword ::= p u b l i c /.$setResult($_TypeModifier);./
    Keyword ::= r e t u r n /.$setResult($_Return);./
    Keyword ::= s w i t c h /.$setResult($_Switch);./
    Keyword ::= f l o a t /.$setResult($_BasicType);./
    Keyword ::= w h i l e /.$setResult($_While);./
    Keyword ::= b r e a k /.$setResult($_Break);./
    Keyword ::= c a t c h /.$setResult($_Catch);./
    Keyword ::= c l a s s /.$setResult($_ClassKw);./
    Keyword ::= m i x e d /.$setResult($_BasicType);./
    Keyword ::= e f u n /.$setResult($_Efun);./
    Keyword ::= e l s e /.$setResult($_Else);./
    Keyword ::= v o i d /.$setResult($_BasicType);./
    Keyword ::= i n t /.$setResult($_BasicType);./
    Keyword ::= f o r /.$setResult($_For);./
    Keyword ::= n e w /.$setResult($_New);./
    Keyword ::= d o /.$setResult($_Do);./
    Keyword ::= i f /.$setResult($_If);./
    Keyword ::= i n /.$setResult($_In);./
%End
