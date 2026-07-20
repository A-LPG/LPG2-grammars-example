-- AbnfParser (LPG) — structural port of grammars-v4 abnf/Abnf.g4 (RFC 5234 / 7405)
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Nonterminals: rulelist / abnf_rule / elements / alternation / concatenation /
--   repetition / repeat_ / element / group / option
-- Lexer tokens NumberValue / ProseValue / STRING / INT / IDENTIFIER

%Options la=2,ebnf
%Options fp=AbnfParser
%options package=lpg.grammars.abnf
%options template=dtParserTemplateF.gi
%options import_terminals=AbnfLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    rulelist
%End

%Rules
    -- rulelist: rule_* EOF
    rulelist ::= abnf_rule*

    abnf_rule ::= IDENTIFIER EQUAL elements
                 | IDENTIFIER EQUAL SLASH elements

    elements ::= alternation

    alternation ::= concatenation (SLASH concatenation)*

    concatenation ::= repetition+

    repetition ::= element
                  | repeat_ element

    repeat_ ::= INT
               | STAR
               | INT STAR
               | STAR INT
               | INT STAR INT

    element ::= IDENTIFIER
               | group
               | option
               | STRING
               | NumberValue
               | ProseValue

    group ::= LPAREN alternation RPAREN

    option ::= LBRACKET alternation RBRACKET
%End
