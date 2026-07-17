-- Loop Parser (LPG)

%Options la=2
%Options fp=LoopParser
%options package=lpg.grammars.loop
%options template=dtParserTemplateF.gi
%options import_terminals=LoopLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    prog
%End

%Rules
    prog ::= statementlists

    statementlists ::= statementlist
                     | statementlists statementlist

    statementlist ::= statement
                    | statement SEMI statement

    statement ::= assignstmt
                | incrementstmt
                | loopstmt

    assignstmt ::= var_ ASSIGN number SEMI

    incrementstmt ::= var_ ASSIGN var_ PLUS number
                    | var_ ASSIGN var_ MINUS number

    loopstmt ::= LOOP var_ DO statementlist END

    var_ ::= IDENTIFIER
    number ::= NUMBER
%End
