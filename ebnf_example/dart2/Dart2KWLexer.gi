-- Keyword filter for Dart2 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.dart2
%options template=KeywordTemplateF.gi
%options fp=Dart2KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABSTRACT_
    ASSERT_
    ASYNC_
    AS_
    AWAIT_
    BREAK_
    CASE_
    CATCH_
    CLASS_
    CONST_
    CONTINUE_
    COVARIANT_
    DEFAULT_
    DEFERRED_
    DO_
    DYNAMIC_
    ELSE_
    ENUM_
    EXPORT_
    EXTENDS_
    EXTENSION_
    EXTERNAL_
    FACTORY_
    FALSE_
    FINALLY_
    FINAL_
    FOR_
    FUNCTION_
    GET_
    GTILDE_
    HIDE_
    IF_
    IMPLEMENTS_
    IMPORT_
    INTERFACE_
    IN_
    IS_
    LATE_
    LET_
    LIBRARY_
    MIXIN_
    NATIVE_
    NEW_
    NULL_
    OF_
    ON_
    OPERATOR_
    PART_
    REQUIRED_
    RETHROW_
    RETURN_
    SET_
    SHOW_
    STATIC_
    SUPER_
    SWITCH_
    SYNC_
    THIS_
    THROW_
    TRUE_
    TRY_
    TYPEDEF_
    VAR_
    VOID_
    WHILE_
    WITH_
    YIELD_
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= i m p l e m e n t s /.$setResult($_IMPLEMENTS_);./
    Keyword ::= c o v a r i a n t /.$setResult($_COVARIANT_);./
    Keyword ::= e x t e n s i o n /.$setResult($_EXTENSION_);./
    Keyword ::= i n t e r f a c e /.$setResult($_INTERFACE_);./
    Keyword ::= a b s t r a c t /.$setResult($_ABSTRACT_);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE_);./
    Keyword ::= d e f e r r e d /.$setResult($_DEFERRED_);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL_);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION_);./
    Keyword ::= o p e r a t o r /.$setResult($_OPERATOR_);./
    Keyword ::= r e q u i r e d /.$setResult($_REQUIRED_);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT_);./
    Keyword ::= d y n a m i c /.$setResult($_DYNAMIC_);./
    Keyword ::= e x t e n d s /.$setResult($_EXTENDS_);./
    Keyword ::= f a c t o r y /.$setResult($_FACTORY_);./
    Keyword ::= f i n a l l y /.$setResult($_FINALLY_);./
    Keyword ::= l i b r a r y /.$setResult($_LIBRARY_);./
    Keyword ::= r e t h r o w /.$setResult($_RETHROW_);./
    Keyword ::= t y p e d e f /.$setResult($_TYPEDEF_);./
    Keyword ::= a s s e r t /.$setResult($_ASSERT_);./
    Keyword ::= e x p o r t /.$setResult($_EXPORT_);./
    Keyword ::= g t i l d e /.$setResult($_GTILDE_);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT_);./
    Keyword ::= n a t i v e /.$setResult($_NATIVE_);./
    Keyword ::= r e t u r n /.$setResult($_RETURN_);./
    Keyword ::= s t a t i c /.$setResult($_STATIC_);./
    Keyword ::= s w i t c h /.$setResult($_SWITCH_);./
    Keyword ::= a s y n c /.$setResult($_ASYNC_);./
    Keyword ::= a w a i t /.$setResult($_AWAIT_);./
    Keyword ::= b r e a k /.$setResult($_BREAK_);./
    Keyword ::= c a t c h /.$setResult($_CATCH_);./
    Keyword ::= c l a s s /.$setResult($_CLASS_);./
    Keyword ::= c o n s t /.$setResult($_CONST_);./
    Keyword ::= f a l s e /.$setResult($_FALSE_);./
    Keyword ::= f i n a l /.$setResult($_FINAL_);./
    Keyword ::= m i x i n /.$setResult($_MIXIN_);./
    Keyword ::= s u p e r /.$setResult($_SUPER_);./
    Keyword ::= t h r o w /.$setResult($_THROW_);./
    Keyword ::= w h i l e /.$setResult($_WHILE_);./
    Keyword ::= y i e l d /.$setResult($_YIELD_);./
    Keyword ::= c a s e /.$setResult($_CASE_);./
    Keyword ::= e l s e /.$setResult($_ELSE_);./
    Keyword ::= e n u m /.$setResult($_ENUM_);./
    Keyword ::= h i d e /.$setResult($_HIDE_);./
    Keyword ::= l a t e /.$setResult($_LATE_);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= p a r t /.$setResult($_PART_);./
    Keyword ::= s h o w /.$setResult($_SHOW_);./
    Keyword ::= s y n c /.$setResult($_SYNC_);./
    Keyword ::= t h i s /.$setResult($_THIS_);./
    Keyword ::= t r u e /.$setResult($_TRUE_);./
    Keyword ::= v o i d /.$setResult($_VOID_);./
    Keyword ::= w i t h /.$setResult($_WITH_);./
    Keyword ::= f o r /.$setResult($_FOR_);./
    Keyword ::= g e t /.$setResult($_GET_);./
    Keyword ::= l e t /.$setResult($_LET_);./
    Keyword ::= n e w /.$setResult($_NEW_);./
    Keyword ::= s e t /.$setResult($_SET_);./
    Keyword ::= t r y /.$setResult($_TRY_);./
    Keyword ::= v a r /.$setResult($_VAR_);./
    Keyword ::= a s /.$setResult($_AS_);./
    Keyword ::= d o /.$setResult($_DO_);./
    Keyword ::= i f /.$setResult($_IF_);./
    Keyword ::= i n /.$setResult($_IN_);./
    Keyword ::= i s /.$setResult($_IS_);./
    Keyword ::= o f /.$setResult($_OF_);./
    Keyword ::= o n /.$setResult($_ON_);./
%End
