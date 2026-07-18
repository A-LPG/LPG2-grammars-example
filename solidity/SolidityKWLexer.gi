-- Keyword filter for Solidity (aligned to parser terminal names)
%options package=lpg.grammars.solidity
%options template=KeywordTemplateF.gi
%options fp=SolidityKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    Abstract
    Add
    Address
    And
    Anonymous
    As
    Assembly
    AssemblyBlockComma
    AssemblyBlockLParen
    AssemblyBlockRParen
    AssemblyDialect
    AssemblyFlagString
    AssemblyLBrace
    Assign
    AssignAdd
    AssignBitAnd
    AssignBitOr
    AssignBitXor
    AssignDiv
    AssignMod
    AssignMul
    AssignSar
    AssignShl
    AssignShr
    AssignSub
    BitAnd
    BitNot
    BitOr
    BitXor
    Bool
    Break
    Bytes
    CARET
    Calldata
    Catch
    Colon
    Comma
    Conditional
    Constructor
    Continue
    Contract
    Dec
    Delete
    Div
    Do
    DoubleArrow
    Else
    Emit
    Enum
    Equal
    Error
    Event
    Exp
    External
    Fallback
    Fixed
    FixedBytes
    For
    From
    Function
    Global
    GreaterThan
    GreaterThanOrEqual
    HexNumber
    HexString
    If
    Immutable
    Import
    Inc
    Indexed
    Interface
    Internal
    Is
    LessThan
    LessThanOrEqual
    Library
    Mapping
    Memory
    Mod
    Modifier
    Mul
    New
    Not
    NotEqual
    Or
    Override
    Payable
    Period
    Pragma
    PragmaToken
    Private
    Public
    Pure
    Receive
    Return
    Returns
    Revert
    Sar
    Semicolon
    Shl
    Shr
    SignedIntegerType
    Storage
    String
    Struct
    Sub
    SubDenomination
    Transient
    Try
    Type
    Ufixed
    Unchecked
    UnsignedIntegerType
    Using
    View
    Virtual
    While
    YulArrow
    YulAssign
    YulBreak
    YulCase
    YulComma
    YulContinue
    YulDecimalNumber
    YulDefault
    YulEVMBuiltin
    YulFalse
    YulFor
    YulFunction
    YulHexNumber
    YulIdentifier
    YulIf
    YulLBrace
    YulLParen
    YulLeave
    YulLet
    YulPeriod
    YulRBrace
    YulRParen
    YulSwitch
    YulTrue
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= a s s e m b l y b l o c k l p a r e n /.$setResult($_AssemblyBlockLParen);./
    Keyword ::= a s s e m b l y b l o c k r p a r e n /.$setResult($_AssemblyBlockRParen);./
    Keyword ::= u n s i g n e d i n t e g e r t y p e /.$setResult($_UnsignedIntegerType);./
    Keyword ::= a s s e m b l y b l o c k c o m m a /.$setResult($_AssemblyBlockComma);./
    Keyword ::= a s s e m b l y f l a g s t r i n g /.$setResult($_AssemblyFlagString);./
    Keyword ::= g r e a t e r t h a n o r e q u a l /.$setResult($_GreaterThanOrEqual);./
    Keyword ::= s i g n e d i n t e g e r t y p e /.$setResult($_SignedIntegerType);./
    Keyword ::= y u l d e c i m a l n u m b e r /.$setResult($_YulDecimalNumber);./
    Keyword ::= a s s e m b l y d i a l e c t /.$setResult($_AssemblyDialect);./
    Keyword ::= l e s s t h a n o r e q u a l /.$setResult($_LessThanOrEqual);./
    Keyword ::= s u b d e n o m i n a t i o n /.$setResult($_SubDenomination);./
    Keyword ::= a s s e m b l y l b r a c e /.$setResult($_AssemblyLBrace);./
    Keyword ::= y u l e v m b u i l t i n /.$setResult($_YulEVMBuiltin);./
    Keyword ::= y u l i d e n t i f i e r /.$setResult($_YulIdentifier);./
    Keyword ::= a s s i g n b i t a n d /.$setResult($_AssignBitAnd);./
    Keyword ::= a s s i g n b i t x o r /.$setResult($_AssignBitXor);./
    Keyword ::= y u l h e x n u m b e r /.$setResult($_YulHexNumber);./
    Keyword ::= a s s i g n b i t o r /.$setResult($_AssignBitOr);./
    Keyword ::= c o n d i t i o n a l /.$setResult($_Conditional);./
    Keyword ::= c o n s t r u c t o r /.$setResult($_Constructor);./
    Keyword ::= d o u b l e a r r o w /.$setResult($_DoubleArrow);./
    Keyword ::= g r e a t e r t h a n /.$setResult($_GreaterThan);./
    Keyword ::= p r a g m a t o k e n /.$setResult($_PragmaToken);./
    Keyword ::= y u l c o n t i n u e /.$setResult($_YulContinue);./
    Keyword ::= y u l f u n c t i o n /.$setResult($_YulFunction);./
    Keyword ::= f i x e d b y t e s /.$setResult($_FixedBytes);./
    Keyword ::= y u l d e f a u l t /.$setResult($_YulDefault);./
    Keyword ::= a n o n y m o u s /.$setResult($_Anonymous);./
    Keyword ::= a s s i g n a d d /.$setResult($_AssignAdd);./
    Keyword ::= a s s i g n d i v /.$setResult($_AssignDiv);./
    Keyword ::= a s s i g n m o d /.$setResult($_AssignMod);./
    Keyword ::= a s s i g n m u l /.$setResult($_AssignMul);./
    Keyword ::= a s s i g n s a r /.$setResult($_AssignSar);./
    Keyword ::= a s s i g n s h l /.$setResult($_AssignShl);./
    Keyword ::= a s s i g n s h r /.$setResult($_AssignShr);./
    Keyword ::= a s s i g n s u b /.$setResult($_AssignSub);./
    Keyword ::= h e x n u m b e r /.$setResult($_HexNumber);./
    Keyword ::= h e x s t r i n g /.$setResult($_HexString);./
    Keyword ::= i m m u t a b l e /.$setResult($_Immutable);./
    Keyword ::= i n t e r f a c e /.$setResult($_Interface);./
    Keyword ::= s e m i c o l o n /.$setResult($_Semicolon);./
    Keyword ::= t r a n s i e n t /.$setResult($_Transient);./
    Keyword ::= u n c h e c k e d /.$setResult($_Unchecked);./
    Keyword ::= y u l a s s i g n /.$setResult($_YulAssign);./
    Keyword ::= y u l l b r a c e /.$setResult($_YulLBrace);./
    Keyword ::= y u l l p a r e n /.$setResult($_YulLParen);./
    Keyword ::= y u l p e r i o d /.$setResult($_YulPeriod);./
    Keyword ::= y u l r b r a c e /.$setResult($_YulRBrace);./
    Keyword ::= y u l r p a r e n /.$setResult($_YulRParen);./
    Keyword ::= y u l s w i t c h /.$setResult($_YulSwitch);./
    Keyword ::= a b s t r a c t /.$setResult($_Abstract);./
    Keyword ::= a s s e m b l y /.$setResult($_Assembly);./
    Keyword ::= c a l l d a t a /.$setResult($_Calldata);./
    Keyword ::= c o n t i n u e /.$setResult($_Continue);./
    Keyword ::= c o n t r a c t /.$setResult($_Contract);./
    Keyword ::= e x t e r n a l /.$setResult($_External);./
    Keyword ::= f a l l b a c k /.$setResult($_Fallback);./
    Keyword ::= f u n c t i o n /.$setResult($_Function);./
    Keyword ::= i n t e r n a l /.$setResult($_Internal);./
    Keyword ::= l e s s t h a n /.$setResult($_LessThan);./
    Keyword ::= m o d i f i e r /.$setResult($_Modifier);./
    Keyword ::= n o t e q u a l /.$setResult($_NotEqual);./
    Keyword ::= o v e r r i d e /.$setResult($_Override);./
    Keyword ::= y u l a r r o w /.$setResult($_YulArrow);./
    Keyword ::= y u l b r e a k /.$setResult($_YulBreak);./
    Keyword ::= y u l c o m m a /.$setResult($_YulComma);./
    Keyword ::= y u l f a l s e /.$setResult($_YulFalse);./
    Keyword ::= y u l l e a v e /.$setResult($_YulLeave);./
    Keyword ::= a d d r e s s /.$setResult($_Address);./
    Keyword ::= i n d e x e d /.$setResult($_Indexed);./
    Keyword ::= l i b r a r y /.$setResult($_Library);./
    Keyword ::= m a p p i n g /.$setResult($_Mapping);./
    Keyword ::= p a y a b l e /.$setResult($_Payable);./
    Keyword ::= p r i v a t e /.$setResult($_Private);./
    Keyword ::= r e c e i v e /.$setResult($_Receive);./
    Keyword ::= r e t u r n s /.$setResult($_Returns);./
    Keyword ::= s t o r a g e /.$setResult($_Storage);./
    Keyword ::= v i r t u a l /.$setResult($_Virtual);./
    Keyword ::= y u l c a s e /.$setResult($_YulCase);./
    Keyword ::= y u l t r u e /.$setResult($_YulTrue);./
    Keyword ::= a s s i g n /.$setResult($_Assign);./
    Keyword ::= b i t a n d /.$setResult($_BitAnd);./
    Keyword ::= b i t n o t /.$setResult($_BitNot);./
    Keyword ::= b i t x o r /.$setResult($_BitXor);./
    Keyword ::= d e l e t e /.$setResult($_Delete);./
    Keyword ::= g l o b a l /.$setResult($_Global);./
    Keyword ::= i m p o r t /.$setResult($_Import);./
    Keyword ::= m e m o r y /.$setResult($_Memory);./
    Keyword ::= p e r i o d /.$setResult($_Period);./
    Keyword ::= p r a g m a /.$setResult($_Pragma);./
    Keyword ::= p u b l i c /.$setResult($_Public);./
    Keyword ::= r e t u r n /.$setResult($_Return);./
    Keyword ::= r e v e r t /.$setResult($_Revert);./
    Keyword ::= s t r i n g /.$setResult($_String);./
    Keyword ::= s t r u c t /.$setResult($_Struct);./
    Keyword ::= u f i x e d /.$setResult($_Ufixed);./
    Keyword ::= y u l f o r /.$setResult($_YulFor);./
    Keyword ::= y u l l e t /.$setResult($_YulLet);./
    Keyword ::= b i t o r /.$setResult($_BitOr);./
    Keyword ::= b r e a k /.$setResult($_Break);./
    Keyword ::= b y t e s /.$setResult($_Bytes);./
    Keyword ::= c a r e t /.$setResult($_CARET);./
    Keyword ::= c a t c h /.$setResult($_Catch);./
    Keyword ::= c o l o n /.$setResult($_Colon);./
    Keyword ::= c o m m a /.$setResult($_Comma);./
    Keyword ::= e q u a l /.$setResult($_Equal);./
    Keyword ::= e r r o r /.$setResult($_Error);./
    Keyword ::= e v e n t /.$setResult($_Event);./
    Keyword ::= f i x e d /.$setResult($_Fixed);./
    Keyword ::= u s i n g /.$setResult($_Using);./
    Keyword ::= w h i l e /.$setResult($_While);./
    Keyword ::= y u l i f /.$setResult($_YulIf);./
    Keyword ::= b o o l /.$setResult($_Bool);./
    Keyword ::= e l s e /.$setResult($_Else);./
    Keyword ::= e m i t /.$setResult($_Emit);./
    Keyword ::= e n u m /.$setResult($_Enum);./
    Keyword ::= f r o m /.$setResult($_From);./
    Keyword ::= p u r e /.$setResult($_Pure);./
    Keyword ::= t y p e /.$setResult($_Type);./
    Keyword ::= v i e w /.$setResult($_View);./
    Keyword ::= a d d /.$setResult($_Add);./
    Keyword ::= a n d /.$setResult($_And);./
    Keyword ::= d e c /.$setResult($_Dec);./
    Keyword ::= d i v /.$setResult($_Div);./
    Keyword ::= e x p /.$setResult($_Exp);./
    Keyword ::= f o r /.$setResult($_For);./
    Keyword ::= i n c /.$setResult($_Inc);./
    Keyword ::= m o d /.$setResult($_Mod);./
    Keyword ::= m u l /.$setResult($_Mul);./
    Keyword ::= n e w /.$setResult($_New);./
    Keyword ::= n o t /.$setResult($_Not);./
    Keyword ::= s a r /.$setResult($_Sar);./
    Keyword ::= s h l /.$setResult($_Shl);./
    Keyword ::= s h r /.$setResult($_Shr);./
    Keyword ::= s u b /.$setResult($_Sub);./
    Keyword ::= t r y /.$setResult($_Try);./
    Keyword ::= a s /.$setResult($_As);./
    Keyword ::= d o /.$setResult($_Do);./
    Keyword ::= i f /.$setResult($_If);./
    Keyword ::= i s /.$setResult($_Is);./
    Keyword ::= o r /.$setResult($_Or);./
%End
