-- InfosapientParser (LPG)
%Options la=2
%Options fp=InfosapientParser
%options package=lpg.grammars.infosapient
%options template=dtParserTemplateF.gi
%options import_terminals=InfosapientLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    conditionalRule
%End
%Rules

    conditionalRule ::= IDENTIFIER premise consequent SEMI
    premise ::= IF clause
    consequent ::= THEN attribClause
                 | THEN attribClause ELSE attribClause

    clause ::= LPAREN clause RPAREN
             | clause_expr
    clause_expr ::= clause_atom
                  | clause_expr operator_ clause_atom
    clause_atom ::= expr | attribClause

    expr ::= LPAREN expr RPAREN
           | attribClause

    attribClause ::= id_ are_kw opt_hedges attr_val
    are_kw ::= ARE | S_POS
    opt_hedges ::= $empty | hedges
    hedges ::= hedge | hedges hedge
    hedge ::= ABOUT
    attr_val ::= FP_LITERAL | INTEGER | IDENTIFIER | restrictionHedge
    restrictionHedge ::= INCREASED | DECREASED
    operator_ ::= AND | OR
    id_ ::= IDENTIFIER

%End
