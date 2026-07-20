-- Keywords for ASL intrinsic function names (letter-only; Base64* in main lexer)
%options package=lpg.grammars.amazon_states_language_intrinsic_functions
%options template=KeywordTemplateF.gi
%options fp=AslIntrinsicKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    STATES
    FORMAT
    STRINGTOJSON
    JSONTOSTRING
    ARRAY
    ARRAYPARTITION
    ARRAYCONTAINS
    ARRAYRANGE
    ARRAYGETITEM
    ARRAYLENGTH
    ARRAYUNIQUE
    HASH
    JSONMERGE
    MATHRANDOM
    MATHADD
    STRINGSPLIT
    UUID
    TRUE
    FALSE
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= s t a t e s /.$setResult($_STATES);./
              | f o r m a t /.$setResult($_FORMAT);./
              | s t r i n g t o j s o n /.$setResult($_STRINGTOJSON);./
              | j s o n t o s t r i n g /.$setResult($_JSONTOSTRING);./
              | a r r a y /.$setResult($_ARRAY);./
              | a r r a y p a r t i t i o n /.$setResult($_ARRAYPARTITION);./
              | a r r a y c o n t a i n s /.$setResult($_ARRAYCONTAINS);./
              | a r r a y r a n g e /.$setResult($_ARRAYRANGE);./
              | a r r a y g e t i t e m /.$setResult($_ARRAYGETITEM);./
              | a r r a y l e n g t h /.$setResult($_ARRAYLENGTH);./
              | a r r a y u n i q u e /.$setResult($_ARRAYUNIQUE);./
              | h a s h /.$setResult($_HASH);./
              | j s o n m e r g e /.$setResult($_JSONMERGE);./
              | m a t h r a n d o m /.$setResult($_MATHRANDOM);./
              | m a t h a d d /.$setResult($_MATHADD);./
              | s t r i n g s p l i t /.$setResult($_STRINGSPLIT);./
              | u u i d /.$setResult($_UUID);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
%End
