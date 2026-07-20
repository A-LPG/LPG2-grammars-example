-- Keyword filter for SMT-LIBv2 (literal spellings, not CMD_* letter soup)
%options package=lpg.grammars.smtlibv2
%options template=KeywordTemplateF.gi
%options fp=Smtlibv2KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    CMD_SetLogic
    CMD_DeclareFun
    CMD_DeclareConst
    CMD_DeclareSort
    CMD_DefineFun
    CMD_Assert
    CMD_CheckSat
    CMD_CheckSatAssuming
    CMD_GetModel
    CMD_GetValue
    CMD_GetInfo
    CMD_SetInfo
    CMD_SetOption
    CMD_GetOption
    CMD_Push
    CMD_Pop
    CMD_Exit
    CMD_Reset
    CMD_Echo
    PS_Bool
    PS_True
    PS_False
    PS_Not
    PS_Sat
    PS_Unsat
    PS_Unknown
    GRW_As
    GRW_Let
    GRW_Forall
    GRW_Exists
    GRW_Match
    GRW_Par
    GRW_Underscore
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
    Minus ::= '-'
%End

%Headers
    /.
        static { tokenKind['-'] = $sym_type.$prefix$Minus$suffix$; }
    ./
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= c h e c k Minus s a t Minus a s s u m i n g /.$setResult($_CMD_CheckSatAssuming);./
              | d e c l a r e Minus c o n s t /.$setResult($_CMD_DeclareConst);./
              | d e c l a r e Minus f u n /.$setResult($_CMD_DeclareFun);./
              | d e c l a r e Minus s o r t /.$setResult($_CMD_DeclareSort);./
              | d e f i n e Minus f u n /.$setResult($_CMD_DefineFun);./
              | s e t Minus l o g i c /.$setResult($_CMD_SetLogic);./
              | s e t Minus o p t i o n /.$setResult($_CMD_SetOption);./
              | g e t Minus o p t i o n /.$setResult($_CMD_GetOption);./
              | c h e c k Minus s a t /.$setResult($_CMD_CheckSat);./
              | g e t Minus m o d e l /.$setResult($_CMD_GetModel);./
              | g e t Minus v a l u e /.$setResult($_CMD_GetValue);./
              | s e t Minus i n f o /.$setResult($_CMD_SetInfo);./
              | g e t Minus i n f o /.$setResult($_CMD_GetInfo);./
              | u n d e r s c o r e /.$setResult($_GRW_Underscore);./
              | a s s e r t /.$setResult($_CMD_Assert);./
              | f o r a l l /.$setResult($_GRW_Forall);./
              | e x i s t s /.$setResult($_GRW_Exists);./
              | u n k n o w n /.$setResult($_PS_Unknown);./
              | r e s e t /.$setResult($_CMD_Reset);./
              | m a t c h /.$setResult($_GRW_Match);./
              | f a l s e /.$setResult($_PS_False);./
              | u n s a t /.$setResult($_PS_Unsat);./
              | p u s h /.$setResult($_CMD_Push);./
              | e x i t /.$setResult($_CMD_Exit);./
              | e c h o /.$setResult($_CMD_Echo);./
              | t r u e /.$setResult($_PS_True);./
              | b o o l /.$setResult($_PS_Bool);./
              | p o p /.$setResult($_CMD_Pop);./
              | l e t /.$setResult($_GRW_Let);./
              | p a r /.$setResult($_GRW_Par);./
              | n o t /.$setResult($_PS_Not);./
              | s a t /.$setResult($_PS_Sat);./
              | a s /.$setResult($_GRW_As);./
%End
