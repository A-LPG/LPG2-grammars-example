-- Unicode 16 codepoint classifier parser from grammars-v4 unicode/unicode16/classify.g4
-- Parser rules are tiny by design; substance is lexer CLASSIFY_* ranges (subset).
-- real_g4_port / language_subset: ASCII + common Latin blocks; full BMP table is blocker.

%Options la=2
%Options fp=UnicodeUnicode16Parser
%options package=lpg.grammars.unicode.unicode16
%options template=dtParserTemplateF.gi
%options import_terminals=UnicodeUnicode16Lexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    file_
%End

%Rules
    -- file_ : codepoint+ EOF  (classifier stream; g4 is single codepoint —
    -- multi-codepoint start lets harness exercise real text, not one-char toys)
    file_ ::= codepoints

    codepoints ::= codepoint
           | codepoints codepoint

    -- codepoint : CLASSIFY___ | CLASSIFY_Cc | ... (all Unicode general categories)
    codepoint ::= CLASSIFY___
           | CLASSIFY_Cc
           | CLASSIFY_Cf
           | CLASSIFY_Cn
           | CLASSIFY_Co
           | CLASSIFY_Cs
           | CLASSIFY_Ll
           | CLASSIFY_Lm
           | CLASSIFY_Lo
           | CLASSIFY_Lt
           | CLASSIFY_Lu
           | CLASSIFY_Mc
           | CLASSIFY_Me
           | CLASSIFY_Mn
           | CLASSIFY_Nd
           | CLASSIFY_Nl
           | CLASSIFY_No
           | CLASSIFY_Pc
           | CLASSIFY_Pd
           | CLASSIFY_Pe
           | CLASSIFY_Pf
           | CLASSIFY_Pi
           | CLASSIFY_Po
           | CLASSIFY_Ps
           | CLASSIFY_Sc
           | CLASSIFY_Sk
           | CLASSIFY_Sm
           | CLASSIFY_So
           | CLASSIFY_Zl
           | CLASSIFY_Zp
           | CLASSIFY_Zs
%End
