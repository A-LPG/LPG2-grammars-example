-- CtlParser (LPG)
%Options la=2
%Options fp=CtlParser
%options package=lpg.grammars.ctl
%options template=dtParserTemplateF.gi
%options import_terminals=CtlLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    file_ ::= proposition

    proposition ::= CTL_OP
                  | ATOMIC
                  | CTL_INEVITABLE path_op proposition
                  | CTL_EXISTS path_op proposition
                  | CTL_INEVITABLE LBRACKET proposition CTL_UNTIL proposition RBRACKET
                  | CTL_EXISTS LBRACKET proposition CTL_UNTIL proposition RBRACKET
                  | LPAREN proposition RPAREN
                  | proposition CTL_OP proposition
                  | CTL_OP proposition

    path_op ::= CTL_NEXT | CTL_FINALLY | CTL_GLOBALLY
%End
