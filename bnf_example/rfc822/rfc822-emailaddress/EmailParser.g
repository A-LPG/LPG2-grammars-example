-- Email address Parser (LPG)
%Options la=2
%Options fp=EmailParser
%options package=lpg.grammars.rfc822.rfc822_emailaddress
%options template=dtParserTemplateF.gi
%options import_terminals=EmailLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    emailaddress
%End
%Rules
    emailaddress ::= mailbox
                   | group

    group ::= phrase COLON mailbox_list_opt SEMI
    mailbox_list_opt ::= $empty | mailboxes
    mailboxes ::= mailbox | mailboxes mailbox

    mailbox ::= addrspec
              | phrase routeaddr

    routeaddr ::= LT routes_opt addrspec GT
    routes_opt ::= $empty | routes
    routes ::= route | routes route
    route ::= AT domain COLON

    addrspec ::= localpart AT domain

    localpart ::= word
                | localpart DOT word

    domain ::= subdomain
             | domain DOT subdomain

    subdomain ::= ATOM

    phrase ::= word | phrase word
    word ::= ATOM | QUOTEDSTRING
%End
