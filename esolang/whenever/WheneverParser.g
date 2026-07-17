-- WheneverParser (LPG)
%Options la=2
%Options fp=WheneverParser
%options package=lpg.grammars.esolang.whenever
%options template=dtParserTemplateF.gi
%options import_terminals=WheneverLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    program_
%End
%Rules

    program_ ::= lines opt_eol
    lines ::= line_
            | lines line_
    opt_eol ::= $empty | EOL

    line_ ::= linenumber_ whens statement_list_ EOL

    whens ::= $empty | whens when_
    when_ ::= again_ | defer_ | forget_

    defer_ ::= DEFER LPAREN expression_ RPAREN
    again_ ::= AGAIN LPAREN expression_ RPAREN
    forget_ ::= FORGET LPAREN expression_ RPAREN

    linenumber_ ::= term_

    statement_list_ ::= statement_
                      | statement_list_ COMMA statement_

    statement_ ::= addremove_
                 | print_statement_
                 | read_statement_
                 | term_

    addremove_ ::= term_ HASH term_

    print_statement_ ::= PRINT LPAREN term_ RPAREN
    read_statement_ ::= READ LPAREN RPAREN

    expression_ ::= term_ | expression_ COMPARE term_

    term_ ::= opt_not mult_term_
    opt_not ::= $empty | NOT

    mult_term_ ::= add_term_ | mult_term_ MULT_OP add_term_
    add_term_ ::= value_ | add_term_ ADD_OP value_

    value_ ::= NUMBER | ADD_OP NUMBER | func_ | QUOTED_STRING
    func_ ::= NFUNC LPAREN term_ RPAREN
            | UFUNC LPAREN term_ RPAREN

%End
