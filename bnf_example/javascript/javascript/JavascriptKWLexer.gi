-- Keyword filter for Javascript (aligned to parser terminal names)
%options package=lpg.grammars.javascript.javascript
%options template=KeywordTemplateF.gi
%options fp=JavascriptKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    AMPEQ
    AWAIT
    As
    Async
    BackTick
    BigBinaryIntegerLiteral
    BigDecimalIntegerLiteral
    BigHexIntegerLiteral
    BigOctalIntegerLiteral
    BinaryIntegerLiteral
    Break
    CARETEQ
    CLASS_
    Case
    Catch
    Const
    Continue
    DELETE
    Debugger
    Default
    Do
    EQEQEQ
    Else
    Enum
    Export
    Extends
    FATARROW
    Finally
    For
    From
    Function_
    HashBangLine
    HexIntegerLiteral
    If
    Implements
    Import
    In
    Instanceof
    Interface
    LSHIFT
    LSHIFTEQ
    MINUSEQ
    NEW
    NOTEQ
    NOTEQEQ
    NonStrictLet
    OctalIntegerLiteral
    OctalIntegerLiteral2
    Of
    PERCENTEQ
    PIPEEQ
    PLUSEQ
    Package
    Private
    Protected
    Public
    QUESTDOT
    QUESTQUESTEQ
    RSHIFT
    RSHIFTEQ
    RegularExpressionLiteral
    Return
    SLASHEQ
    STAREQ
    STARSTAREQ
    STRING
    Static
    StrictLet
    Super
    Switch
    THIS
    TYPEOF
    TemplateCloseBrace
    TemplateStringAtom
    TemplateStringStartExpression
    Throw
    Try
    URSHIFT
    URSHIFTEQ
    VOID
    Var
    While
    With
    Yield
    YieldStar
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= t e m p l a t e s t r i n g s t a r t e x p r e s s i o n /.$setResult($_TemplateStringStartExpression);./
    Keyword ::= b i g d e c i m a l i n t e g e r l i t e r a l /.$setResult($_BigDecimalIntegerLiteral);./
    Keyword ::= r e g u l a r e x p r e s s i o n l i t e r a l /.$setResult($_RegularExpressionLiteral);./
    Keyword ::= b i g b i n a r y i n t e g e r l i t e r a l /.$setResult($_BigBinaryIntegerLiteral);./
    Keyword ::= b i g o c t a l i n t e g e r l i t e r a l /.$setResult($_BigOctalIntegerLiteral);./
    Keyword ::= b i g h e x i n t e g e r l i t e r a l /.$setResult($_BigHexIntegerLiteral);./
    Keyword ::= b i n a r y i n t e g e r l i t e r a l /.$setResult($_BinaryIntegerLiteral);./
    Keyword ::= o c t a l i n t e g e r l i t e r a l 2 /.$setResult($_OctalIntegerLiteral2);./
    Keyword ::= o c t a l i n t e g e r l i t e r a l /.$setResult($_OctalIntegerLiteral);./
    Keyword ::= t e m p l a t e c l o s e b r a c e /.$setResult($_TemplateCloseBrace);./
    Keyword ::= t e m p l a t e s t r i n g a t o m /.$setResult($_TemplateStringAtom);./
    Keyword ::= h e x i n t e g e r l i t e r a l /.$setResult($_HexIntegerLiteral);./
    Keyword ::= h a s h b a n g l i n e /.$setResult($_HashBangLine);./
    Keyword ::= n o n s t r i c t l e t /.$setResult($_NonStrictLet);./
    Keyword ::= q u e s t q u e s t e q /.$setResult($_QUESTQUESTEQ);./
    Keyword ::= i m p l e m e n t s /.$setResult($_Implements);./
    Keyword ::= i n s t a n c e o f /.$setResult($_Instanceof);./
    Keyword ::= s t a r s t a r e q /.$setResult($_STARSTAREQ);./
    Keyword ::= i n t e r f a c e /.$setResult($_Interface);./
    Keyword ::= p e r c e n t e q /.$setResult($_PERCENTEQ);./
    Keyword ::= p r o t e c t e d /.$setResult($_Protected);./
    Keyword ::= s t r i c t l e t /.$setResult($_StrictLet);./
    Keyword ::= u r s h i f t e q /.$setResult($_URSHIFTEQ);./
    Keyword ::= y i e l d s t a r /.$setResult($_YieldStar);./
    Keyword ::= b a c k t i c k /.$setResult($_BackTick);./
    Keyword ::= c o n t i n u e /.$setResult($_Continue);./
    Keyword ::= d e b u g g e r /.$setResult($_Debugger);./
    Keyword ::= f a t a r r o w /.$setResult($_FATARROW);./
    Keyword ::= f u n c t i o n /.$setResult($_Function_);./
    Keyword ::= l s h i f t e q /.$setResult($_LSHIFTEQ);./
    Keyword ::= q u e s t d o t /.$setResult($_QUESTDOT);./
    Keyword ::= r s h i f t e q /.$setResult($_RSHIFTEQ);./
    Keyword ::= c a r e t e q /.$setResult($_CARETEQ);./
    Keyword ::= d e f a u l t /.$setResult($_Default);./
    Keyword ::= e x t e n d s /.$setResult($_Extends);./
    Keyword ::= f i n a l l y /.$setResult($_Finally);./
    Keyword ::= m i n u s e q /.$setResult($_MINUSEQ);./
    Keyword ::= n o t e q e q /.$setResult($_NOTEQEQ);./
    Keyword ::= p a c k a g e /.$setResult($_Package);./
    Keyword ::= p r i v a t e /.$setResult($_Private);./
    Keyword ::= s l a s h e q /.$setResult($_SLASHEQ);./
    Keyword ::= u r s h i f t /.$setResult($_URSHIFT);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= e q e q e q /.$setResult($_EQEQEQ);./
    Keyword ::= e x p o r t /.$setResult($_Export);./
    Keyword ::= i m p o r t /.$setResult($_Import);./
    Keyword ::= l s h i f t /.$setResult($_LSHIFT);./
    Keyword ::= p i p e e q /.$setResult($_PIPEEQ);./
    Keyword ::= p l u s e q /.$setResult($_PLUSEQ);./
    Keyword ::= p u b l i c /.$setResult($_Public);./
    Keyword ::= r e t u r n /.$setResult($_Return);./
    Keyword ::= r s h i f t /.$setResult($_RSHIFT);./
    Keyword ::= s t a r e q /.$setResult($_STAREQ);./
    Keyword ::= s t a t i c /.$setResult($_Static);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= s w i t c h /.$setResult($_Switch);./
    Keyword ::= t y p e o f /.$setResult($_TYPEOF);./
    Keyword ::= a m p e q /.$setResult($_AMPEQ);./
    Keyword ::= a s y n c /.$setResult($_Async);./
    Keyword ::= a w a i t /.$setResult($_AWAIT);./
    Keyword ::= b r e a k /.$setResult($_Break);./
    Keyword ::= c a t c h /.$setResult($_Catch);./
    Keyword ::= c l a s s /.$setResult($_CLASS_);./
    Keyword ::= c o n s t /.$setResult($_Const);./
    Keyword ::= n o t e q /.$setResult($_NOTEQ);./
    Keyword ::= s u p e r /.$setResult($_Super);./
    Keyword ::= t h r o w /.$setResult($_Throw);./
    Keyword ::= w h i l e /.$setResult($_While);./
    Keyword ::= y i e l d /.$setResult($_Yield);./
    Keyword ::= c a s e /.$setResult($_Case);./
    Keyword ::= e l s e /.$setResult($_Else);./
    Keyword ::= e n u m /.$setResult($_Enum);./
    Keyword ::= f r o m /.$setResult($_From);./
    Keyword ::= t h i s /.$setResult($_THIS);./
    Keyword ::= v o i d /.$setResult($_VOID);./
    Keyword ::= w i t h /.$setResult($_With);./
    Keyword ::= f o r /.$setResult($_For);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= t r y /.$setResult($_Try);./
    Keyword ::= v a r /.$setResult($_Var);./
    Keyword ::= a s /.$setResult($_As);./
    Keyword ::= d o /.$setResult($_Do);./
    Keyword ::= i f /.$setResult($_If);./
    Keyword ::= i n /.$setResult($_In);./
    Keyword ::= o f /.$setResult($_Of);./
%End
