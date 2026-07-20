%options package=lpg.grammars.leg
%options template=dtParserTemplateF.gi
%options import_terminals=LEGLexer.gi
%options automatic_ast=nested
--
-- LEG sample parser (legacy LPG grammar; Eclipse IMP / SymbolTable deps
-- removed for grammars-example Java harness parse-level acceptance).
--

%Eof
    EOF_TOKEN
%End

%Terminals
         boolean
         double
         else
         false
         if
         int
         return
         true
         void
         while
         
         IDENTIFIER 
         NUMBER
         DoubleLiteral
         COMMA ::= ','
         SEMICOLON ::= ';'
         PLUS ::= '+'
         MINUS ::= '-'
         ASSIGN ::= '='
         TIMES ::= '*'
         DIVIDE ::= '/'
         GREATER ::= '>'
         LESS ::= '<'
         EQUAL ::= '=='
         NOTEQUAL ::= '!='
         LEFTPAREN ::= '('
         RIGHTPAREN ::= ')'
         LEFTBRACE ::= '{'
         RIGHTBRACE ::= '}'
%End

%Start
    compilationUnit
%End

%Recover
   MissingExpression
%End

%Rules
    compilationUnit$$functionDeclaration ::= %empty
                                           | compilationUnit functionDeclaration

    functionDeclaration ::= functionHeader block
    
    functionHeader ::= Type identifier '(' parameters ')'
    
    parameters$$declaration ::= %empty
                              | parameterList

    parameterList$$declaration ::= declaration
                                 | parameterList ',' declaration
                                                            
    declaration ::= primitiveType identifier

    stmtList$$statement ::= %empty
                          | stmtList statement
    statement ::= declarationStmt
                | assignmentStmt
                | ifStmt
                | returnStmt
                | whileStmt
                | block
                | functionStmt
                | ';'

    block ::= '{' stmtList '}'

    declarationStmt ::= declaration ';'
                      | declaration '=' expression ';'
                       
    Type ::= primitiveType
           | void

    primitiveType ::= boolean
                    | double
                    | int
                              
    assignmentStmt ::= identifier '=' expression ';'
                     | BadAssignment
    ifStmt ::= if '(' expression ')' statement
             | if '(' expression ')' statement else statement

    whileStmt ::= while '(' expression ')' statement

    returnStmt ::= return expression ';'

    expression ::= expression '+' term
                 | expression '-' term
                 | expression '*' term
                 | expression '/' term
                 | expression '>' term
                 | expression '<' term
                 | expression '==' term
                 | expression '!=' term
                 | term
    term ::= NUMBER
           | DoubleLiteral
           | true
           | false
           | identifier
           | functionCall
           
    functionCall ::= identifier '(' expressions ')'

    functionStmt ::= functionCall ';'
    
    expressions$$expression ::= %empty
                              | expressionList
    expressionList$$expression ::= expression
                                 | expressionList ',' expression

    identifier ::= IDENTIFIER

    BadAssignment ::= identifier '=' MissingExpression 
%End
