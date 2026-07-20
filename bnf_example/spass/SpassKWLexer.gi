-- Keyword filter for Spass (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.spass
%options template=KeywordTemplateF.gi
%options fp=SpassKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    AUTHOR
    AXIOMS
    And
    Author
    Axioms
    ClR
    Clause
    Cnf
    Con
    Conjectures
    Date
    Description
    DESCRIPTION
    Dnf
    EmS
    EqF
    EqR
    EQUAL
    Equal
    Equiv
    EXISTS
    Exists
    Fac
    False_
    Forall
    Formula
    FORALL
    FORMULA
    FUNCTIONS
    Freely
    Functions
    GeR
    Hypothesis
    Implied
    Implies
    Inp
    KIV
    LEM
    Logic
    MPm
    Name
    NAME
    Not
    OHy
    OPm
    OTTER
    Obv
    Or
    PROTEIN
    Predicate
    Predicates
    RRE
    Rew
    SATISFIABLE
    SATURATE
    SETHEO
    SHy
    SORTS
    SPASS
    SPm
    SSi
    STATUS
    Satisfiable
    SoR
    Sort
    Sorts
    SpL
    SpR
    Splitlevel
    Spt
    Status
    Step
    SUBSORT
    Subsort
    Ter
    True_
    URR
    UnC
    Unknown
    UNSATISFIABLE
    Unsatisfiable
    Version
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= u n s a t i s f i a b l e /.$setResult($_UNSATISFIABLE);./
    Keyword ::= c o n j e c t u r e s /.$setResult($_Conjectures);./
    Keyword ::= d e s c r i p t i o n /.$setResult($_DESCRIPTION);./
    Keyword ::= s a t i s f i a b l e /.$setResult($_SATISFIABLE);./
    Keyword ::= h y p o t h e s i s /.$setResult($_Hypothesis);./
    Keyword ::= p r e d i c a t e s /.$setResult($_Predicates);./
    Keyword ::= s p l i t l e v e l /.$setResult($_Splitlevel);./
    Keyword ::= f u n c t i o n s /.$setResult($_FUNCTIONS);./
    Keyword ::= p r e d i c a t e /.$setResult($_Predicate);./
    Keyword ::= s a t u r a t e /.$setResult($_SATURATE);./
    Keyword ::= f o r m u l a /.$setResult($_FORMULA);./
    Keyword ::= i m p l i e d /.$setResult($_Implied);./
    Keyword ::= i m p l i e s /.$setResult($_Implies);./
    Keyword ::= p r o t e i n /.$setResult($_PROTEIN);./
    Keyword ::= s u b s o r t /.$setResult($_SUBSORT);./
    Keyword ::= u n k n o w n /.$setResult($_Unknown);./
    Keyword ::= v e r s i o n /.$setResult($_Version);./
    Keyword ::= a u t h o r /.$setResult($_AUTHOR);./
    Keyword ::= a x i o m s /.$setResult($_AXIOMS);./
    Keyword ::= c l a u s e /.$setResult($_Clause);./
    Keyword ::= e x i s t s /.$setResult($_Exists);./
    Keyword ::= f o r a l l /.$setResult($_FORALL);./
    Keyword ::= f r e e l y /.$setResult($_Freely);./
    Keyword ::= s e t h e o /.$setResult($_SETHEO);./
    Keyword ::= s t a t u s /.$setResult($_STATUS);./
    Keyword ::= e q u a l /.$setResult($_EQUAL);./
    Keyword ::= e q u i v /.$setResult($_Equiv);./
    Keyword ::= f a l s e /.$setResult($_False_);./
    Keyword ::= l o g i c /.$setResult($_Logic);./
    Keyword ::= o t t e r /.$setResult($_OTTER);./
    Keyword ::= s o r t s /.$setResult($_SORTS);./
    Keyword ::= s p a s s /.$setResult($_SPASS);./
    Keyword ::= d a t e /.$setResult($_Date);./
    Keyword ::= n a m e /.$setResult($_NAME);./
    Keyword ::= s o r t /.$setResult($_Sort);./
    Keyword ::= s t e p /.$setResult($_Step);./
    Keyword ::= t r u e /.$setResult($_True_);./
    Keyword ::= a n d /.$setResult($_And);./
    Keyword ::= c l r /.$setResult($_ClR);./
    Keyword ::= c n f /.$setResult($_Cnf);./
    Keyword ::= c o n /.$setResult($_Con);./
    Keyword ::= d n f /.$setResult($_Dnf);./
    Keyword ::= e m s /.$setResult($_EmS);./
    Keyword ::= e q f /.$setResult($_EqF);./
    Keyword ::= e q r /.$setResult($_EqR);./
    Keyword ::= f a c /.$setResult($_Fac);./
    Keyword ::= g e r /.$setResult($_GeR);./
    Keyword ::= i n p /.$setResult($_Inp);./
    Keyword ::= k i v /.$setResult($_KIV);./
    Keyword ::= l e m /.$setResult($_LEM);./
    Keyword ::= m p m /.$setResult($_MPm);./
    Keyword ::= n o t /.$setResult($_Not);./
    Keyword ::= o b v /.$setResult($_Obv);./
    Keyword ::= o h y /.$setResult($_OHy);./
    Keyword ::= o p m /.$setResult($_OPm);./
    Keyword ::= r e w /.$setResult($_Rew);./
    Keyword ::= r r e /.$setResult($_RRE);./
    Keyword ::= s h y /.$setResult($_SHy);./
    Keyword ::= s o r /.$setResult($_SoR);./
    Keyword ::= s p l /.$setResult($_SpL);./
    Keyword ::= s p m /.$setResult($_SPm);./
    Keyword ::= s p r /.$setResult($_SpR);./
    Keyword ::= s p t /.$setResult($_Spt);./
    Keyword ::= s s i /.$setResult($_SSi);./
    Keyword ::= t e r /.$setResult($_Ter);./
    Keyword ::= u n c /.$setResult($_UnC);./
    Keyword ::= u r r /.$setResult($_URR);./
    Keyword ::= o r /.$setResult($_Or);./
%End
