-- AUTO-GENERATED from antlr/grammars-v4 http by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=HttpParser
%options package=lpg.grammars.http
%options template=dtParserTemplateF.gi
%options import_terminals=HttpLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    http_message
%End

%Rules
    http_message ::= start_line list_2

    start_line ::= request_line

    request_line ::= method SP request_target SP http_version CRLF

    method ::= token
              | IDENTIFIER

    request_target ::= origin_form
                      | SLASH
                      | IDENTIFIER

    origin_form ::= absolute_path opt_4

    absolute_path ::= list_6

    segment ::= list_7

    query ::= list_9

    http_version ::= HTTP SLASH DIGIT DOT DIGIT
                    | HTTP SLASH NUMBER DOT NUMBER
                    | HTTP SLASH NUMBER
                    | IDENTIFIER SLASH NUMBER
                    | IDENTIFIER

    header_field ::= field_name COLON ows field_value ows

    field_name ::= token

    token ::= list_10

    tchar ::= IDENTIFIER
             | NUMBER
             | EXCLAMATION_MARK
             | DOLLAR_SIGN
             | HASHTAG
             | PERCENT
             | AMPERSAND
             | SQUOTE
             | STAR
             | PLUS
             | MINUS
             | DOT
             | CARET
             | UNDERSCORE
             | BACK_QUOTE
             | VBAR
             | TILDE
             | DIGIT
             | HEX_LETTER
             | ALPHA

    field_value ::= list_12

    field_content ::= field_vchar list_16

    ows ::= list_18

    field_vchar ::= vchar
                   | obs_text

    obs_text ::= OBS_TEXT

    obs_fold ::= CRLF list_20

    pchar ::= unreserved
             | pct_encoded
             | sub_delims
             | hexdig
             | COLON
             | AT

    pct_encoded ::= PERCENT hexdig hexdig

    hexdig ::= DIGIT
              | HEX_LETTER

    unreserved ::= ALPHA
                  | DIGIT
                  | MINUS
                  | DOT
                  | UNDERSCORE
                  | TILDE

    sub_delims ::= EXCLAMATION_MARK
                  | DOLLAR_SIGN
                  | AMPERSAND
                  | SQUOTE
                  | LCOLUMN
                  | RCOLUMN
                  | STAR
                  | PLUS
                  | PERIOD
                  | SEMICOLON
                  | EQ

    vchar ::= LCOLUMN
             | RCOLUMN
             | SEMICOLON
             | EQ
             | PERIOD
             | MINUS
             | DOT
             | UNDERSCORE
             | TILDE
             | QUESTION_MARK
             | SLASH
             | EXCLAMATION_MARK
             | COLON
             | AT
             | DOLLAR_SIGN
             | HASHTAG
             | AMPERSAND
             | PERCENT
             | SQUOTE
             | STAR
             | PLUS
             | CARET
             | BACK_QUOTE
             | VBAR
             | HEX_LETTER
             | ALPHA
             | DIGIT
             | VCHAR

    seq_1 ::= header_field CRLF

    list_2 ::= (list_2 seq_1)?

    seq_3 ::= QUESTION query

    opt_4 ::= seq_3?

    seq_5 ::= SLASH segment

    list_6 ::= seq_5+

    list_7 ::= (list_7 pchar)?

    grp_8 ::= pchar
             | SLASH
             | QUESTION

    list_9 ::= (list_9 grp_8)?

    list_10 ::= tchar+

    grp_11 ::= field_content
              | obs_fold

    list_12 ::= (list_12 grp_11)?

    grp_14 ::= SP
              | HTAB

    list_15 ::= grp_14+

    grp_13 ::= list_15 field_vchar

    list_16 ::= (list_16 grp_13)?

    grp_17 ::= SP
              | HTAB

    list_18 ::= (list_18 grp_17)?

    grp_19 ::= SP
              | HTAB

    list_20 ::= grp_19+
%End
