-- FolParser (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options la=2
%Options fp=FolParser
%options package=lpg.grammars.fol
%options template=dtParserTemplateF.gi
%options import_terminals=FolLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    condition
%End

%Rules
    condition ::= formula_list opt_endlines

    formula_list ::= formula
                   | formula_list ENDLINE formula

    opt_endlines ::= $empty
                   | endlines

    endlines ::= ENDLINE
               | endlines ENDLINE

    formula ::= formula bin_connective formula
              | NOT formula bin_connective formula
              | NOT formula
              | FORALL LPAREN variable RPAREN formula
              | EXISTS LPAREN variable RPAREN formula
              | pred_constant LPAREN term_list RPAREN
              | term EQUAL term

    term_list ::= term
                | term_list COMMA term

    term ::= ind_constant
           | variable
           | func_constant LPAREN term_list RPAREN

    bin_connective ::= CONJ | DISJ | IMPL | BICOND

    variable ::= VARIABLE
    pred_constant ::= PRED_CONSTANT
    ind_constant ::= IND_CONSTANT
    func_constant ::= FUNC_CONSTANT
%End
