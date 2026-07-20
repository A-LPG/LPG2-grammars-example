-- Stacktrace Parser (LPG)
%Options la=3
%Options fp=StacktraceParser
%options package=lpg.grammars.stacktrace
%options template=dtParserTemplateF.gi
%options import_terminals=StacktraceLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    startRule
%End
%Rules
    startRule ::= stackTrace

    stackTrace ::= messageLine stackTraceLines_opt causedBy_opt

    messageLine ::= dottedName
                  | dottedName COLON msg_tail
    msg_tail ::= JAVAWORD
               | NUMBER
               | msg_tail JAVAWORD
               | msg_tail NUMBER

    stackTraceLines_opt ::= $empty | stackTraceLines
    stackTraceLines ::= stackTraceLine | stackTraceLines stackTraceLine
    stackTraceLine ::= atLine | ellipsisLine

    atLine ::= AT dottedName LPAREN classFile opt_line RPAREN
    opt_line ::= $empty | COLON NUMBER

    dottedName ::= JAVAWORD
                 | dottedName DOT JAVAWORD
                 | dottedName DOT INIT
                 | dottedName DOLLAR JAVAWORD

    classFile ::= JAVAWORD DOT JAVAWORD
                | NATIVE_METHOD
                | UNKNOWN_SOURCE

    ellipsisLine ::= ELLIPSIS NUMBER MORE_
    causedBy_opt ::= $empty | CAUSED_BY stackTrace
%End
