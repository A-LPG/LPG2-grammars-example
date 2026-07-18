-- Keyword filter for Cpp (aligned to parser terminal names)
%options package=lpg.grammars.cpp
%options template=KeywordTemplateF.gi
%options fp=CppKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ALIGNAS_
    ALIGNOF_
    ANDAND
    ARROWSTAR
    ASM_
    AUTO_
    BANG
    BOOL_
    BREAK_
    CARET
    CASE_
    CATCH_
    CHAR_
    CLASS_
    COLONCOLON
    CONSTEXPR_
    CONST_
    CONTINUE_
    DECLTYPE_
    DEFAULT_
    DELETE_
    DOTSTAR
    DOUBLE_
    DO_
    ELSE_
    ENUM_
    EXPLICIT_
    EXTERN_
    FINAL_
    FLOAT_
    FOR_
    FRIEND_
    GOTO_
    GreaterEqual
    IF_
    INLINE_
    INT_
    LONG_
    LessEqual
    MINUSMINUS
    MUTABLE_
    NAMESPACE_
    NEW_
    NOEXCEPT_
    OPERATOR_
    OROR
    OVERRIDE_
    PERCENT
    PIPE
    PLUSPLUS
    PRIVATE_
    PROTECTED_
    PUBLIC_
    REGISTER_
    RETURN_
    SHORT_
    SIGNED_
    SIZEOF_
    STATIC_
    STRING
    STRUCT_
    SWITCH_
    TEMPLATE_
    THIS_
    THROW_
    TILDE
    TRY_
    TYPEDEF_
    TYPEID_
    TYPENAME_
    Thread_local
    UNION_
    UNSIGNED_
    USING_
    VIRTUAL_
    VOID_
    VOLATILE_
    WHILE_
    Wchar
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= g r e a t e r e q u a l /.$setResult($_GreaterEqual);./
    Keyword ::= t h r e a d l o c a l /.$setResult($_Thread_local);./
    Keyword ::= c o l o n c o l o n /.$setResult($_COLONCOLON);./
    Keyword ::= m i n u s m i n u s /.$setResult($_MINUSMINUS);./
    Keyword ::= a r r o w s t a r /.$setResult($_ARROWSTAR);./
    Keyword ::= c o n s t e x p r /.$setResult($_CONSTEXPR_);./
    Keyword ::= l e s s e q u a l /.$setResult($_LessEqual);./
    Keyword ::= n a m e s p a c e /.$setResult($_NAMESPACE_);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED_);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE_);./
    Keyword ::= d e c l t y p e /.$setResult($_DECLTYPE_);./
    Keyword ::= e x p l i c i t /.$setResult($_EXPLICIT_);./
    Keyword ::= n o e x c e p t /.$setResult($_NOEXCEPT_);./
    Keyword ::= o p e r a t o r /.$setResult($_OPERATOR_);./
    Keyword ::= o v e r r i d e /.$setResult($_OVERRIDE_);./
    Keyword ::= p l u s p l u s /.$setResult($_PLUSPLUS);./
    Keyword ::= r e g i s t e r /.$setResult($_REGISTER_);./
    Keyword ::= t e m p l a t e /.$setResult($_TEMPLATE_);./
    Keyword ::= t y p e n a m e /.$setResult($_TYPENAME_);./
    Keyword ::= u n s i g n e d /.$setResult($_UNSIGNED_);./
    Keyword ::= v o l a t i l e /.$setResult($_VOLATILE_);./
    Keyword ::= a l i g n a s /.$setResult($_ALIGNAS_);./
    Keyword ::= a l i g n o f /.$setResult($_ALIGNOF_);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT_);./
    Keyword ::= d o t s t a r /.$setResult($_DOTSTAR);./
    Keyword ::= m u t a b l e /.$setResult($_MUTABLE_);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE_);./
    Keyword ::= t y p e d e f /.$setResult($_TYPEDEF_);./
    Keyword ::= v i r t u a l /.$setResult($_VIRTUAL_);./
    Keyword ::= a n d a n d /.$setResult($_ANDAND);./
    Keyword ::= d e l e t e /.$setResult($_DELETE_);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE_);./
    Keyword ::= e x t e r n /.$setResult($_EXTERN_);./
    Keyword ::= f r i e n d /.$setResult($_FRIEND_);./
    Keyword ::= i n l i n e /.$setResult($_INLINE_);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC_);./
    Keyword ::= r e t u r n /.$setResult($_RETURN_);./
    Keyword ::= s i g n e d /.$setResult($_SIGNED_);./
    Keyword ::= s i z e o f /.$setResult($_SIZEOF_);./
    Keyword ::= s t a t i c /.$setResult($_STATIC_);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= s t r u c t /.$setResult($_STRUCT_);./
    Keyword ::= s w i t c h /.$setResult($_SWITCH_);./
    Keyword ::= t y p e i d /.$setResult($_TYPEID_);./
    Keyword ::= b r e a k /.$setResult($_BREAK_);./
    Keyword ::= c a r e t /.$setResult($_CARET);./
    Keyword ::= c a t c h /.$setResult($_CATCH_);./
    Keyword ::= c l a s s /.$setResult($_CLASS_);./
    Keyword ::= c o n s t /.$setResult($_CONST_);./
    Keyword ::= f i n a l /.$setResult($_FINAL_);./
    Keyword ::= f l o a t /.$setResult($_FLOAT_);./
    Keyword ::= s h o r t /.$setResult($_SHORT_);./
    Keyword ::= t h r o w /.$setResult($_THROW_);./
    Keyword ::= t i l d e /.$setResult($_TILDE);./
    Keyword ::= u n i o n /.$setResult($_UNION_);./
    Keyword ::= u s i n g /.$setResult($_USING_);./
    Keyword ::= w c h a r /.$setResult($_Wchar);./
    Keyword ::= w h i l e /.$setResult($_WHILE_);./
    Keyword ::= a u t o /.$setResult($_AUTO_);./
    Keyword ::= b a n g /.$setResult($_BANG);./
    Keyword ::= b o o l /.$setResult($_BOOL_);./
    Keyword ::= c a s e /.$setResult($_CASE_);./
    Keyword ::= c h a r /.$setResult($_CHAR_);./
    Keyword ::= e l s e /.$setResult($_ELSE_);./
    Keyword ::= e n u m /.$setResult($_ENUM_);./
    Keyword ::= g o t o /.$setResult($_GOTO_);./
    Keyword ::= l o n g /.$setResult($_LONG_);./
    Keyword ::= o r o r /.$setResult($_OROR);./
    Keyword ::= p i p e /.$setResult($_PIPE);./
    Keyword ::= t h i s /.$setResult($_THIS_);./
    Keyword ::= v o i d /.$setResult($_VOID_);./
    Keyword ::= a s m /.$setResult($_ASM_);./
    Keyword ::= f o r /.$setResult($_FOR_);./
    Keyword ::= i n t /.$setResult($_INT_);./
    Keyword ::= n e w /.$setResult($_NEW_);./
    Keyword ::= t r y /.$setResult($_TRY_);./
    Keyword ::= d o /.$setResult($_DO_);./
    Keyword ::= i f /.$setResult($_IF_);./
%End
