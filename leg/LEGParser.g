%options package=org.eclipse.imp.leg.parser
%options template=dtParserTemplateF.gi
%options import_terminals=LEGLexer.gi
%options parent_saved,automatic_ast=toplevel,visitor=preorder,ast_directory=./Ast,ast_type=ASTNode

%Globals
    /.import org.eclipse.imp.parser.IParser;
    import org.eclipse.imp.parser.SymbolTable;
    import java.util.Stack;
    ./
%End

%Define
    $ast_class /.Object./
    $additional_interfaces /., IParser./
%End

%Terminals
    --            
    -- Here, you may list terminals needed by this grammar.
    -- Furthermore, a terminal may be mapped into an alias
    -- that can also be used in a grammar rule. In addition,
    -- when an alias is specified here it instructs the
    -- generated parser to use the alias in question when
    -- referring to the symbol to which it is aliased. For
    -- example, consider the following definitions:
    --
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
    --
    -- Here the terminals int, float, IDENTIFIER and NUMBER are
    -- defined without an alias; SEMICOLON is aliased to ';';
    -- PLUS is aliased to '+'... etc...
    --
    -- Note that the terminals that do not have aliases are declared
    -- above only for documentation purposes.
    --
%End

%Start
    compilationUnit
%End

%Recover
   MissingExpression
%End

%Rules
    -- In this section you list all the rules for your grammar.
    -- When reduced, each rule will produce one Ast node.
    -- 
    --  Here are some example rules:
    -- 
    compilationUnit$$functionDeclaration ::= %empty
                                           | compilationUnit functionDeclaration

    functionDeclaration ::= functionHeader block
    /.
        SymbolTable<IAst> symbolTable;
        public void setSymbolTable(SymbolTable<IAst> symbolTable) { this.symbolTable = symbolTable; }
        public SymbolTable<IAst> getSymbolTable() { return symbolTable; }
    ./
    
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
    /.
        SymbolTable<IAst> symbolTable;
        public void setSymbolTable(SymbolTable<IAst> symbolTable) { this.symbolTable = symbolTable; }
        public SymbolTable<IAst> getSymbolTable() { return symbolTable; }
    ./

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
    /.
        IAst decl;
        public void setDeclaration(IAst decl) { this.decl = decl; }
        public IAst getDeclaration() { return decl; }
    ./

    BadAssignment ::= identifier '=' MissingExpression 
%End

%Headers
    /.
        Stack<SymbolTable<IAst>> symbolTableStack = null;
        SymbolTable<IAst> topLevelSymbolTable = null;
        public SymbolTable<IAst> getTopLevelSymbolTable() { return topLevelSymbolTable; }

        //
        // TODO: In the future, the user will be able to identify scope structures
        // (special non terminals such as block and functionDeclaration below) in
        // the grammar specification that carry symbol table information. The class
        // associated with such symbols will implement a special IScope interface and
        // will be required to specify an implementation of the method "getSymbolTable"
        // that is defined in IScope. Thus, the implementation of this funftion will
        // be simpler as it would only need to search for an instance of IScope.
        //
        public SymbolTable<IAst> getEnclosingSymbolTable(IAst n) {
            for ( ; n != null; n = n.getParent())
                if (n instanceof block)
                     return ((block) n).getSymbolTable();
                else if (n instanceof functionDeclaration)
                     return ((functionDeclaration) n).getSymbolTable();
            return getTopLevelSymbolTable();
        }

        public void resolve($ast_type root) {
            if (root != null) {
                symbolTableStack = new Stack<SymbolTable<IAst>>();
                topLevelSymbolTable = new SymbolTable<IAst>(null);
                symbolTableStack.push(topLevelSymbolTable);
                root.accept(new SymbolTableVisitor());
            }
        }
        
        /*
         * A visitor for ASTs.  Its purpose is to build a symbol table
         * for declared symbols and resolved identifier in expressions.
         */
        private final class SymbolTableVisitor extends AbstractVisitor {
            IPrsStream prs = getIPrsStream();
            ILexStream lex = prs.getILexStream();

            public void unimplementedVisitor(String s) { /* Useful for debugging: System.out.println(s); */ }

            public void emitError(IToken id, String message) {
                lex.getMessageHandler().handleMessage(ParseErrorCodes.NO_MESSAGE_CODE,
                                                      lex.getLocation(id.getStartOffset(), id.getEndOffset()),
                                                      lex.getLocation(0, 0),
                                                      prs.getFileName(),
                                                      new String [] { message });
            }

            public void emitError(IAst node, String message) {
                lex.getMessageHandler().handleMessage(
                    ParseErrorCodes.NO_MESSAGE_CODE,
                    lex.getLocation(
                        node.getLeftIToken().getStartOffset(), node.getRightIToken().getEndOffset()),
                    lex.getLocation(0, 0),
                    prs.getFileName(),
                    new String [] { message });
            }

            public void emitError(int startOffset, int endOffset, String message) {
                lex.getMessageHandler().handleMessage(
                    ParseErrorCodes.NO_MESSAGE_CODE,
                    lex.getLocation(startOffset, endOffset),
                    lex.getLocation(0, 0),
                    prs.getFileName(),
                    new String [] { message });
            }

            public boolean visit(block n) {
                n.setSymbolTable(symbolTableStack.push(new SymbolTable<IAst>(symbolTableStack.peek())));
                return true;
            }

            public void endVisit(block n) { symbolTableStack.pop(); }

            public boolean visit(functionDeclaration n) {
                functionHeader fh = n.getfunctionHeader();
                IToken id = fh.getidentifier().getIToken();
                SymbolTable<IAst> symbol_table = symbolTableStack.peek();
                if (symbol_table.get(id.toString()) == null)
               	     // SMS 11 Jun 2007; pursuant to fixing bug #190
                     //symbol_table.put(id.toString(), fh);
                     symbol_table.put(id.toString(), n);
                else emitError(id, "Illegal redeclaration of " + id.toString());

                //
                // Add a symbol table for the parameters
                //
                n.setSymbolTable(symbolTableStack.push(new SymbolTable<IAst>(symbolTableStack.peek())));

                return true;
            }

            public void endVisit(functionDeclaration n) { symbolTableStack.pop(); }

            public boolean visit(declaration n) {
                IToken id = n.getidentifier().getIToken();
                SymbolTable<IAst> symbol_table = symbolTableStack.peek();
                if (symbol_table.get(id.toString()) == null)
                     symbol_table.put(id.toString(), n);
                else emitError(id, "Illegal redeclaration of " + id.toString());
                return true;
            }

            public boolean visit(identifier n) {
                IToken id = n.getIDENTIFIER();
                IAst decl = symbolTableStack.peek().findDeclaration(id.toString());
                if (decl == null)
                     emitError(id, "Undeclared variable " + id.toString());
                else n.setDeclaration(decl);
                return true;
            }
        } // End SymbolTableVisitor
    ./
%End
