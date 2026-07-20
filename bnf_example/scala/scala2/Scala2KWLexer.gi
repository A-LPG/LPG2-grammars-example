-- Keyword filter for curated Scala2 subset
%options package=lpg.grammars.scala.scala2
%options template=KeywordTemplateF.gi
%options fp=Scala2KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    OBJECT
    CLASS
    DEF
    VAL
    VAR
    IF
    ELSE
    NEW
    TRY
    CATCH
    FINALLY
    RETURN
    WHILE
    DO
    MATCH
    CASE
    TRAIT
    TYPE
    EXTENDS
    OVERRIDE
    IMPORT
    PACKAGE
    THIS
    SUPER
    THROW
    NULL_LITERAL
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= o v e r r i d e /.$setResult($_OVERRIDE);./
              | p a c k a g e /.$setResult($_PACKAGE);./
              | e x t e n d s /.$setResult($_EXTENDS);./
              | f i n a l l y /.$setResult($_FINALLY);./
              | i m p o r t /.$setResult($_IMPORT);./
              | r e t u r n /.$setResult($_RETURN);./
              | o b j e c t /.$setResult($_OBJECT);./
              | c a t c h /.$setResult($_CATCH);./
              | t h r o w /.$setResult($_THROW);./
              | w h i l e /.$setResult($_WHILE);./
              | t r a i t /.$setResult($_TRAIT);./
              | m a t c h /.$setResult($_MATCH);./
              | c l a s s /.$setResult($_CLASS);./
              | s u p e r /.$setResult($_SUPER);./
              | n u l l /.$setResult($_NULL_LITERAL);./
              | e l s e /.$setResult($_ELSE);./
              | t y p e /.$setResult($_TYPE);./
              | c a s e /.$setResult($_CASE);./
              | t h i s /.$setResult($_THIS);./
              | t r y /.$setResult($_TRY);./
              | d e f /.$setResult($_DEF);./
              | v a l /.$setResult($_VAL);./
              | v a r /.$setResult($_VAR);./
              | n e w /.$setResult($_NEW);./
              | d o /.$setResult($_DO);./
              | i f /.$setResult($_IF);./
%End
