-- RCS Parser (LPG)
%Options la=2
%Options fp=RcsParser
%options package=lpg.grammars.rcs
%options template=dtParserTemplateF.gi
%options import_terminals=RcsLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    rcstext
%End
%Rules
    rcstext ::= admin deltalist desc deltatextlist

    admin ::= head opt_branch access symbols opt_locks opt_strict opt_comment opt_expand newphrase_list
    opt_branch ::= %Empty | branch
    opt_locks ::= %Empty | locks
    opt_strict ::= %Empty | strict
    opt_comment ::= %Empty | comment
    opt_expand ::= %Empty | expand
    newphrase_list ::= %Empty | newphrase_list newphrase

    head ::= LITERAL_HEAD REVISION SEMI
    branch ::= LITERAL_BRANCH REVISION SEMI
    access ::= LITERAL_ACCESS ident_list SEMI
    ident_list ::= %Empty | ident_list IDENTIFIER
    symbols ::= LITERAL_SYMBOLS tags_list SEMI
    tags_list ::= %Empty | tags_list tags
    tags ::= IDENTIFIER COLON REVISION
    locks ::= LITERAL_LOCKS ident_list SEMI
    strict ::= LITERAL_STRICT SEMI
    comment ::= LITERAL_COMMENT opt_string SEMI
    expand ::= LITERAL_EXPAND opt_string SEMI
    opt_string ::= %Empty | STRING

    deltalist ::= %Empty | deltalist delta
    delta ::= REVISION delta_date delta_author delta_state delta_branches delta_next newphrase_list
    delta_date ::= LITERAL_DATE REVISION SEMI
    delta_author ::= LITERAL_AUTHOR IDENTIFIER SEMI
    delta_state ::= LITERAL_STATE IDENTIFIER SEMI
    delta_branches ::= LITERAL_BRANCHES rev_list SEMI
    rev_list ::= %Empty | rev_list REVISION
    delta_next ::= LITERAL_NEXT opt_rev SEMI
    opt_rev ::= %Empty | REVISION

    desc ::= LITERAL_DESC STRING
    deltatextlist ::= %Empty | deltatextlist deltatext
    deltatext ::= REVISION deltatext_log newphrase_list deltatext_text
    deltatext_log ::= LITERAL_LOG STRING
    deltatext_text ::= LITERAL_TEXT STRING
    newphrase ::= IDENTIFIER id_plus SEMI
    id_plus ::= %Empty | id_plus IDENTIFIER
%End
