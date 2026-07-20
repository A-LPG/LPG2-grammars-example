-- RPN Parser (LPG)
%Options la=2
%Options fp=RpnParser
%options package=lpg.grammars.rpn
%options template=dtParserTemplateF.gi
%options import_terminals=RpnLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    expression
%End
%Rules
    expression ::= signedAtom terms_opt
    terms_opt ::= $empty | terms
    terms ::= term | terms term
    term ::= signedAtom | oper
    oper ::= POW | PLUS | MINUS | TIMES | DIV | COS | TAN | SIN | ACOS | ATAN | ASIN | LOG | LN
    signedAtom ::= PLUS signedAtom
                 | MINUS signedAtom
                 | SCIENTIFIC_NUMBER
                 | VARIABLE
%End
