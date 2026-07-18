-- Keyword filter for Zig (aligned to parser terminal names)
%options package=lpg.grammars.zig
%options template=KeywordTemplateF.gi
%options fp=ZigKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ADDRSPACE
    ALIGN
    AND
    ANYFRAME
    ANYTYPE
    ASM
    BANG
    BREAK
    CALLCONV
    CARET
    CATCH
    COMPTIME
    CONST
    CONTINUE
    Container_doc_comment
    DEFER
    DOTDOT
    DOTSTAR
    Doc_comment
    ELSE
    ENUM
    ERRDEFER
    ERROR
    EXPORT
    EXTERN
    FATARROW
    FN
    FOR
    IF
    INLINE
    LETTERC
    LINKSECTION
    LSHIFT
    NOALIAS
    NOINLINE
    NOSUSPEND
    OPAQUE
    OR
    ORELSE
    OROR
    PACKED
    PERCENT
    PIPE
    PLUSPLUS
    PUB
    RESUME
    RETURN
    RSHIFT
    STARSTAR
    STRING
    STRUCT
    SUSPEND
    SWITCH
    TEST
    THREADLOCAL
    TILDE
    TRY
    UNION
    UNREACHABLE
    VAR
    VOLATILE
    WHILE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= c o n t a i n e r d o c c o m m e n t /.$setResult($_Container_doc_comment);./
    Keyword ::= l i n k s e c t i o n /.$setResult($_LINKSECTION);./
    Keyword ::= t h r e a d l o c a l /.$setResult($_THREADLOCAL);./
    Keyword ::= u n r e a c h a b l e /.$setResult($_UNREACHABLE);./
    Keyword ::= d o c c o m m e n t /.$setResult($_Doc_comment);./
    Keyword ::= a d d r s p a c e /.$setResult($_ADDRSPACE);./
    Keyword ::= n o s u s p e n d /.$setResult($_NOSUSPEND);./
    Keyword ::= a n y f r a m e /.$setResult($_ANYFRAME);./
    Keyword ::= c a l l c o n v /.$setResult($_CALLCONV);./
    Keyword ::= c o m p t i m e /.$setResult($_COMPTIME);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= e r r d e f e r /.$setResult($_ERRDEFER);./
    Keyword ::= f a t a r r o w /.$setResult($_FATARROW);./
    Keyword ::= n o i n l i n e /.$setResult($_NOINLINE);./
    Keyword ::= p l u s p l u s /.$setResult($_PLUSPLUS);./
    Keyword ::= s t a r s t a r /.$setResult($_STARSTAR);./
    Keyword ::= v o l a t i l e /.$setResult($_VOLATILE);./
    Keyword ::= a n y t y p e /.$setResult($_ANYTYPE);./
    Keyword ::= d o t s t a r /.$setResult($_DOTSTAR);./
    Keyword ::= l e t t e r c /.$setResult($_LETTERC);./
    Keyword ::= n o a l i a s /.$setResult($_NOALIAS);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= s u s p e n d /.$setResult($_SUSPEND);./
    Keyword ::= d o t d o t /.$setResult($_DOTDOT);./
    Keyword ::= e x p o r t /.$setResult($_EXPORT);./
    Keyword ::= e x t e r n /.$setResult($_EXTERN);./
    Keyword ::= i n l i n e /.$setResult($_INLINE);./
    Keyword ::= l s h i f t /.$setResult($_LSHIFT);./
    Keyword ::= o p a q u e /.$setResult($_OPAQUE);./
    Keyword ::= o r e l s e /.$setResult($_ORELSE);./
    Keyword ::= p a c k e d /.$setResult($_PACKED);./
    Keyword ::= r e s u m e /.$setResult($_RESUME);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= r s h i f t /.$setResult($_RSHIFT);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= s t r u c t /.$setResult($_STRUCT);./
    Keyword ::= s w i t c h /.$setResult($_SWITCH);./
    Keyword ::= a l i g n /.$setResult($_ALIGN);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c a r e t /.$setResult($_CARET);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= c o n s t /.$setResult($_CONST);./
    Keyword ::= d e f e r /.$setResult($_DEFER);./
    Keyword ::= e r r o r /.$setResult($_ERROR);./
    Keyword ::= t i l d e /.$setResult($_TILDE);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= b a n g /.$setResult($_BANG);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= o r o r /.$setResult($_OROR);./
    Keyword ::= p i p e /.$setResult($_PIPE);./
    Keyword ::= t e s t /.$setResult($_TEST);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a s m /.$setResult($_ASM);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= p u b /.$setResult($_PUB);./
    Keyword ::= t r y /.$setResult($_TRY);./
    Keyword ::= v a r /.$setResult($_VAR);./
    Keyword ::= f n /.$setResult($_FN);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= o r /.$setResult($_OR);./
%End
