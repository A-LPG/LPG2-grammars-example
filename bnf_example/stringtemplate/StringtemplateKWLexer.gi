-- Keyword filter for Stringtemplate (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.stringtemplate
%options template=KeywordTemplateF.gi
%options fp=StringtemplateKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ANCHOR
    DEFAULT
    DELIMITERS
    ELSE
    ELSEIF
    ENDIF
    FIRST
    GROUP
    IF
    IMPORT
    KEY
    LAST
    LENGTH
    REST
    REVERSE
    SEPARATOR
    STRIP
    STRLEN
    SUPER
    TRIM
    TRUNC
    VALUE
    WRAP
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= d e l i m i t e r s /.$setResult($_DELIMITERS);./
    Keyword ::= s e p a r a t o r /.$setResult($_SEPARATOR);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= r e v e r s e /.$setResult($_REVERSE);./
    Keyword ::= a n c h o r /.$setResult($_ANCHOR);./
    Keyword ::= e l s e i f /.$setResult($_ELSEIF);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= l e n g t h /.$setResult($_LENGTH);./
    Keyword ::= s t r l e n /.$setResult($_STRLEN);./
    Keyword ::= e n d i f /.$setResult($_ENDIF);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= s t r i p /.$setResult($_STRIP);./
    Keyword ::= s u p e r /.$setResult($_SUPER);./
    Keyword ::= t r u n c /.$setResult($_TRUNC);./
    Keyword ::= v a l u e /.$setResult($_VALUE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= r e s t /.$setResult($_REST);./
    Keyword ::= t r i m /.$setResult($_TRIM);./
    Keyword ::= w r a p /.$setResult($_WRAP);./
    Keyword ::= k e y /.$setResult($_KEY);./
    Keyword ::= i f /.$setResult($_IF);./
%End
