-- Keyword filter for Eiffel (aligned to parser terminal names)
%options package=lpg.grammars.eiffel
%options template=KeywordTemplateF.gi
%options fp=EiffelKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ACROSS
    AGENT
    ALIAS
    ALL
    AND
    AS
    ASSIGN
    ATTACHED
    ATTRIBUTE
    BANG
    Basic_manifest_string
    CARET
    CHECK
    CLASS
    CONVERT
    CREATE
    CURRENT
    DEBUG
    DEFERRED
    DETACHABLE
    DO
    DOLLAR
    DOTDOT
    ELSE
    ELSEIF
    END
    ENSURE
    EXPANDED
    EXPORT
    EXTERNAL
    FALSE
    FEATURE
    FROM
    FROZEN
    FreeOperator
    IF
    IMPLIES
    INHERIT
    INSPECT
    INVARIANT
    Identifier
    Integer
    Integer_interval
    LIKE
    LOCAL
    LOOP
    LSHIFT
    NOT
    NOTE
    OBSOLETE
    OLD
    ONCE
    ONLY
    OR
    PRECURSOR
    REDEFINE
    REFERENCE
    RENAME
    REQUIRE
    RESCUE
    RESULT
    RETRY
    RSHIFT
    Real
    SELECT
    SEPARATE
    SLASHSLASH
    SOME
    THEN
    TILDE
    TRUE
    UNDEFINE
    UNIQUE
    UNTIL
    VARIANT
    VOID
    Verbatim_string
    WHEN
    XOR
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= b a s i c m a n i f e s t s t r i n g /.$setResult($_Basic_manifest_string);./
    Keyword ::= i n t e g e r i n t e r v a l /.$setResult($_Integer_interval);./
    Keyword ::= v e r b a t i m s t r i n g /.$setResult($_Verbatim_string);./
    Keyword ::= f r e e o p e r a t o r /.$setResult($_FreeOperator);./
    Keyword ::= d e t a c h a b l e /.$setResult($_DETACHABLE);./
    Keyword ::= i d e n t i f i e r /.$setResult($_Identifier);./
    Keyword ::= s l a s h s l a s h /.$setResult($_SLASHSLASH);./
    Keyword ::= a t t r i b u t e /.$setResult($_ATTRIBUTE);./
    Keyword ::= i n v a r i a n t /.$setResult($_INVARIANT);./
    Keyword ::= p r e c u r s o r /.$setResult($_PRECURSOR);./
    Keyword ::= r e f e r e n c e /.$setResult($_REFERENCE);./
    Keyword ::= a t t a c h e d /.$setResult($_ATTACHED);./
    Keyword ::= d e f e r r e d /.$setResult($_DEFERRED);./
    Keyword ::= e x p a n d e d /.$setResult($_EXPANDED);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= o b s o l e t e /.$setResult($_OBSOLETE);./
    Keyword ::= r e d e f i n e /.$setResult($_REDEFINE);./
    Keyword ::= s e p a r a t e /.$setResult($_SEPARATE);./
    Keyword ::= u n d e f i n e /.$setResult($_UNDEFINE);./
    Keyword ::= c o n v e r t /.$setResult($_CONVERT);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT);./
    Keyword ::= f e a t u r e /.$setResult($_FEATURE);./
    Keyword ::= i m p l i e s /.$setResult($_IMPLIES);./
    Keyword ::= i n h e r i t /.$setResult($_INHERIT);./
    Keyword ::= i n s p e c t /.$setResult($_INSPECT);./
    Keyword ::= i n t e g e r /.$setResult($_Integer);./
    Keyword ::= r e q u i r e /.$setResult($_REQUIRE);./
    Keyword ::= v a r i a n t /.$setResult($_VARIANT);./
    Keyword ::= a c r o s s /.$setResult($_ACROSS);./
    Keyword ::= a s s i g n /.$setResult($_ASSIGN);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= d o l l a r /.$setResult($_DOLLAR);./
    Keyword ::= d o t d o t /.$setResult($_DOTDOT);./
    Keyword ::= e l s e i f /.$setResult($_ELSEIF);./
    Keyword ::= e n s u r e /.$setResult($_ENSURE);./
    Keyword ::= e x p o r t /.$setResult($_EXPORT);./
    Keyword ::= f r o z e n /.$setResult($_FROZEN);./
    Keyword ::= l s h i f t /.$setResult($_LSHIFT);./
    Keyword ::= r e n a m e /.$setResult($_RENAME);./
    Keyword ::= r e s c u e /.$setResult($_RESCUE);./
    Keyword ::= r e s u l t /.$setResult($_RESULT);./
    Keyword ::= r s h i f t /.$setResult($_RSHIFT);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE);./
    Keyword ::= a g e n t /.$setResult($_AGENT);./
    Keyword ::= a l i a s /.$setResult($_ALIAS);./
    Keyword ::= c a r e t /.$setResult($_CARET);./
    Keyword ::= c h e c k /.$setResult($_CHECK);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= d e b u g /.$setResult($_DEBUG);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= l o c a l /.$setResult($_LOCAL);./
    Keyword ::= r e t r y /.$setResult($_RETRY);./
    Keyword ::= t i l d e /.$setResult($_TILDE);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= b a n g /.$setResult($_BANG);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= n o t e /.$setResult($_NOTE);./
    Keyword ::= o n c e /.$setResult($_ONCE);./
    Keyword ::= o n l y /.$setResult($_ONLY);./
    Keyword ::= r e a l /.$setResult($_Real);./
    Keyword ::= s o m e /.$setResult($_SOME);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= v o i d /.$setResult($_VOID);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= o l d /.$setResult($_OLD);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= o r /.$setResult($_OR);./
%End
