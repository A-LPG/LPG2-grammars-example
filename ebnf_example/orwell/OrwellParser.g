-- Orwell Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural subset of antlr/grammars-v4 orwell/orwell.g4:
-- program / decl / syndecl / def_ / pat / rhs / term (not full type/op surface).
-- Note: def-juxtaposition across decl boundaries is LALR-ambiguous (same as
-- skipped-WS in g4); curated files use one def_ or syndecl then def_.

%Options la=2,ebnf
%Options fp=OrwellParser
%options package=lpg.grammars.orwell
%options template=dtParserTemplateF.gi
%options import_terminals=OrwellLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= decl+

    decl ::= syndecl
            | def_

    syndecl ::= tylhs EQEQ type_

    tylhs ::= IDENTIFIER

    type_ ::= IDENTIFIER
             | LBRACKET type_ RBRACKET
             | LPAREN type_ RPAREN

    def_ ::= pat EQ rhs

    pat ::= pat_atom
           | pat_atom pat_args

    pat_args ::= pat_atom+

    pat_atom ::= IDENTIFIER
                | NUMBER
                | LPAREN pat RPAREN
                | LBRACKET opt_pat_list RBRACKET

    opt_pat_list ::= (pat (COMMA pat)*)?

    rhs ::= term
           | conditional

    conditional ::= term COMMA IF term

    term ::= appexpr
            | term infix appexpr
            | prefix appexpr

    infix ::= PLUS
             | MINUS
             | STAR
             | SLASH

    prefix ::= MINUS

    appexpr ::= atom+

    atom ::= IDENTIFIER
            | NUMBER
            | LPAREN term RPAREN
            | LBRACKET opt_term_list RBRACKET

    opt_term_list ::= (term (COMMA term)*)?
%End
