-- Rust keyword filter (subset)
%options package=lpg.grammars.rust
%options template=KeywordTemplateF.gi
%options fp=RustKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    KW_FN
    KW_LET
    KW_MUT
    KW_IF
    KW_ELSE
    KW_RETURN
    KW_TRUE
    KW_FALSE
%End
%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= r e t u r n /.$setResult($_KW_RETURN);./
              | f a l s e /.$setResult($_KW_FALSE);./
              | t r u e /.$setResult($_KW_TRUE);./
              | e l s e /.$setResult($_KW_ELSE);./
              | l e t /.$setResult($_KW_LET);./
              | m u t /.$setResult($_KW_MUT);./
              | i f /.$setResult($_KW_IF);./
              | f n /.$setResult($_KW_FN);./
%End
