-- MemcachedParser (LPG)
%Options la=2
%Options fp=MemcachedParser
%options package=lpg.grammars.memcached_protocol
%options template=dtParserTemplateF.gi
%options import_terminals=MemcachedLexer.gi
%options automatic_ast=nested
%Eof
    EOF_TOKEN
%End
%Start
    command_line
%End
%Rules

    command_line ::= commands
    commands ::= command | commands command

    command ::= storage_command
              | retrieval_command
              | delete_command
              | increment_command
              | decrement_command
              | statistics_command
              | flush_command
              | version_command
              | verbosity_command
              | quit_command

    storage_command ::= storage_command_name key flags exptime bytes opt_noreply
                      | CAS key flags exptime bytes cas_unique opt_noreply

    storage_command_name ::= SET | ADD | REPLACE | APPEND | PREPEND
    opt_noreply ::= $empty | NOREPLY

    retrieval_command ::= get_kw keys
    get_kw ::= GET | GETS
    keys ::= key | keys key

    delete_command ::= DELETE key opt_time opt_noreply
    opt_time ::= $empty | time

    increment_command ::= INCR key value opt_noreply
    decrement_command ::= DECR key value opt_noreply

    statistics_command ::= STATS opt_stats_opt
    opt_stats_opt ::= $empty | statistics_option
    statistics_option ::= ITEMS | SLABS | SIZES

    flush_command ::= FLUSH_ALL opt_delay opt_noreply
    opt_delay ::= $empty | delay

    version_command ::= VERSION
    verbosity_command ::= VERBOSITY verbosity_level
    quit_command ::= QUIT

    key ::= IDENTIFIER | INTEGER
    flags ::= INTEGER
    exptime ::= INTEGER
    bytes ::= INTEGER
    cas_unique ::= INTEGER
    value ::= INTEGER
    time ::= INTEGER
    delay ::= INTEGER
    verbosity_level ::= INTEGER

%End
