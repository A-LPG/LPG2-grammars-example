-- StringTemplate group (STG) Parser (LPG)
-- Structural port of grammars-v4 stringtemplate/STGParser.g4 (+ STGLexer tokens).
-- Nonterminals mirror g4: group / delimiters / imports / template_ / formalArgs /
-- formalArg / dict_ / dictPairs / keyValuePair / defaultValuePair / keyValue.
-- language_subset: STG group files only — not STParser template-body expressions.

%Options la=3
%Options fp=StringtemplateParser
%options package=lpg.grammars.stringtemplate
%options template=dtParserTemplateF.gi
%options import_terminals=StringtemplateLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    group
%End

%Rules
    -- group: delimiters? imports? (template_ | dict_)+ EOF
    group ::= opt_delimiters opt_imports members

    opt_delimiters ::= delimiters
                     | $empty

    opt_imports ::= imports
                  | $empty

    members ::= member
              | members member

    member ::= template_
             | dict_

    -- delimiters: DELIMITERS STRING COMMA STRING
    delimiters ::= DELIMITERS STRING COMMA STRING

    -- imports: (IMPORT STRING)+
    imports ::= import_stmt
              | imports import_stmt

    import_stmt ::= IMPORT STRING

    -- template_: (@ID.ID() | ID(formals?)) ::= (STRING|BIGSTRING|BIGSTRING_NO_NL)
    --          | ID ::= ID   (alias)
    template_ ::= template_name COLONCOLON EQ template_body
                | IDENTIFIER COLONCOLON EQ IDENTIFIER

    template_name ::= AT IDENTIFIER DOT IDENTIFIER LPAREN RPAREN
                    | IDENTIFIER LPAREN opt_formalArgs RPAREN

    opt_formalArgs ::= formalArgs
                     | $empty

    template_body ::= STRING
                    | BIGSTRING
                    | BIGSTRING_NO_NL

    -- formalArgs: formalArg (COMMA formalArg)*
    formalArgs ::= formalArg
                 | formalArgs COMMA formalArg

    -- formalArg: ID (ASSIGN default)?
    formalArg ::= IDENTIFIER opt_arg_default

    opt_arg_default ::= $empty
                      | EQ STRING
                      | EQ ANON_TEMPLATE
                      | EQ TRUE
                      | EQ FALSE
                      | EQ LBRACKET RBRACKET

    -- dict_: ID ::= [ dictPairs ]
    dict_ ::= IDENTIFIER COLONCOLON EQ LBRACKET dictPairs RBRACKET

    -- dictPairs: keyValuePair (COMMA keyValuePair)* (COMMA defaultValuePair)?
    --          | defaultValuePair
    dictPairs ::= keyValuePair more_pairs opt_default
                | defaultValuePair

    more_pairs ::= $empty
                 | more_pairs COMMA keyValuePair

    opt_default ::= $empty
                  | COMMA defaultValuePair

    keyValuePair ::= STRING COLON keyValue

    defaultValuePair ::= DEFAULT COLON keyValue

    keyValue ::= BIGSTRING
               | BIGSTRING_NO_NL
               | ANON_TEMPLATE
               | STRING
               | TRUE
               | FALSE
               | LBRACKET RBRACKET
               | KEY
%End
