-- TTM Parser (LPG)

%Options la=2
%Options fp=TtmParser
%options package=lpg.grammars.ttm
%options template=dtParserTemplateF.gi
%options import_terminals=TtmLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= functions_opt

    functions_opt ::= $empty
                    | functions

    functions ::= function_
                | functions function_

    function_ ::= active
                | neutral

    active ::= ACTIVE functionname opt_arglist GT
    neutral ::= NEUTRAL functionname opt_arglist GT

    opt_arglist ::= $empty
                  | SEMI arglist

    arglist ::= arg
              | arglist SEMI arg

    arg ::= function_
          | LT function_ GT
          | string

    functionname ::= string

    string ::= STRING
             | ESCSTRING
%End
