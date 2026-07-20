-- Keyword filter for Less (aligned to parser terminal names)
%options package=lpg.grammars.less
%options template=KeywordTemplateF.gi
%options fp=LessKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    AND
    AT
    BlockEnd
    BlockStart
    COLONCOLON
    COLOR
    CSS
    DIV
    Ellipsis
    HASH
    IMPORTANT
    INLINE
    Identifier
    IdentifierAfter
    InterpolationStart
    InterpolationStartAfter
    LBRACK
    LESS
    MULTIPLE
    NOT
    Number
    ONCE
    PARENTREF
    PERC
    RBRACK
    REFERENCE
    TIL
    TIMES
    Unit
    Url
    UrlEnd
    UrlStart
    WHEN
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= i n t e r p o l a t i o n s t a r t a f t e r /.$setResult($_InterpolationStartAfter);./
    Keyword ::= i n t e r p o l a t i o n s t a r t /.$setResult($_InterpolationStart);./
    Keyword ::= i d e n t i f i e r a f t e r /.$setResult($_IdentifierAfter);./
    Keyword ::= b l o c k s t a r t /.$setResult($_BlockStart);./
    Keyword ::= c o l o n c o l o n /.$setResult($_COLONCOLON);./
    Keyword ::= i d e n t i f i e r /.$setResult($_Identifier);./
    Keyword ::= i m p o r t a n t /.$setResult($_IMPORTANT);./
    Keyword ::= p a r e n t r e f /.$setResult($_PARENTREF);./
    Keyword ::= r e f e r e n c e /.$setResult($_REFERENCE);./
    Keyword ::= b l o c k e n d /.$setResult($_BlockEnd);./
    Keyword ::= e l l i p s i s /.$setResult($_Ellipsis);./
    Keyword ::= m u l t i p l e /.$setResult($_MULTIPLE);./
    Keyword ::= u r l s t a r t /.$setResult($_UrlStart);./
    Keyword ::= i n l i n e /.$setResult($_INLINE);./
    Keyword ::= l b r a c k /.$setResult($_LBRACK);./
    Keyword ::= n u m b e r /.$setResult($_Number);./
    Keyword ::= r b r a c k /.$setResult($_RBRACK);./
    Keyword ::= u r l e n d /.$setResult($_UrlEnd);./
    Keyword ::= c o l o r /.$setResult($_COLOR);./
    Keyword ::= t i m e s /.$setResult($_TIMES);./
    Keyword ::= h a s h /.$setResult($_HASH);./
    Keyword ::= l e s s /.$setResult($_LESS);./
    Keyword ::= o n c e /.$setResult($_ONCE);./
    Keyword ::= p e r c /.$setResult($_PERC);./
    Keyword ::= u n i t /.$setResult($_Unit);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= c s s /.$setResult($_CSS);./
    Keyword ::= d i v /.$setResult($_DIV);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= t i l /.$setResult($_TIL);./
    Keyword ::= u r l /.$setResult($_Url);./
    Keyword ::= a t /.$setResult($_AT);./
%End
