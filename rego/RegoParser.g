-- Rego parser — structural port of grammars-v4 rego/RegoParser.g4
-- Nonterminals: root / stmt / regoPackage / importDirective / regoRules / query…

%Options la=2
%Options fp=RegoParser
%options package=lpg.grammars.rego
%options template=dtParserTemplateF.gi
%options import_terminals=RegoLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    root
%End

%Rules
    root ::= $empty
           | stmts

    stmts ::= stmt
            | stmts stmt

    stmt ::= regoPackage
           | importDirective
           | regoRules
           | regoBody

    regoPackage ::= Package ref

    importDirective ::= Import ref
                      | Import ref As ref

    regoRules ::= Default Name EqOper term
                | ruleHead
                | ruleHead ruleBodies

    ruleBodies ::= ruleBody
                 | ruleBodies ruleBody

    ruleHead ::= Name
               | Name LParan RParan
               | Name LParan exprTermList RParan
               | Name LSBrace exprTerm RSBrace
               | Name EqOper exprTerm
               | Name LParan RParan EqOper exprTerm
               | Name LParan exprTermList RParan EqOper exprTerm
               | Name LSBrace exprTerm RSBrace EqOper exprTerm

    ruleBody ::= nonEmptyBraceEnclosedBody
               | Else nonEmptyBraceEnclosedBody
               | Else EqOper exprTerm nonEmptyBraceEnclosedBody

    regoBody ::= query
               | nonEmptyBraceEnclosedBody

    nonEmptyBraceEnclosedBody ::= LCBrace query RCBrace

    query ::= literal
            | query literal
            | query Semicolon literal

    literal ::= literalExpr
              | Not literalExpr
              | literalExpr withKeywords
              | Not literalExpr withKeywords

    withKeywords ::= withKeyword
                   | withKeywords withKeyword

    literalExpr ::= exprTerm
                  | literalExpr EqOper exprTerm

    withKeyword ::= With exprTerm As exprTerm

    functionCall ::= ref LParan RParan
                   | ref LParan exprTermList RParan

    exprTermPair ::= exprTerm Colon exprTerm

    termPair ::= term Colon term

    exprTerm ::= relationExpr
               | exprTerm RelationOperator relationExpr

    exprTermList ::= exprTerm
                   | exprTermList Comma exprTerm

    relationExpr ::= bitwiseOrExpr
                   | relationExpr Mid bitwiseOrExpr

    bitwiseOrExpr ::= bitwiseAndExpr
                    | bitwiseOrExpr Ampersand bitwiseAndExpr

    bitwiseAndExpr ::= arithExpr
                     | bitwiseAndExpr ArithOperator arithExpr

    arithExpr ::= factorExpr
                | arithExpr FactorOperator factorExpr

    factorExpr ::= LParan exprTerm RParan
                 | term

    term ::= arrayComprehension
           | objectComprehension
           | setComprehension
           | object_
           | array_
           | set_
           | scalar
           | ArithOperator scalar
           | functionCall
           | ref
           | Not ref

    arrayComprehension ::= LSBrace term Mid query RSBrace

    setComprehension ::= LCBrace term Mid query RCBrace

    objectComprehension ::= LCBrace termPair Mid query RCBrace

    object_ ::= LCBrace RCBrace
              | LCBrace objectItems RCBrace
              | LCBrace objectItems Comma RCBrace

    objectItems ::= objectItem
                  | objectItems Comma objectItem

    objectItem ::= scalar Colon term
                 | ref Colon term

    array_ ::= LSBrace RSBrace
             | LSBrace exprTermList RSBrace

    set_ ::= emptySet
           | nonEmptySet

    emptySet ::= Set RParan

    nonEmptySet ::= LCBrace exprTermList RCBrace

    ref ::= Name
          | ref refOperand

    refOperand ::= Dot Name
                 | LSBrace exprTerm RSBrace

    scalar ::= UnsignedNumber
             | String
             | Bool
             | Null
%End
