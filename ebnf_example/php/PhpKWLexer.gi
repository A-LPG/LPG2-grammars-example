-- Keyword filter for Php (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.php
%options template=KeywordTemplateF.gi
%options fp=PhpKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    Abstract
    Array
    As
    BinaryCast
    BooleanConstant
    Break
    Callable
    Case
    Catch
    Class
    Clone
    Const
    Continue
    Declare
    Default
    Do
    DoubleCast
    DoubleType
    Echo
    Else
    ElseIf
    Empty
    Encoding
    EndDeclare
    EndFor
    EndForeach
    EndIf
    EndSwitch
    EndWhile
    Enum_
    Eval
    Exit
    Extends
    Final
    Finally
    FloatCast
    For
    Foreach
    From
    Function_
    Global
    Goto
    If
    Implements
    Import
    Include
    InstanceOf
    InsteadOf
    Int16Cast
    Int64Type
    Int8Cast
    Interface
    IsSet
    LambdaFn
    List
    LogicalAnd
    LogicalOr
    LogicalXor
    Match_
    Namespace
    New
    Null
    ObjectType
    Parent_
    Partial
    Print
    Private
    Protected
    Public
    Readonly
    Require
    Resource
    Return
    Static
    StringType
    Switch
    Throw
    Ticks
    Trait
    Try
    Typeof
    UnicodeCast
    Unset
    Use
    Var
    While
    Yield
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= e n d d e c l a r e /.$setResult($_EndDeclare);./
    Keyword ::= e n d f o r e a c h /.$setResult($_EndForeach);./
    Keyword ::= i m p l e m e n t s /.$setResult($_Implements);./
    Keyword ::= i n s t a n c e o f /.$setResult($_InstanceOf);./
    Keyword ::= c l r t y p e o f /.$setResult($_Typeof);./
    Keyword ::= e n d s w i t c h /.$setResult($_EndSwitch);./
    Keyword ::= i n s t e a d o f /.$setResult($_InsteadOf);./
    Keyword ::= i n t e r f a c e /.$setResult($_Interface);./
    Keyword ::= n a m e s p a c e /.$setResult($_Namespace);./
    Keyword ::= p r o t e c t e d /.$setResult($_Protected);./
    Keyword ::= a b s t r a c t /.$setResult($_Abstract);./
    Keyword ::= c a l l a b l e /.$setResult($_Callable);./
    Keyword ::= c o n t i n u e /.$setResult($_Continue);./
    Keyword ::= e n c o d i n g /.$setResult($_Encoding);./
    Keyword ::= e n d w h i l e /.$setResult($_EndWhile);./
    Keyword ::= f u n c t i o n /.$setResult($_Function_);./
    Keyword ::= r e a d o n l y /.$setResult($_Readonly);./
    Keyword ::= r e s o u r c e /.$setResult($_Resource);./
    Keyword ::= d e c l a r e /.$setResult($_Declare);./
    Keyword ::= d e f a u l t /.$setResult($_Default);./
    Keyword ::= e x t e n d s /.$setResult($_Extends);./
    Keyword ::= f i n a l l y /.$setResult($_Finally);./
    Keyword ::= f o r e a c h /.$setResult($_Foreach);./
    Keyword ::= i n c l u d e /.$setResult($_Include);./
    Keyword ::= p a r t i a l /.$setResult($_Partial);./
    Keyword ::= p r i v a t e /.$setResult($_Private);./
    Keyword ::= r e q u i r e /.$setResult($_Require);./
    Keyword ::= u n i c o d e /.$setResult($_UnicodeCast);./
    Keyword ::= b i n a r y /.$setResult($_BinaryCast);./
    Keyword ::= d o u b l e /.$setResult($_DoubleType);./
    Keyword ::= e l s e i f /.$setResult($_ElseIf);./
    Keyword ::= e n d f o r /.$setResult($_EndFor);./
    Keyword ::= g l o b a l /.$setResult($_Global);./
    Keyword ::= i m p o r t /.$setResult($_Import);./
    Keyword ::= o b j e c t /.$setResult($_ObjectType);./
    Keyword ::= p a r e n t /.$setResult($_Parent_);./
    Keyword ::= p u b l i c /.$setResult($_Public);./
    Keyword ::= r e t u r n /.$setResult($_Return);./
    Keyword ::= s t a t i c /.$setResult($_Static);./
    Keyword ::= s t r i n g /.$setResult($_StringType);./
    Keyword ::= s w i t c h /.$setResult($_Switch);./
    Keyword ::= a r r a y /.$setResult($_Array);./
    Keyword ::= b r e a k /.$setResult($_Break);./
    Keyword ::= c a t c h /.$setResult($_Catch);./
    Keyword ::= c l a s s /.$setResult($_Class);./
    Keyword ::= c l o n e /.$setResult($_Clone);./
    Keyword ::= c o n s t /.$setResult($_Const);./
    Keyword ::= e m p t y /.$setResult($_Empty);./
    Keyword ::= e n d i f /.$setResult($_EndIf);./
    Keyword ::= f a l s e /.$setResult($_BooleanConstant);./
    Keyword ::= f i n a l /.$setResult($_Final);./
    Keyword ::= f l o a t /.$setResult($_FloatCast);./
    Keyword ::= i n t 1 6 /.$setResult($_Int16Cast);./
    Keyword ::= i n t 6 4 /.$setResult($_Int64Type);./
    Keyword ::= i s s e t /.$setResult($_IsSet);./
    Keyword ::= m a t c h /.$setResult($_Match_);./
    Keyword ::= p r i n t /.$setResult($_Print);./
    Keyword ::= t h r o w /.$setResult($_Throw);./
    Keyword ::= t i c k s /.$setResult($_Ticks);./
    Keyword ::= t r a i t /.$setResult($_Trait);./
    Keyword ::= u n s e t /.$setResult($_Unset);./
    Keyword ::= w h i l e /.$setResult($_While);./
    Keyword ::= y i e l d /.$setResult($_Yield);./
    Keyword ::= c a s e /.$setResult($_Case);./
    Keyword ::= e c h o /.$setResult($_Echo);./
    Keyword ::= e l s e /.$setResult($_Else);./
    Keyword ::= e n u m /.$setResult($_Enum_);./
    Keyword ::= e v a l /.$setResult($_Eval);./
    Keyword ::= f r o m /.$setResult($_From);./
    Keyword ::= g o t o /.$setResult($_Goto);./
    Keyword ::= i n t 8 /.$setResult($_Int8Cast);./
    Keyword ::= l i s t /.$setResult($_List);./
    Keyword ::= n u l l /.$setResult($_Null);./
    Keyword ::= r e a l /.$setResult($_DoubleCast);./
    Keyword ::= t r u e /.$setResult($_BooleanConstant);./
    Keyword ::= a n d /.$setResult($_LogicalAnd);./
    Keyword ::= d i e /.$setResult($_Exit);./
    Keyword ::= f o r /.$setResult($_For);./
    Keyword ::= n e w /.$setResult($_New);./
    Keyword ::= t r y /.$setResult($_Try);./
    Keyword ::= u s e /.$setResult($_Use);./
    Keyword ::= v a r /.$setResult($_Var);./
    Keyword ::= x o r /.$setResult($_LogicalXor);./
    Keyword ::= a s /.$setResult($_As);./
    Keyword ::= d o /.$setResult($_Do);./
    Keyword ::= f n /.$setResult($_LambdaFn);./
    Keyword ::= i f /.$setResult($_If);./
    Keyword ::= o r /.$setResult($_LogicalOr);./
%End
