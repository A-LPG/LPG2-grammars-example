-- Keyword filter (includes hyphenated keywords)
%options package=lpg.grammars.peoplecode
%options template=KeywordTemplateF.gi
%options fp=PeoplecodeKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    KW_END_EVALUATE
    KW_END_FUNCTION
    KW_FIELDFORMULA
    KW_FIELDCHANGE
    KW_END_METHOD
    KW_PEOPLECODE
    KW_WHEN_OTHER
    KW_END_CLASS
    KW_END_WHILE
    KW_EXCEPTION
    KW_CONSTANT
    KW_EVALUATE
    KW_FUNCTION
    KW_INSTANCE
    KW_PROPERTY
    KW_READONLY
    KW_DECLARE
    KW_END_FOR
    KW_END_GET
    KW_END_SET
    KW_END_TRY
    KW_PRIVATE
    KW_RETURNS
    KW_WARNING
    KW_CREATE
    KW_END_IF
    KW_IMPORT
    KW_METHOD
    KW_RETURN
    KW_BREAK
    KW_CATCH
    KW_CLASS
    KW_ERROR
    KW_FALSE
    KW_THROW
    KW_WHILE
    KW_ELSE
    KW_EXIT
    KW_STEP
    KW_THEN
    KW_TRUE
    KW_WHEN
    KW_AND
    KW_FOR
    KW_GET
    KW_NOT
    KW_SET
    KW_TRY
    KW_REM
    KW_AS
    KW_IF
    KW_OF
    KW_OR
    KW_TO
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    Minus ::= '-'
%End
%Headers
    /.
        static {
            tokenKind['-'] = $sym_type.$prefix$Minus$suffix$;
        }
    ./
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= e n d Minus e v a l u a t e /.$setResult($_KW_END_EVALUATE);./
              | e n d Minus f u n c t i o n /.$setResult($_KW_END_FUNCTION);./
              | f i e l d f o r m u l a /.$setResult($_KW_FIELDFORMULA);./
              | f i e l d c h a n g e /.$setResult($_KW_FIELDCHANGE);./
              | e n d Minus m e t h o d /.$setResult($_KW_END_METHOD);./
              | p e o p l e c o d e /.$setResult($_KW_PEOPLECODE);./
              | w h e n Minus o t h e r /.$setResult($_KW_WHEN_OTHER);./
              | e n d Minus c l a s s /.$setResult($_KW_END_CLASS);./
              | e n d Minus w h i l e /.$setResult($_KW_END_WHILE);./
              | e x c e p t i o n /.$setResult($_KW_EXCEPTION);./
              | c o n s t a n t /.$setResult($_KW_CONSTANT);./
              | e v a l u a t e /.$setResult($_KW_EVALUATE);./
              | f u n c t i o n /.$setResult($_KW_FUNCTION);./
              | i n s t a n c e /.$setResult($_KW_INSTANCE);./
              | p r o p e r t y /.$setResult($_KW_PROPERTY);./
              | r e a d o n l y /.$setResult($_KW_READONLY);./
              | d e c l a r e /.$setResult($_KW_DECLARE);./
              | e n d Minus f o r /.$setResult($_KW_END_FOR);./
              | e n d Minus g e t /.$setResult($_KW_END_GET);./
              | e n d Minus s e t /.$setResult($_KW_END_SET);./
              | e n d Minus t r y /.$setResult($_KW_END_TRY);./
              | p r i v a t e /.$setResult($_KW_PRIVATE);./
              | r e t u r n s /.$setResult($_KW_RETURNS);./
              | w a r n i n g /.$setResult($_KW_WARNING);./
              | c r e a t e /.$setResult($_KW_CREATE);./
              | e n d Minus i f /.$setResult($_KW_END_IF);./
              | i m p o r t /.$setResult($_KW_IMPORT);./
              | m e t h o d /.$setResult($_KW_METHOD);./
              | r e t u r n /.$setResult($_KW_RETURN);./
              | b r e a k /.$setResult($_KW_BREAK);./
              | c a t c h /.$setResult($_KW_CATCH);./
              | c l a s s /.$setResult($_KW_CLASS);./
              | e r r o r /.$setResult($_KW_ERROR);./
              | f a l s e /.$setResult($_KW_FALSE);./
              | t h r o w /.$setResult($_KW_THROW);./
              | w h i l e /.$setResult($_KW_WHILE);./
              | e l s e /.$setResult($_KW_ELSE);./
              | e x i t /.$setResult($_KW_EXIT);./
              | s t e p /.$setResult($_KW_STEP);./
              | t h e n /.$setResult($_KW_THEN);./
              | t r u e /.$setResult($_KW_TRUE);./
              | w h e n /.$setResult($_KW_WHEN);./
              | a n d /.$setResult($_KW_AND);./
              | f o r /.$setResult($_KW_FOR);./
              | g e t /.$setResult($_KW_GET);./
              | n o t /.$setResult($_KW_NOT);./
              | s e t /.$setResult($_KW_SET);./
              | t r y /.$setResult($_KW_TRY);./
              | r e m /.$setResult($_KW_REM);./
              | a s /.$setResult($_KW_AS);./
              | i f /.$setResult($_KW_IF);./
              | o f /.$setResult($_KW_OF);./
              | o r /.$setResult($_KW_OR);./
              | t o /.$setResult($_KW_TO);./
%End
