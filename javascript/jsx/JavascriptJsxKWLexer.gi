-- Keyword filter for JavascriptJsx (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.javascript.jsx
%options template=KeywordTemplateF.gi
%options fp=JavascriptJsxKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    As
    Async
    Await
    BOOL_LITERAL
    Break
    CLASS_
    Case
    Catch
    Const
    Continue
    Debugger
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
    Import
    In
    Instanceof
    NULL_LITERAL
    New
    Return
    Super
    Switch
    This
    Throw
    Try
    Typeof
    Var
    Void
    While
    With
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= i n s t a n c e o f /.$setResult($_Instanceof);./
    Keyword ::= c o n t i n u e /.$setResult($_Continue);./
    Keyword ::= d e b u g g e r /.$setResult($_Debugger);./
    Keyword ::= f u n c t i o n /.$setResult($_Function_);./
    Keyword ::= d e f a u l t /.$setResult($_Default);./
    Keyword ::= e x t e n d s /.$setResult($_Extends);./
    Keyword ::= f i n a l l y /.$setResult($_Finally);./
    Keyword ::= d e l e t e /.$setResult($_Delete);./
    Keyword ::= e x p o r t /.$setResult($_Export);./
    Keyword ::= i m p o r t /.$setResult($_Import);./
    Keyword ::= r e t u r n /.$setResult($_Return);./
    Keyword ::= s w i t c h /.$setResult($_Switch);./
    Keyword ::= t y p e o f /.$setResult($_Typeof);./
    Keyword ::= a s y n c /.$setResult($_Async);./
    Keyword ::= a w a i t /.$setResult($_Await);./
    Keyword ::= b r e a k /.$setResult($_Break);./
    Keyword ::= c a t c h /.$setResult($_Catch);./
    Keyword ::= c l a s s /.$setResult($_CLASS_);./
    Keyword ::= c o n s t /.$setResult($_Const);./
    Keyword ::= f a l s e /.$setResult($_BOOL_LITERAL);./
    Keyword ::= s u p e r /.$setResult($_Super);./
    Keyword ::= t h r o w /.$setResult($_Throw);./
    Keyword ::= w h i l e /.$setResult($_While);./
    Keyword ::= c a s e /.$setResult($_Case);./
    Keyword ::= e l s e /.$setResult($_Else);./
    Keyword ::= e n u m /.$setResult($_Enum);./
    Keyword ::= f r o m /.$setResult($_From);./
    Keyword ::= n u l l /.$setResult($_NULL_LITERAL);./
    Keyword ::= t h i s /.$setResult($_This);./
    Keyword ::= t r u e /.$setResult($_BOOL_LITERAL);./
    Keyword ::= v o i d /.$setResult($_Void);./
    Keyword ::= w i t h /.$setResult($_With);./
    Keyword ::= f o r /.$setResult($_For);./
    Keyword ::= n e w /.$setResult($_New);./
    Keyword ::= t r y /.$setResult($_Try);./
    Keyword ::= v a r /.$setResult($_Var);./
    Keyword ::= a s /.$setResult($_As);./
    Keyword ::= d o /.$setResult($_Do);./
    Keyword ::= i f /.$setResult($_If);./
    Keyword ::= i n /.$setResult($_In);./
%End
