-- Keyword filter
%options package=lpg.grammars.flatbuffers
%options template=KeywordTemplateF.gi
%options fp=FlatbuffersKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    ATTRIBUTE
    ENUM
    FILE_EXTENSION
    FILE_IDENTIFIER
    INCLUDE
    NATIVE_INCLUDE
    NAMESPACE
    ROOT_TYPE
    RPC_SERVICE
    STRUCT
    TABLE
    UNION
    bool
    byte
    ubyte
    short
    ushort
    int
    uint
    float
    long
    ulong
    double
    int8
    uint8
    int16
    uint16
    int32
    uint32
    int64
    uint64
    float32
    float64
    string
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
    Keyword ::= a t t r i b u t e /.$setResult($_ATTRIBUTE);./
              | e n u m /.$setResult($_ENUM);./
              | f i l e _ e x t e n s i o n /.$setResult($_FILE_EXTENSION);./
              | f i l e _ i d e n t i f i e r /.$setResult($_FILE_IDENTIFIER);./
              | i n c l u d e /.$setResult($_INCLUDE);./
              | n a t i v e _ i n c l u d e /.$setResult($_NATIVE_INCLUDE);./
              | n a m e s p a c e /.$setResult($_NAMESPACE);./
              | r o o t _ t y p e /.$setResult($_ROOT_TYPE);./
              | r p c _ s e r v i c e /.$setResult($_RPC_SERVICE);./
              | s t r u c t /.$setResult($_STRUCT);./
              | t a b l e /.$setResult($_TABLE);./
              | u n i o n /.$setResult($_UNION);./
              | b o o l /.$setResult($_bool);./
              | b y t e /.$setResult($_byte);./
              | u b y t e /.$setResult($_ubyte);./
              | s h o r t /.$setResult($_short);./
              | u s h o r t /.$setResult($_ushort);./
              | i n t /.$setResult($_int);./
              | u i n t /.$setResult($_uint);./
              | f l o a t /.$setResult($_float);./
              | l o n g /.$setResult($_long);./
              | u l o n g /.$setResult($_ulong);./
              | d o u b l e /.$setResult($_double);./
              | i n t 8 /.$setResult($_int8);./
              | u i n t 8 /.$setResult($_uint8);./
              | i n t 1 6 /.$setResult($_int16);./
              | u i n t 1 6 /.$setResult($_uint16);./
              | i n t 3 2 /.$setResult($_int32);./
              | u i n t 3 2 /.$setResult($_uint32);./
              | i n t 6 4 /.$setResult($_int64);./
              | u i n t 6 4 /.$setResult($_uint64);./
              | f l o a t 3 2 /.$setResult($_float32);./
              | f l o a t 6 4 /.$setResult($_float64);./
              | s t r i n g /.$setResult($_string);./
%End
