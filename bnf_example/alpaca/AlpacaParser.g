-- ALPACA Parser (LPG)
-- Ported from antlr/grammars-v4 alpaca/alpaca.g4

%Options la=2
%Options fp=AlpacaParser
%options package=lpg.grammars.alpaca
%options template=dtParserTemplateF.gi
%options import_terminals=AlpacaLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    prog
%End

%Rules
    prog ::= defns DOT
           | defns BEGIN

    defns ::= defn
            | defns SEMI defn

    defn ::= stateDefn
           | classDefn
           | nbhdDefn

    stateDefn ::= STATE IDENTIFIER opt_quoted memberships opt_rules
    classDefn ::= CLASS IDENTIFIER memberships opt_rules
    nbhdDefn ::= NEIGHBOURHOOD IDENTIFIER neigbourhood

    opt_quoted ::= $empty | QUOTEDCHAR
    memberships ::= $empty | membership_list
    membership_list ::= membershipDecl
                      | membership_list membershipDecl
    membershipDecl ::= IS IDENTIFIER

    opt_rules ::= $empty | rules
    rules ::= rule_
            | rules COMMA rule_

    rule_ ::= TO stateRef
            | TO stateRef WHEN expression

    stateRef ::= IDENTIFIER
               | arrowchain
               | ME

    expression ::= term
                 | expression AND term
                 | expression OR term
                 | expression XOR term

    term ::= adjacencyPred
           | LPAREN expression RPAREN
           | NOT term
           | boolPrimitive
           | relationalPred

    relationalPred ::= stateRef stateRef
                     | stateRef EQ stateRef
                     | stateRef classRef

    classRef ::= IS IDENTIFIER

    adjacencyPred ::= NATURAL opt_in_nbhd stateRef
                    | NATURAL opt_in_nbhd classRef

    opt_in_nbhd ::= $empty
                  | IN neigbourhood
                  | IN IDENTIFIER

    boolPrimitive ::= TRUE | FALSE | GUESS

    neigbourhood ::= LPAREN arrowchains RPAREN
                   | LPAREN RPAREN

    arrowchains ::= arrowchain
                  | arrowchains arrowchain

    arrowchain ::= ARROW
                 | arrowchain ARROW
%End
