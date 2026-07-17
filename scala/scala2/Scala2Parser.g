-- Scala2 Parser (LPG) — curated Wave C subset for HelloWorld example1.scala

%Options la=2
%Options fp=Scala2Parser
%options package=lpg.grammars.scala.scala2
%options template=dtParserTemplateF.gi
%options import_terminals=Scala2Lexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    compilationUnit
%End

%Rules
    compilationUnit ::= objectDef

    objectDef ::= OBJECT IDENTIFIER LBRACE defDef RBRACE

    defDef ::= DEF IDENTIFIER LPAREN param RPAREN COLON type_ EQ block

    param ::= IDENTIFIER COLON type_

    type_ ::= IDENTIFIER opt_type_args

    opt_type_args ::= $empty
                    | LBRACKET type_ RBRACKET

    block ::= LBRACE expr RBRACE

    expr ::= IDENTIFIER LPAREN arg RPAREN
           | STRING

    arg ::= STRING
%End
