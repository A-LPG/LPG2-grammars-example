-- Lark Parser (LPG)
-- Ported from antlr/grammars-v4 lark/LarkParser.g4
-- Newlines are significant item separators (ANTLR hides them; LPG needs them).

%Options la=2
%Options fp=LarkParser
%options package=lpg.grammars.lark
%options template=dtParserTemplateF.gi
%options import_terminals=LarkLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    start_
%End

%Rules
    start_ ::= optNl
             | optNl items optNl

    optNl ::= $empty | nls
    nls ::= NL | nls NL

    items ::= item
            | items nls item

    item ::= rule_
           | token
           | statement

    rule_ ::= RULE optRuleParams optPriority COLON expansions

    token ::= TOKEN optTokenParams optPriority COLON expansions

    optRuleParams ::= $empty
                    | LC ruleList RC

    ruleList ::= RULE
               | ruleList COMMA RULE

    optTokenParams ::= $empty
                     | LC tokenList RC

    tokenList ::= TOKEN
                | tokenList COMMA TOKEN

    optPriority ::= $empty
                  | DOT NUMBER

    statement ::= IGNORE expansions
                | IMPORT import_path
                | IMPORT import_path ARROW name
                | IMPORT import_path name_list
                | OVERRIDE rule_
                | DECLARE names

    import_path ::= name
                  | DOT name
                  | import_path DOT name

    name_list ::= LP names RP

    names ::= name
            | names name

    expansions ::= alias
                 | expansions VBAR alias
                 | expansions NL VBAR alias

    alias ::= expansion
            | expansion ARROW RULE

    expansion ::= $empty
                | exprs

    exprs ::= expr
            | exprs expr

    expr ::= atom
           | atom OP
           | atom SQ NUMBER
           | atom SQ NUMBER DD NUMBER

    atom ::= LP expansions RP
           | LB expansions RB
           | value

    value ::= STRING DD STRING
            | name
            | REGEXP
            | STRING
            | name LC valueList RC

    valueList ::= value
                | valueList COMMA value

    name ::= RULE | TOKEN
%End
