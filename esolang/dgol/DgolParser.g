-- DgolParser (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options la=2
%Options fp=DgolParser
%options package=lpg.grammars.esolang.dgol
%options template=dtParserTemplateF.gi
%options import_terminals=DgolLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    module
%End

%Rules
    module ::= opt_uses opt_subs defn opt_nls

    opt_uses ::= $empty | uses
    uses ::= use_or_nl | uses use_or_nl
    use_or_nl ::= usedeclaration | NL

    opt_subs ::= $empty | subs
    subs ::= sub_or_nl | subs sub_or_nl
    sub_or_nl ::= subroutinedefinition | NL

    defn ::= programdefinition | librarydefinition

    opt_nls ::= $empty | nls
    nls ::= NL | nls NL

    usedeclaration ::= USE IDENTIFIER NL

    subroutinedefinition ::= SUBROUTINE IDENTIFIER LPAREN opt_params RPAREN NL statements END IDENTIFIER NL

    opt_params ::= $empty | param_list
    param_list ::= IDENTIFIER | param_list COMMA IDENTIFIER

    programdefinition ::= PROGRAM IDENTIFIER NL statements END IDENTIFIER NL

    librarydefinition ::= LIBRARY IDENTIFIER opt_subdecls END IDENTIFIER NL

    opt_subdecls ::= $empty | subdecls
    subdecls ::= subdecl_or_nl | subdecls subdecl_or_nl
    subdecl_or_nl ::= subroutinedeclaration | NL

    subroutinedeclaration ::= SUBROUTINE IDENTIFIER NL

    statements ::= $empty
                 | stmt_lines

    stmt_lines ::= stmt_line
                 | stmt_lines stmt_line

    stmt_line ::= NL
                | statement NL

    statement ::= letstatement | ifstatement | dostatement | callstatement | returnstatement | exitstatement

    identifierorzero ::= IDENTIFIER | ZERO

    letstatement ::= LET IDENTIFIER EQ identifierorzero
                   | LET IDENTIFIER LT IDENTIFIER
                   | LET IDENTIFIER GT identifierorzero

    ifstatement ::= ifhead END IF
                  | ifhead else_ifs END IF
                  | ifhead ELSE NL statements END IF
                  | ifhead else_ifs ELSE NL statements END IF

    else_ifs ::= ELSE ifhead
               | else_ifs ELSE ifhead

    ifhead ::= IF IDENTIFIER EQ IDENTIFIER NL statements
             | IF IDENTIFIER GT IDENTIFIER NL statements

    dostatement ::= DO IDENTIFIER NL statements END DO
                  | DO IDENTIFIER LT IDENTIFIER NL statements END DO

    callstatement ::= CALL IDENTIFIER LPAREN opt_args RPAREN
                    | CALL IDENTIFIER DOT IDENTIFIER LPAREN opt_args RPAREN

    opt_args ::= $empty | arg_list
    arg_list ::= identifierorzero | arg_list COMMA identifierorzero

    returnstatement ::= RETURN
    exitstatement ::= EXIT IDENTIFIER
%End
