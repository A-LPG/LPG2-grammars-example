-- CtlParser (LPG) from grammars-v4/ctl/ctl.g4
%Options la=2
%Options fp=CtlParser
%options package=lpg.grammars.ctl
%options template=dtParserTemplateF.gi
%options import_terminals=CtlLexer.gi
%options automatic_ast=nested
%options conflicts
%Eof
    EOF_TOKEN
%End
%Start
    file_
%End
%Rules
    file_ ::= proposition

    proposition ::= CTL_DOWNTACK
                  | CTL_UPTACK
                  | ATOMIC
                  | CTL_INEVITABLE path_op proposition
                  | CTL_EXISTS path_op proposition
                  | CTL_INEVITABLE LBRACKET proposition CTL_UNTIL proposition RBRACKET
                  | CTL_EXISTS LBRACKET proposition CTL_UNTIL proposition RBRACKET
                  | LPAREN proposition RPAREN
                  | proposition binop proposition
                  | CTL_NOT proposition

    path_op ::= CTL_NEXT | CTL_FINALLY | CTL_GLOBALLY
    binop ::= CTL_AND | CTL_OR | CTL_RIGHTWARDS_DOUBLE_ARROW | CTL_LEFT_RIGHT_DOUBLE_ARROW
%End
