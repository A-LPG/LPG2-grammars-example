-- Yara keywords (case-insensitive)
%options package=lpg.grammars.yara
%options template=KeywordTemplateF.gi
%options fp=YaraKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    RULE IMPORT INCLUDE PRIVATE GLOBAL CONDITION TRUE FALSE
    META STRINGS STRINGS_
    AND OR NOT XOR
    ALL ANY OF FOR IN
    AT FILESIZE ENTRYPOINT
    CONTAINS ICASE NOCASE WIDE ASCII FULLWORD
    STARTSWITH ENDSWITH ISTARTSWITH IENDSWITH
    MATCHES INT8 INT16 INT32 UINT8 UINT16 UINT32
    DEFINED
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= r u l e /.$setResult($_RULE);./
              | i m p o r t /.$setResult($_IMPORT);./
              | i n c l u d e /.$setResult($_INCLUDE);./
              | p r i v a t e /.$setResult($_PRIVATE);./
              | g l o b a l /.$setResult($_GLOBAL);./
              | c o n d i t i o n /.$setResult($_CONDITION);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | m e t a /.$setResult($_META);./
              | s t r i n g s /.$setResult($_STRINGS);./
              | a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
              | n o t /.$setResult($_NOT);./
              | x o r /.$setResult($_XOR);./
              | a l l /.$setResult($_ALL);./
              | a n y /.$setResult($_ANY);./
              | o f /.$setResult($_OF);./
              | f o r /.$setResult($_FOR);./
              | i n /.$setResult($_IN);./
              | a t /.$setResult($_AT);./
              | f i l e s i z e /.$setResult($_FILESIZE);./
              | e n t r y p o i n t /.$setResult($_ENTRYPOINT);./
              | c o n t a i n s /.$setResult($_CONTAINS);./
              | i c a s e /.$setResult($_ICASE);./
              | n o c a s e /.$setResult($_NOCASE);./
              | w i d e /.$setResult($_WIDE);./
              | a s c i i /.$setResult($_ASCII);./
              | f u l l w o r d /.$setResult($_FULLWORD);./
              | s t a r t s w i t h /.$setResult($_STARTSWITH);./
              | e n d s w i t h /.$setResult($_ENDSWITH);./
              | i s t a r t s w i t h /.$setResult($_ISTARTSWITH);./
              | i e n d s w i t h /.$setResult($_IENDSWITH);./
              | m a t c h e s /.$setResult($_MATCHES);./
              | d e f i n e d /.$setResult($_DEFINED);./
%End
