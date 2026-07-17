-- TinyMUD Parser (LPG)
%Options la=2
%Options fp=TinymudParser
%options package=lpg.grammars.tinymud
%options template=dtParserTemplateF.gi
%options import_terminals=TinymudLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    prog
%End
%Rules
    prog ::= line_list opt_eols
    opt_eols ::= %Empty | opt_eols EOL
    line_list ::= line | line_list line
    line ::= command EOL | action EOL

    command ::= AT_BOOT STRING
              | AT_CHOWN STRING EQ STRING
              | AT_CREATE STRING
              | AT_CREATE STRING EQ NUMBER
              | AT_DESCRIBE STRING
              | AT_DESCRIBE STRING EQ STRING
              | AT_DESC STRING
              | AT_DESC STRING EQ STRING
              | AT_DIG STRING
              | AT_DUMP
              | AT_FAIL STRING
              | AT_FAIL STRING EQ STRING
              | AT_FIND
              | AT_FIND STRING
              | AT_FORCE STRING EQ command
              | AT_LINK STRING EQ NUMBER
              | AT_LINK STRING EQ STRING
              | AT_LOCK STRING EQ STRING
              | AT_NAME STRING EQ STRING
              | AT_NAME STRING EQ STRING STRING
              | AT_NEWPASSWORD STRING
              | AT_NEWPASSWORD STRING EQ STRING
              | AT_OFAIL STRING
              | AT_OFAIL STRING EQ STRING
              | AT_OPEN STRING
              | AT_OPEN STRING open_dirs
              | AT_OPEN STRING EQ NUMBER
              | AT_OPEN STRING open_dirs EQ NUMBER
              | AT_OSUCCESS STRING
              | AT_OSUCCESS STRING EQ STRING
              | AT_OSUCC STRING
              | AT_OSUCC STRING EQ STRING
              | AT_PASSWORD STRING EQ STRING
              | AT_PCREATE STRING
              | AT_SET STRING EQ flag_val
              | AT_SHUTDOWN
              | AT_STATS STRING
              | AT_SUCCESS STRING
              | AT_SUCCESS STRING EQ STRING
              | AT_SUCC STRING
              | AT_SUCC STRING EQ STRING
              | AT_TELEPORT STRING
              | AT_TELEPORT STRING EQ STRING
              | AT_TOAD STRING
              | AT_UNLINK STRING
              | AT_UNLOCK STRING
              | AT_WALL STRING

    open_dirs ::= EQ STRING
                | open_dirs EQ STRING
    -- fix: antlr @open dir (',' dir)* - uses COMMA but STRING can have commas?
    -- Looking at antlr: '@open' dir_ (',' dir_)* ('=' number)?
    -- Need COMMA token - add later if needed. For example only @desc/@lock/@fail/@ofail.

    flag_val ::= NUMBER | BANG NUMBER

    action ::= DROP STRING | THROW STRING | EXAMINE STRING
             | GET STRING | TAKE STRING
             | GIVE STRING EQ NUMBER
             | GO STRING | GOTO STRING | MOVE STRING
             | GRIPE STRING | HELP
             | INVENTORY | INV
             | KILL STRING | KILL STRING EQ NUMBER
             | LOOK STRING | READ STRING
             | NEWS | PAGE STRING | PAGE STRING EQ STRING
             | QUIT | ROB STRING | SAY STRING | SCORE
             | WHISPER STRING EQ STRING | WHO | WHO STRING
%End
