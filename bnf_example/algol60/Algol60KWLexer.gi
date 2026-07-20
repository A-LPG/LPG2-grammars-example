-- Keyword filter for Algol60 (aligned to parser terminal names)
%options package=lpg.grammars.algol60
%options template=KeywordTemplateF.gi
%options fp=Algol60KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    And_
    Array_
    Assign_
    Begin_
    Boolean_
    Colon_
    Comma_
    Divide_
    Do_
    Else_
    End_
    Equiv_
    Exp_
    For_
    Goto_
    Identifier
    If_
    Includes_
    Integer_
    LP_
    Label_
    Lb_
    Logical_value
    Minus_
    Mult_
    Not_
    Or_
    Own_
    Plus_
    Procedure_
    Rb_
    Real_
    Relational_operator
    Rp_
    Semi_
    Step_
    String
    Switch_
    Then_
    Unsigned_integer
    Unsigned_number
    Until_
    Value_
    While_
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= r e l a t i o n a l o p e r a t o r /.$setResult($_Relational_operator);./
    Keyword ::= u n s i g n e d i n t e g e r /.$setResult($_Unsigned_integer);./
    Keyword ::= u n s i g n e d n u m b e r /.$setResult($_Unsigned_number);./
    Keyword ::= l o g i c a l v a l u e /.$setResult($_Logical_value);./
    Keyword ::= i d e n t i f i e r /.$setResult($_Identifier);./
    Keyword ::= p r o c e d u r e /.$setResult($_Procedure_);./
    Keyword ::= i n c l u d e s /.$setResult($_Includes_);./
    Keyword ::= b o o l e a n /.$setResult($_Boolean_);./
    Keyword ::= i n t e g e r /.$setResult($_Integer_);./
    Keyword ::= a s s i g n /.$setResult($_Assign_);./
    Keyword ::= d i v i d e /.$setResult($_Divide_);./
    Keyword ::= s t r i n g /.$setResult($_String);./
    Keyword ::= s w i t c h /.$setResult($_Switch_);./
    Keyword ::= a r r a y /.$setResult($_Array_);./
    Keyword ::= b e g i n /.$setResult($_Begin_);./
    Keyword ::= c o l o n /.$setResult($_Colon_);./
    Keyword ::= c o m m a /.$setResult($_Comma_);./
    Keyword ::= e q u i v /.$setResult($_Equiv_);./
    Keyword ::= l a b e l /.$setResult($_Label_);./
    Keyword ::= m i n u s /.$setResult($_Minus_);./
    Keyword ::= u n t i l /.$setResult($_Until_);./
    Keyword ::= v a l u e /.$setResult($_Value_);./
    Keyword ::= w h i l e /.$setResult($_While_);./
    Keyword ::= e l s e /.$setResult($_Else_);./
    Keyword ::= g o t o /.$setResult($_Goto_);./
    Keyword ::= m u l t /.$setResult($_Mult_);./
    Keyword ::= p l u s /.$setResult($_Plus_);./
    Keyword ::= r e a l /.$setResult($_Real_);./
    Keyword ::= s e m i /.$setResult($_Semi_);./
    Keyword ::= s t e p /.$setResult($_Step_);./
    Keyword ::= t h e n /.$setResult($_Then_);./
    Keyword ::= a n d /.$setResult($_And_);./
    Keyword ::= e n d /.$setResult($_End_);./
    Keyword ::= e x p /.$setResult($_Exp_);./
    Keyword ::= f o r /.$setResult($_For_);./
    Keyword ::= n o t /.$setResult($_Not_);./
    Keyword ::= o w n /.$setResult($_Own_);./
    Keyword ::= d o /.$setResult($_Do_);./
    Keyword ::= i f /.$setResult($_If_);./
    Keyword ::= l b /.$setResult($_Lb_);./
    Keyword ::= l p /.$setResult($_LP_);./
    Keyword ::= o r /.$setResult($_Or_);./
    Keyword ::= r b /.$setResult($_Rb_);./
    Keyword ::= r p /.$setResult($_Rp_);./
%End
