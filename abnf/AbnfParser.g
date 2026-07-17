-- ABNF Parser (LPG)
-- Ported from antlr/grammars-v4 abnf/Abnf.g4 for parse-level examples.
-- Source grammar: RFC 5234 / RFC 7405 (BSD, Rainer Schuster).

%Options la=2
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
    -- rulelist : rule_* EOF
    rulelist ::= $empty
               | rule_list

    rule_list ::= abnf_rule
                | rule_list abnf_rule

    -- rule_ : ID '=' '/'? elements
    abnf_rule ::= IDENTIFIER EQUAL elements
                | IDENTIFIER EQUAL SLASH elements

    elements ::= alternation

    -- alternation : concatenation ('/' concatenation)*
    alternation ::= concatenation
                  | alternation SLASH concatenation

    -- concatenation : repetition+
    concatenation ::= repetition
                    | concatenation repetition

    -- repetition : repeat_? element
    repetition ::= element
                 | repeat_ element

    -- repeat_ : INT | INT? '*' INT?
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
