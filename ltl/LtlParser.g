-- Ltl Parser (LPG)
%Options la=2
%Options fp=LtlParser
%options package=lpg.grammars.ltl
%options template=dtParserTemplateF.gi
%options import_terminals=LtlLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    file_
%End
%Rules
    file_ ::= proposition

    proposition ::= TRUE
                  | FALSE
                  | ATOMIC
                  | LPAREN proposition RPAREN
                  | proposition binop proposition
                  | LTL_NOT proposition
                  | unaryop proposition

    binop ::= LTL_AND | LTL_OR | LTL_ARROW | LTL_UNTIL | LTL_WEAK | LTL_RELEASE
    unaryop ::= LTL_GLOBALLY | LTL_FINALLY | LTL_NEXT
%End
