-- CLIF Parser (LPG) — covers module.clif example suite
%Options la=2
%Options fp=ClifParser
%options package=lpg.grammars.clif
%options template=dtParserTemplateF.gi
%options import_terminals=ClifLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    cltext
%End
%Rules
    cltext ::= module | namedtext | text

    namedtext ::= OPEN CL_TEXT interpretablename opt_text CLOSE
    opt_text ::= $empty | text

    text ::= phrase | text phrase

    phrase ::= sentence
             | module
             | OPEN CL_IMPORTS interpretablename CLOSE
             | OPEN CL_COMMENT ENCLOSEDNAME opt_cltext CLOSE

    opt_cltext ::= $empty | cltext

    module ::= OPEN CL_MODULE interpretablename module_body CLOSE
    -- after name: optional excludes and/or phrases (e.g. cl-imports)
    module_body ::= $empty
                  | OPEN CL_EXCLUDES names CLOSE opt_cltext
                  | text
    names ::= $empty | names name

    sentence ::= atomsent | boolsent | quantsent | commentsent

    atomsent ::= equation | atom
    equation ::= OPEN EQUAL term term CLOSE
    atom ::= OPEN predicate termseq CLOSE
           | OPEN term OPEN CL_ROLESET OPEN name term CLOSE CLOSE CLOSE

    predicate ::= term
    boolsent ::= OPEN AND sentences CLOSE
               | OPEN OR sentences CLOSE
               | OPEN IF sentence sentence CLOSE
               | OPEN IFF sentence sentence CLOSE
               | OPEN NOT sentence CLOSE

    sentences ::= $empty | sentences sentence

    quantsent ::= OPEN FORALL opt_iname boundlist sentence CLOSE
                | OPEN EXISTS opt_iname boundlist sentence CLOSE
    opt_iname ::= $empty | interpretablename

    boundlist ::= OPEN bound_items CLOSE
    bound_items ::= $empty | bound_items bound_item
    bound_item ::= interpretablename | SEQMARK
                 | OPEN interpretablename term CLOSE
                 | OPEN SEQMARK term CLOSE

    commentsent ::= OPEN CL_COMMENT ENCLOSEDNAME sentence CLOSE

    termseq ::= $empty | termseq term | termseq SEQMARK

    term ::= name
           | OPEN operator_ termseq CLOSE
           | OPEN CL_COMMENT QUOTEDSTRING term CLOSE

    operator_ ::= term

    name ::= interpretedname | interpretablename
    interpretedname ::= NUMERAL | QUOTEDSTRING
    interpretablename ::= IDENTIFIER | ENCLOSEDNAME
                        | AND | OR | IFF | IF | FORALL | EXISTS | NOT
                        | CL_ROLESET | CL_TEXT | CL_IMPORTS | CL_EXCLUDES
                        | CL_MODULE | CL_COMMENT | CL_PREFIX
%End
