-- Keyword filter for JavascriptTypescript (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.javascript.typescript
%options template=KeywordTemplateF.gi
%options fp=JavascriptTypescriptKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    Abstract
    Any
    As
    Async
    Await
    BOOL_LITERAL
    Boolean
    Break
    CLASS_
    Case
    Catch
    Const
    Constructor
    Continue
    Debugger
    Declare
    Default
    Delete
    Do
    Else
    Enum
    Export
    Extends
    Finally
    For
    From
    Function_
    If
    Implements
    Import
    In
    Instanceof
    Interface
    Is
    KeyOf
    Let
    Module
    NULL_LITERAL
    Namespace
    Never
    New
    Number
    Object
    Of
    Package
    Private
    Protected
    Public
    ReadOnly
    Require
    Return
    Static
    String
    Super
    Switch
    Symbol
    This
    Throw
    Try
    TypeAlias
    Typeof
    Undefined
    Unique
    Var
    Void
    While
    With
    Yield
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= c o n s t r u c t o r /.$setResult($_Constructor);./
    Keyword ::= i m p l e m e n t s /.$setResult($_Implements);./
    Keyword ::= i n s t a n c e o f /.$setResult($_Instanceof);./
    Keyword ::= i n t e r f a c e /.$setResult($_Interface);./
    Keyword ::= n a m e s p a c e /.$setResult($_Namespace);./
    Keyword ::= p r o t e c t e d /.$setResult($_Protected);./
    Keyword ::= u n d e f i n e d /.$setResult($_Undefined);./
    Keyword ::= a b s t r a c t /.$setResult($_Abstract);./
    Keyword ::= c o n t i n u e /.$setResult($_Continue);./
    Keyword ::= d e b u g g e r /.$setResult($_Debugger);./
    Keyword ::= f u n c t i o n /.$setResult($_Function_);./
    Keyword ::= r e a d o n l y /.$setResult($_ReadOnly);./
    Keyword ::= b o o l e a n /.$setResult($_Boolean);./
    Keyword ::= d e c l a r e /.$setResult($_Declare);./
    Keyword ::= d e f a u l t /.$setResult($_Default);./
    Keyword ::= e x t e n d s /.$setResult($_Extends);./
    Keyword ::= f i n a l l y /.$setResult($_Finally);./
    Keyword ::= p a c k a g e /.$setResult($_Package);./
    Keyword ::= p r i v a t e /.$setResult($_Private);./
    Keyword ::= r e q u i r e /.$setResult($_Require);./
    Keyword ::= d e l e t e /.$setResult($_Delete);./
    Keyword ::= e x p o r t /.$setResult($_Export);./
    Keyword ::= i m p o r t /.$setResult($_Import);./
    Keyword ::= m o d u l e /.$setResult($_Module);./
    Keyword ::= n u m b e r /.$setResult($_Number);./
    Keyword ::= o b j e c t /.$setResult($_Object);./
    Keyword ::= p u b l i c /.$setResult($_Public);./
    Keyword ::= r e t u r n /.$setResult($_Return);./
    Keyword ::= s t a t i c /.$setResult($_Static);./
    Keyword ::= s t r i n g /.$setResult($_String);./
    Keyword ::= s w i t c h /.$setResult($_Switch);./
    Keyword ::= s y m b o l /.$setResult($_Symbol);./
    Keyword ::= t y p e o f /.$setResult($_Typeof);./
    Keyword ::= u n i q u e /.$setResult($_Unique);./
    Keyword ::= a s y n c /.$setResult($_Async);./
    Keyword ::= a w a i t /.$setResult($_Await);./
    Keyword ::= b r e a k /.$setResult($_Break);./
    Keyword ::= c a t c h /.$setResult($_Catch);./
    Keyword ::= c l a s s /.$setResult($_CLASS_);./
    Keyword ::= c o n s t /.$setResult($_Const);./
    Keyword ::= f a l s e /.$setResult($_BOOL_LITERAL);./
    Keyword ::= k e y o f /.$setResult($_KeyOf);./
    Keyword ::= n e v e r /.$setResult($_Never);./
    Keyword ::= s u p e r /.$setResult($_Super);./
    Keyword ::= t h r o w /.$setResult($_Throw);./
    Keyword ::= w h i l e /.$setResult($_While);./
    Keyword ::= y i e l d /.$setResult($_Yield);./
    Keyword ::= c a s e /.$setResult($_Case);./
    Keyword ::= e l s e /.$setResult($_Else);./
    Keyword ::= e n u m /.$setResult($_Enum);./
    Keyword ::= f r o m /.$setResult($_From);./
    Keyword ::= n u l l /.$setResult($_NULL_LITERAL);./
    Keyword ::= t h i s /.$setResult($_This);./
    Keyword ::= t r u e /.$setResult($_BOOL_LITERAL);./
    Keyword ::= t y p e /.$setResult($_TypeAlias);./
    Keyword ::= v o i d /.$setResult($_Void);./
    Keyword ::= w i t h /.$setResult($_With);./
    Keyword ::= a n y /.$setResult($_Any);./
    Keyword ::= f o r /.$setResult($_For);./
    Keyword ::= l e t /.$setResult($_Let);./
    Keyword ::= n e w /.$setResult($_New);./
    Keyword ::= t r y /.$setResult($_Try);./
    Keyword ::= v a r /.$setResult($_Var);./
    Keyword ::= a s /.$setResult($_As);./
    Keyword ::= d o /.$setResult($_Do);./
    Keyword ::= i f /.$setResult($_If);./
    Keyword ::= i n /.$setResult($_In);./
    Keyword ::= i s /.$setResult($_Is);./
    Keyword ::= o f /.$setResult($_Of);./
%End
