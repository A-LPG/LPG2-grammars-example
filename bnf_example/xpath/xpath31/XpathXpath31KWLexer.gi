-- Keyword filter for XpathXpath31 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.xpath.xpath31
%options template=KeywordTemplateF.gi
%options fp=XpathXpath31KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    KW_ANCESTOR
    KW_ANCESTOR_OR_SELF
    KW_AND
    KW_ARRAY
    KW_AS
    KW_ATTRIBUTE
    KW_CAST
    KW_CASTABLE
    KW_CHILD
    KW_COMMENT
    KW_DESCENDANT
    KW_DESCENDANT_OR_SELF
    KW_DIV
    KW_DOCUMENT_NODE
    KW_ELEMENT
    KW_ELSE
    KW_EMPTY_SEQUENCE
    KW_EQ
    KW_EVERY
    KW_EXCEPT
    KW_FOLLOWING
    KW_FOLLOWING_SIBLING
    KW_FOR
    KW_FUNCTION
    KW_GE
    KW_GT
    KW_IDIV
    KW_IF
    KW_IN
    KW_INSTANCE
    KW_INTERSECT
    KW_IS
    KW_ITEM
    KW_LE
    KW_LET
    KW_LT
    KW_MAP
    KW_MOD
    KW_NAMESPACE
    KW_NAMESPACE_NODE
    KW_NE
    KW_NODE
    KW_OF
    KW_OR
    KW_PARENT
    KW_PRECEDING
    KW_PRECEDING_SIBLING
    KW_PROCESSING_INSTRUCTION
    KW_RETURN
    KW_SATISFIES
    KW_SCHEMA_ATTRIBUTE
    KW_SCHEMA_ELEMENT
    KW_SELF
    KW_SOME
    KW_TEXT
    KW_THEN
    KW_TO
    KW_TREAT
    KW_UNION
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= p r o c e s s i n g Minus i n s t r u c t i o n /.$setResult($_KW_PROCESSING_INSTRUCTION);./
    Keyword ::= d e s c e n d a n t Minus o r Minus s e l f /.$setResult($_KW_DESCENDANT_OR_SELF);./
    Keyword ::= f o l l o w i n g Minus s i b l i n g /.$setResult($_KW_FOLLOWING_SIBLING);./
    Keyword ::= p r e c e d i n g Minus s i b l i n g /.$setResult($_KW_PRECEDING_SIBLING);./
    Keyword ::= a n c e s t o r Minus o r Minus s e l f /.$setResult($_KW_ANCESTOR_OR_SELF);./
    Keyword ::= s c h e m a Minus a t t r i b u t e /.$setResult($_KW_SCHEMA_ATTRIBUTE);./
    Keyword ::= e m p t y Minus s e q u e n c e /.$setResult($_KW_EMPTY_SEQUENCE);./
    Keyword ::= n a m e s p a c e Minus n o d e /.$setResult($_KW_NAMESPACE_NODE);./
    Keyword ::= s c h e m a Minus e l e m e n t /.$setResult($_KW_SCHEMA_ELEMENT);./
    Keyword ::= d o c u m e n t Minus n o d e /.$setResult($_KW_DOCUMENT_NODE);./
    Keyword ::= d e s c e n d a n t /.$setResult($_KW_DESCENDANT);./
    Keyword ::= a t t r i b u t e /.$setResult($_KW_ATTRIBUTE);./
    Keyword ::= f o l l o w i n g /.$setResult($_KW_FOLLOWING);./
    Keyword ::= i n t e r s e c t /.$setResult($_KW_INTERSECT);./
    Keyword ::= n a m e s p a c e /.$setResult($_KW_NAMESPACE);./
    Keyword ::= p r e c e d i n g /.$setResult($_KW_PRECEDING);./
    Keyword ::= s a t i s f i e s /.$setResult($_KW_SATISFIES);./
    Keyword ::= a n c e s t o r /.$setResult($_KW_ANCESTOR);./
    Keyword ::= c a s t a b l e /.$setResult($_KW_CASTABLE);./
    Keyword ::= f u n c t i o n /.$setResult($_KW_FUNCTION);./
    Keyword ::= i n s t a n c e /.$setResult($_KW_INSTANCE);./
    Keyword ::= c o m m e n t /.$setResult($_KW_COMMENT);./
    Keyword ::= e l e m e n t /.$setResult($_KW_ELEMENT);./
    Keyword ::= e x c e p t /.$setResult($_KW_EXCEPT);./
    Keyword ::= p a r e n t /.$setResult($_KW_PARENT);./
    Keyword ::= r e t u r n /.$setResult($_KW_RETURN);./
    Keyword ::= a r r a y /.$setResult($_KW_ARRAY);./
    Keyword ::= c h i l d /.$setResult($_KW_CHILD);./
    Keyword ::= e v e r y /.$setResult($_KW_EVERY);./
    Keyword ::= t r e a t /.$setResult($_KW_TREAT);./
    Keyword ::= u n i o n /.$setResult($_KW_UNION);./
    Keyword ::= c a s t /.$setResult($_KW_CAST);./
    Keyword ::= e l s e /.$setResult($_KW_ELSE);./
    Keyword ::= i d i v /.$setResult($_KW_IDIV);./
    Keyword ::= i t e m /.$setResult($_KW_ITEM);./
    Keyword ::= n o d e /.$setResult($_KW_NODE);./
    Keyword ::= s e l f /.$setResult($_KW_SELF);./
    Keyword ::= s o m e /.$setResult($_KW_SOME);./
    Keyword ::= t e x t /.$setResult($_KW_TEXT);./
    Keyword ::= t h e n /.$setResult($_KW_THEN);./
    Keyword ::= a n d /.$setResult($_KW_AND);./
    Keyword ::= d i v /.$setResult($_KW_DIV);./
    Keyword ::= f o r /.$setResult($_KW_FOR);./
    Keyword ::= l e t /.$setResult($_KW_LET);./
    Keyword ::= m a p /.$setResult($_KW_MAP);./
    Keyword ::= m o d /.$setResult($_KW_MOD);./
    Keyword ::= a s /.$setResult($_KW_AS);./
    Keyword ::= e q /.$setResult($_KW_EQ);./
    Keyword ::= g e /.$setResult($_KW_GE);./
    Keyword ::= g t /.$setResult($_KW_GT);./
    Keyword ::= i f /.$setResult($_KW_IF);./
    Keyword ::= i n /.$setResult($_KW_IN);./
    Keyword ::= i s /.$setResult($_KW_IS);./
    Keyword ::= l e /.$setResult($_KW_LE);./
    Keyword ::= l t /.$setResult($_KW_LT);./
    Keyword ::= n e /.$setResult($_KW_NE);./
    Keyword ::= o f /.$setResult($_KW_OF);./
    Keyword ::= o r /.$setResult($_KW_OR);./
    Keyword ::= t o /.$setResult($_KW_TO);./
%End
