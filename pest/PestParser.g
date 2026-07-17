-- Pest Parser (LPG) — curated subset
%Options la=2
%Options fp=PestParser
%options package=lpg.grammars.pest
%options template=dtParserTemplateF.gi
%options import_terminals=PestLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    grammar_rules
%End
%Rules
    grammar_rules ::= rule_list
    rule_list ::= grammar_rule | rule_list grammar_rule
    grammar_rule ::= IDENTIFIER EQ opt_mod LBRACE expression RBRACE
    opt_mod ::= $empty | UNDERSCORE | AT | DOLLAR | BANG
    expression ::= term | expression TILDE term | expression PIPE term
    term ::= opt_prefix node opt_postfix
    opt_prefix ::= $empty | AMPERSAND | BANG | opt_prefix AMPERSAND | opt_prefix BANG
    opt_postfix ::= $empty | STAR | PLUS | QUESTION | LBRACE NUMBER RBRACE
    node ::= LPAREN expression RPAREN | IDENTIFIER | STRING | NUMBER
%End
