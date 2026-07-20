-- AUTO-GENERATED from antlr/grammars-v4 spass by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack,ebnf
%Options fp=SpassParser
%options package=lpg.grammars.spass
%options template=btParserTemplateF.gi
%options import_terminals=SpassLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    problem
%End

%Rules
    problem ::= BEGIN_PROBLEM LPAREN identifier RPAREN DOT description logical_part list_1 END_PROBLEM DOT

    description ::= LIST_OF_DESCRIPTIONS DOT NAME LPAREN opt_3 RPAREN DOT AUTHOR LPAREN opt_5 RPAREN DOT opt_9 opt_13 STATUS LPAREN log_state RPAREN DOT DESCRIPTION LPAREN opt_15 RPAREN DOT opt_19 END_OF_LIST DOT

    log_state ::= SATISFIABLE
                 | UNSATISFIABLE
                 | UNKNOWN

    logical_part ::= opt_20 opt_21 list_22 list_23 list_24

    symbol_list ::= LIST_OF_SYMBOLS DOT opt_30 opt_36 opt_40 END_OF_LIST DOT

    declaration_list ::= LIST_OF_DECLARATIONS DOT list_41 END_OF_LIST DOT

    declaration ::= subsort_decl
                   | term_decl
                   | pred_decl
                   | gen_decl

    gen_decl ::= SORT sort_sym opt_42 GENERATED_BY func_list DOT

    func_list ::= LBRACKET fun_sym list_44 RBRACKET

    subsort_decl ::= SUBSORT LPAREN sort_sym COMMA sort_sym RPAREN DOT

    term_decl ::= FORALL LPAREN term_list COMMA term RPAREN DOT
                 | term DOT

    pred_decl ::= PREDICATE LPAREN pred_sym list_46 RPAREN DOT

    sort_sym ::= identifier

    pred_sym ::= identifier

    fun_sym ::= identifier

    formula_list ::= LIST_OF_FORMULAE LPAREN origin_type RPAREN DOT list_51 END_OF_LIST DOT

    origin_type ::= AXIOMS
                   | CONJECTURES

    label ::= identifier
             | number

    term ::= quant_sym LPAREN term_list COMMA term RPAREN
            | symbol
            | symbol LPAREN term list_53 RPAREN

    term_list ::= LBRACKET term list_55 RBRACKET

    quant_sym ::= FORALL
                 | EXISTS
                 | identifier

    symbol ::= EQUAL
              | TRUE
              | FALSE
              | OR
              | AND
              | NOT
              | IMPLIES
              | IMPLIED
              | EQUIV
              | identifier

    clause_list ::= LIST_OF_CLAUSES LPAREN origin_type COMMA clause_type RPAREN DOT list_61 END_OF_LIST DOT

    clause_type ::= CNF
                   | DNF

    cnf_clause ::= FORALL LPAREN term_list COMMA cnf_clause_body RPAREN
                  | cnf_clause_body

    dnf_clause ::= EXISTS LPAREN term_list COMMA dnf_clause_body RPAREN
                  | dnf_clause_body

    cnf_clause_body ::= OR LPAREN term list_63 RPAREN

    dnf_clause_body ::= AND LPAREN term list_65 RPAREN

    proof_list ::= LIST_OF_PROOF opt_69 DOT list_73 END_OF_LIST DOT

    reference ::= term
                 | identifier
                 | user_reference

    result ::= term
              | user_result

    rule_appl ::= term
                 | identifier
                 | user_rule_appl

    parent_list ::= LBRACKET parent_ list_75 RBRACKET

    parent_ ::= term
               | identifier
               | user_parent

    assoc_list ::= LBRACKET key COLON value list_77 RBRACKET

    key ::= term
           | identifier
           | user_key

    value ::= term
             | identifier
             | user_value

    proof_type ::= identifier
                  | user_proof_type

    user_reference ::= number

    user_result ::= cnf_clause

    user_rule_appl ::= GER
                      | SPL
                      | SPR
                      | EQF
                      | REW
                      | OBV
                      | EMS
                      | SOR
                      | EQR
                      | MPM
                      | SPM
                      | OPM
                      | SHY
                      | OHY
                      | URR
                      | FAC
                      | SPT
                      | INP
                      | CON
                      | RRE
                      | SSI
                      | CLR
                      | UNC
                      | TER

    user_parent ::= number

    user_proof_type ::= SPASS

    user_key ::= SPLITLEVEL

    user_value ::= number

    settings ::= LIST_OF_GENERAL_SETTINGS list_78 END_OF_LIST DOT
                | LIST_OF_SETTINGS LPAREN setting_label RPAREN DOT opt_80 END_OF_LIST DOT

    setting_entry ::= HYPOTHESIS LBRACKET label list_82 RBRACKET DOT

    setting_label ::= KIV
                     | LEM
                     | OTTER
                     | PROTEIN
                     | SATURATE
                     | T_3TAP
                     | SETHEO
                     | SPASS

    identifier ::= IDENTIFIER

    arity ::= _1
             | number

    number ::= list_83

    text_ ::= JustText

    list_1 ::= (list_1 settings)?

    seq_2 ::= Open text_ Close

    opt_3 ::= seq_2?

    seq_4 ::= Open text_ Close

    opt_5 ::= seq_4?

    seq_6 ::= Open text_ Close

    opt_7 ::= seq_6?

    seq_8 ::= VERSION LPAREN opt_7 RPAREN DOT

    opt_9 ::= seq_8?

    seq_10 ::= Open text_ Close

    opt_11 ::= seq_10?

    seq_12 ::= LOGIC LPAREN opt_11 RPAREN DOT

    opt_13 ::= seq_12?

    seq_14 ::= Open text_ Close

    opt_15 ::= seq_14?

    seq_16 ::= Open text_ Close

    opt_17 ::= seq_16?

    seq_18 ::= DATE LPAREN opt_17 RPAREN DOT

    opt_19 ::= seq_18?

    opt_20 ::= symbol_list?

    opt_21 ::= declaration_list?

    list_22 ::= (list_22 formula_list)?

    list_23 ::= (list_23 clause_list)?

    list_24 ::= (list_24 proof_list)?

    grp_26 ::= fun_sym
              | LPAREN fun_sym COMMA arity RPAREN

    grp_28 ::= fun_sym
              | LPAREN fun_sym COMMA arity RPAREN

    grp_27 ::= COMMA grp_28

    list_29 ::= (list_29 grp_27)?

    grp_25 ::= FUNCTIONS LBRACKET grp_26 list_29 RBRACKET DOT

    opt_30 ::= grp_25?

    grp_32 ::= pred_sym
              | LPAREN pred_sym COMMA arity RPAREN

    grp_34 ::= pred_sym
              | LPAREN pred_sym COMMA arity RPAREN

    grp_33 ::= COMMA grp_34

    list_35 ::= (list_35 grp_33)?

    grp_31 ::= PREDICATES LBRACKET grp_32 list_35 RBRACKET DOT

    opt_36 ::= grp_31?

    seq_37 ::= COMMA sort_sym

    list_38 ::= (list_38 seq_37)?

    seq_39 ::= SORTS LBRACKET sort_sym list_38 RBRACKET DOT

    opt_40 ::= seq_39?

    list_41 ::= (list_41 declaration)?

    opt_42 ::= FREELY?

    seq_43 ::= COMMA fun_sym

    list_44 ::= (list_44 seq_43)?

    seq_45 ::= COMMA sort_sym

    list_46 ::= seq_45+

    opt_47 ::= term?

    seq_48 ::= COMMA label

    opt_49 ::= seq_48?

    seq_50 ::= FORMULA LPAREN opt_47 opt_49 RPAREN DOT

    list_51 ::= (list_51 seq_50)?

    seq_52 ::= COMMA term

    list_53 ::= (list_53 seq_52)?

    seq_54 ::= COMMA term

    list_55 ::= (list_55 seq_54)?

    grp_57 ::= cnf_clause
              | dnf_clause

    opt_58 ::= grp_57?

    seq_59 ::= COMMA label

    opt_60 ::= seq_59?

    grp_56 ::= CLAUSE LPAREN opt_58 opt_60 RPAREN DOT

    list_61 ::= (list_61 grp_56)?

    seq_62 ::= COMMA term

    list_63 ::= (list_63 seq_62)?

    seq_64 ::= COMMA term

    list_65 ::= (list_65 seq_64)?

    seq_66 ::= COMMA assoc_list

    opt_67 ::= seq_66?

    seq_68 ::= LPAREN proof_type opt_67 RPAREN

    opt_69 ::= seq_68?

    seq_70 ::= COMMA assoc_list

    opt_71 ::= seq_70?

    seq_72 ::= STEP LPAREN reference COMMA result COMMA rule_appl COMMA parent_list opt_71 RPAREN DOT

    list_73 ::= (list_73 seq_72)?

    seq_74 ::= COMMA parent_

    list_75 ::= (list_75 seq_74)?

    seq_76 ::= COMMA key COLON value

    list_77 ::= (list_77 seq_76)?

    list_78 ::= setting_entry+

    seq_79 ::= Open text_ Close

    opt_80 ::= seq_79?

    seq_81 ::= COMMA label

    list_82 ::= (list_82 seq_81)?

    list_83 ::= Digit+
%End
