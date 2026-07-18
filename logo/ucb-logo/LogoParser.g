-- Logo / UCB Logo Parser (LPG) — from grammars-v4 logo/ucb-logo/UCBLogo.g4
-- Upstream g4 is ~876 lines but ~500 are @parser::members arity table + lexer;
-- parser rules are ~parse/instruction/expression (~90 lines). Semantic predicates
-- (procedureNameAhead / amountParams) omitted for LALR; args are expr lists.
-- real_g4_port / language_subset (not token-stream soup).

%Options la=2
%Options fp=LogoParser
%options package=lpg.grammars.logo.ucb_logo
%options template=dtParserTemplateF.gi
%options import_terminals=LogoLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    parse
%End

%Rules
    -- parse : instruction* EOF
    parse ::= instruction_list

    instruction_list ::= %Empty
           | instruction_list instruction

    -- instruction : procedure_def | macro_def | procedure_call_extra_input | procedure_call
    instruction ::= procedure_def
           | macro_def
           | procedure_call_extra_input
           | procedure_call

    -- procedure_def : TO NAME variables body_def
    procedure_def ::= TO IDENTIFIER var_list instruction_list END

    -- macro_def : MACRO NAME variables body_def
    macro_def ::= MACRO IDENTIFIER var_list instruction_list END

    var_list ::= %Empty
           | var_list VARIABLE

    -- procedure_call_extra_input : '(' NAME expression* ')'
    procedure_call_extra_input ::= LPAREN IDENTIFIER expr_list RPAREN

    -- procedure_call : NAME expression*   (arity checked in g4 via predicates)
    procedure_call ::= IDENTIFIER expr_list

    expr_list ::= %Empty
           | expr_list expression

    -- expression layered (g4 uses precedence on flat alts)
    expression ::= comparison

    comparison ::= comparison LT addition
           | comparison GT addition
           | comparison EQ addition
           | comparison LTEQ addition
           | comparison GTEQ addition
           | comparison LTGT addition
           | addition

    addition ::= addition PLUS term
           | addition MINUS term
           | term

    term ::= term STAR factor
           | term SLASH factor
           | factor

    factor ::= NUMBER
           | VARIABLE
           | QUOTED_WORD
           | IDENTIFIER
           | MINUS factor
           | LPAREN expression RPAREN
           | procedure_call_extra_input
           | list_
           | array_

    -- list_ : '[' ... ']'
    list_ ::= LBRACKET instruction_list RBRACKET

    -- array_ : '{' ... '}'  (curated: expression list)
    array_ ::= LBRACE expr_list RBRACE
%End
