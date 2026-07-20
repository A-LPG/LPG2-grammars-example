-- SemanticVersion Parser (LPG)
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Ported from antlr/grammars-v4 semver/SemanticVersionParser.g4

%Options la=2,ebnf
%Options fp=SemverParser
%options package=lpg.grammars.semver
%options template=dtParserTemplateF.gi
%options import_terminals=SemverLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    semver
%End

%Rules
    semver ::= versionCore
             | versionCore DASH preRelease
             | versionCore DASH preRelease PLUS build
             | versionCore PLUS build

    versionCore ::= NUMBER DOT NUMBER DOT NUMBER

    tag ::= ALPHA | BETA | RC | SNAPSHOT | PREVIEW | DEV
          | MILESTONE | DAILY | NIGHTLY | BUILD | TEST | EXPERIMENTAL

    -- left-recursive like ANTLR: parts joined by optional DOT/DASH or adjacency
    preRelease ::= preAtom
                 | preRelease preAtom
                 | preRelease DOT preAtom
                 | preRelease DASH preAtom

    preAtom ::= NUMBER
              | DASH
              | IDENTIFIER
              | tag

    build ::= buildAtom
            | build buildAtom
            | build DOT buildAtom
            | build DASH buildAtom

    buildAtom ::= NUMBER
                | DASH
                | IDENTIFIER
                | tag
%End
