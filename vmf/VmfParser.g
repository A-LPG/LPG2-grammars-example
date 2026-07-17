-- VMF Parser (LPG)
-- Ported from antlr/grammars-v4 vmf/vmf.g4 for parse-level examples.

%Options la=2
%Options fp=VmfParser
%options package=lpg.grammars.vmf
%options template=dtParserTemplateF.gi
%options import_terminals=VmfLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    vmf
%End

%Rules
    -- vmf : keyvalue+ EOF
    vmf ::= keyvalues

    keyvalues ::= keyvalue
                | keyvalues keyvalue

    -- Upstream allows atomicvalue+ | listvalue+; examples use exactly one value
    -- per key. Restricting to one value avoids LALR absorb of the next key name
    -- into the previous key's atomicvalue list (e.g. skyname ... solid {).
    keyvalue ::= key val
               | key listvalue

    key ::= val

    -- listvalue : '{' keyvalue* '}'
    listvalue ::= LBRACE RBRACE
                | LBRACE keyvalues RBRACE

    val ::= QUOTEDSTRING
          | STRING
%End
