-- Keyword filter for Odin (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.odin
%options template=KeywordTemplateF.gi
%options fp=OdinKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ANY
    B16
    B32
    B64
    B8
    BOOL
    BREAK
    CASE
    CAST
    COMPLEX128
    COMPLEX32
    COMPLEX64
    CONTINUE
    CSTRING
    DEFER
    DISTINCT
    DYNAMIC
    ELSE
    ENUM
    F16
    F32
    F64
    FALLTHROUGH
    FALSE
    FOR
    FOREIGN
    I128
    I16
    I32
    I64
    I8
    IF
    IMPORT
    IN
    INT
    MAP
    MATRIX
    NIL
    PACKAGE
    PROC
    QUATERNION128
    QUATERNION256
    QUATERNION64
    RAWPTR
    RETURN
    RUNE
    STRING_KW
    STRUCT
    SWITCH
    TRANSMUTE
    TRUE
    TYPEID
    U128
    U16
    U32
    U64
    U8
    UINT
    UINTPTR
    UNION
    USING
    WHEN
    WHERE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= q u a t e r n i o n 1 2 8 /.$setResult($_QUATERNION128);./
    Keyword ::= q u a t e r n i o n 2 5 6 /.$setResult($_QUATERNION256);./
    Keyword ::= q u a t e r n i o n 6 4 /.$setResult($_QUATERNION64);./
    Keyword ::= f a l l t h r o u g h /.$setResult($_FALLTHROUGH);./
    Keyword ::= c o m p l e x 1 2 8 /.$setResult($_COMPLEX128);./
    Keyword ::= c o m p l e x 3 2 /.$setResult($_COMPLEX32);./
    Keyword ::= c o m p l e x 6 4 /.$setResult($_COMPLEX64);./
    Keyword ::= t r a n s m u t e /.$setResult($_TRANSMUTE);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= c s t r i n g /.$setResult($_CSTRING);./
    Keyword ::= d y n a m i c /.$setResult($_DYNAMIC);./
    Keyword ::= f o r e i g n /.$setResult($_FOREIGN);./
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
    Keyword ::= u i n t p t r /.$setResult($_UINTPTR);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= m a t r i x /.$setResult($_MATRIX);./
    Keyword ::= r a w p t r /.$setResult($_RAWPTR);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s t r i n g /.$setResult($_STRING_KW);./
    Keyword ::= s t r u c t /.$setResult($_STRUCT);./
    Keyword ::= s w i t c h /.$setResult($_SWITCH);./
    Keyword ::= t y p e i d /.$setResult($_TYPEID);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= d e f e r /.$setResult($_DEFER);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= b o o l /.$setResult($_BOOL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c a s t /.$setResult($_CAST);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= i 1 2 8 /.$setResult($_I128);./
    Keyword ::= p r o c /.$setResult($_PROC);./
    Keyword ::= r u n e /.$setResult($_RUNE);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= u 1 2 8 /.$setResult($_U128);./
    Keyword ::= u i n t /.$setResult($_UINT);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= b 1 6 /.$setResult($_B16);./
    Keyword ::= b 3 2 /.$setResult($_B32);./
    Keyword ::= b 6 4 /.$setResult($_B64);./
    Keyword ::= f 1 6 /.$setResult($_F16);./
    Keyword ::= f 3 2 /.$setResult($_F32);./
    Keyword ::= f 6 4 /.$setResult($_F64);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i 1 6 /.$setResult($_I16);./
    Keyword ::= i 3 2 /.$setResult($_I32);./
    Keyword ::= i 6 4 /.$setResult($_I64);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= m a p /.$setResult($_MAP);./
    Keyword ::= n i l /.$setResult($_NIL);./
    Keyword ::= u 1 6 /.$setResult($_U16);./
    Keyword ::= u 3 2 /.$setResult($_U32);./
    Keyword ::= u 6 4 /.$setResult($_U64);./
    Keyword ::= b 8 /.$setResult($_B8);./
    Keyword ::= i 8 /.$setResult($_I8);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= u 8 /.$setResult($_U8);./
%End
