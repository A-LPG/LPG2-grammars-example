-- Keyword filter for Hexpat (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.hexpat
%options template=KeywordTemplateF.gi
%options fp=HexpatKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ADDRESSOF
    AUTO
    BITFIELD
    BOOL
    BOOLEAN_LITERAL
    BREAK
    CATCH
    CHAR
    CONST
    CONTINUE
    DOUBLE
    ELSE
    ENUM
    FLOAT
    FN
    FOR
    IF
    IMPORT
    MATCH
    NAMESPACE
    PADDING
    REF
    RETURN
    S128
    S16
    S32
    S64
    S8
    SIZEOF
    STR
    STRUCT
    TRY
    TYPENAMEOF
    U128
    U16
    U32
    U64
    U8
    UNION
    USING
    WHILE
    endian
    io
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= t y p e n a m e o f /.$setResult($_TYPENAMEOF);./
    Keyword ::= a d d r e s s o f /.$setResult($_ADDRESSOF);./
    Keyword ::= n a m e s p a c e /.$setResult($_NAMESPACE);./
    Keyword ::= b i t f i e l d /.$setResult($_BITFIELD);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= p a d d i n g /.$setResult($_PADDING);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s i z e o f /.$setResult($_SIZEOF);./
    Keyword ::= s t r u c t /.$setResult($_STRUCT);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= c o n s t /.$setResult($_CONST);./
    Keyword ::= f a l s e /.$setResult($_BOOLEAN_LITERAL);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= m a t c h /.$setResult($_MATCH);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= a u t o /.$setResult($_AUTO);./
    Keyword ::= b o o l /.$setResult($_BOOL);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= s 1 2 8 /.$setResult($_S128);./
    Keyword ::= t r u e /.$setResult($_BOOLEAN_LITERAL);./
    Keyword ::= u 1 2 8 /.$setResult($_U128);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= o u t /.$setResult($_io);./
    Keyword ::= r e f /.$setResult($_REF);./
    Keyword ::= s 1 6 /.$setResult($_S16);./
    Keyword ::= s 3 2 /.$setResult($_S32);./
    Keyword ::= s 6 4 /.$setResult($_S64);./
    Keyword ::= s t r /.$setResult($_STR);./
    Keyword ::= t r y /.$setResult($_TRY);./
    Keyword ::= u 1 6 /.$setResult($_U16);./
    Keyword ::= u 3 2 /.$setResult($_U32);./
    Keyword ::= u 6 4 /.$setResult($_U64);./
    Keyword ::= b e /.$setResult($_endian);./
    Keyword ::= f n /.$setResult($_FN);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_io);./
    Keyword ::= l e /.$setResult($_endian);./
    Keyword ::= s 8 /.$setResult($_S8);./
    Keyword ::= u 8 /.$setResult($_U8);./
%End
