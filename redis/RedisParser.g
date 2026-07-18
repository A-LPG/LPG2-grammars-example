-- AUTO-GENERATED from antlr/grammars-v4 redis by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=RedisParser
%options package=lpg.grammars.redis
%options template=dtParserTemplateF.gi
%options import_terminals=RedisLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    root
%End

%Rules
    root ::= opt_1

    -- Unambiguous newline-separated commands (avoid list_2/list_3 NEWLINE conflict).
    commands ::= command
           | commands NEWLINE command
           | commands NEWLINE

    command ::= commonCommand
           | stringCommand
           | listCommand
           | setCommand
           | sortedSetCommand
           | hashCommand

    commonCommand ::= copyCommand
           | deleteCommand
           | unlinkCommand
           | dumpCommand
           | existsCommand
           | expireCommand
           | expireAtCommand
           | expireTimeCommand
           | pExpireCommand
           | pExpireAtCommand
           | pExpireTimeCommand
           | keysCommand
           | moveCommand
           | objectCommand
           | persistCommand
           | ttlCommand
           | pTtlCommand
           | randomKeyCommand
           | renameCommand
           | renameNxCommand
           | scanCommand
           | touchCommand
           | typeCommand
           | waitCommand

    stringCommand ::= stringSetCommand
           | getCommand
           | incrementCommand
           | incrementByCommand
           | decrementCommand
           | decrementByCommand
           | appendCommand
           | getDeleteCommand
           | getExCommand
           | getRangeCommand
           | getSetCommand
           | mGetCommand
           | mSetCommand
           | mSetNxCommand
           | pSetExCommand
           | setExCommand
           | setNxCommand
           | setRangeCommand
           | stringLengthCommand
           | substringCommand

    listCommand ::= lmoveCommand
           | blmoveCommand
           | lmpopCommand
           | blmpopCommand
           | lpopCommand
           | blpopCommand
           | rpopCommand
           | brpopCommand
           | rpopLpushCommand
           | brpopLpushCommand
           | lindexCommand
           | linsertCommand
           | llenCommand
           | lposCommand
           | lpushCommand
           | lpushxCommand
           | rpushCommand
           | rpushxCommand
           | lrangeCommand
           | lremCommand
           | lsetCommand
           | ltrimCommand

    setCommand ::= saddCommand
           | scardCommand
           | sdiffCommand
           | sdiffstoreCommand
           | sinterCommand
           | sintercardCommand
           | sinterstoreCommand
           | sismemberCommand
           | smismemberCommand
           | smembersCommand
           | smoveCommand
           | spopCommand
           | srandmemberCommand
           | sremCommand
           | sscanComman
           | sunionCommand
           | sunionstoreCommand

    sortedSetCommand ::= zmpopCommand
           | bzmpopCommand
           | zpopmaxCommand
           | bzpopmaxCommand
           | zpopminCommand
           | bzpopminCommand
           | zaddCommand
           | zcardCommand
           | zcountCommand
           | zdiffCommand
           | zdiffstoreCommand
           | zincrbyCommand
           | zinterCommand
           | zintercardCommand
           | zinterstoreCommand
           | zlexcountCommand
           | zscoreCommand
           | zmscoreCommand
           | zrandmemberCommand
           | zrangeCommand
           | zrangebylexCommand
           | zrangebyscoreCommand
           | zrangestoreCommand
           | zrankCommand
           | zrevrankCommand
           | zremCommand
           | zremrangebylexCommand
           | zremrangebyrankCommand
           | zremrangebyscoreCommand
           | zrevrangeCommand
           | zrevrangebylexCommand
           | zrevrangebyscoreCommand
           | zscanCommand
           | zunionCommand
           | zunionstoreCommand

    hashCommand ::= hdelCommand
           | hexistsCommand
           | hexpireCommand
           | hpexpireCommand
           | hexpireAtCommand
           | hpexpireAtCommand
           | hexpireTimeCommand
           | hpexpireTimeCommand
           | hgetCommand
           | hgetAllCommand
           | hincrByCommand
           | hkeysCommand
           | hlenCommand
           | hmgetCommand
           | hsetCommand
           | hmsetCommand
           | hsetnxCommand
           | hpersistCommand
           | httlCommand
           | hpttlCommand
           | hrandfieldCommand
           | hscanCommand
           | hstrlenCommand
           | hvalsCommand

    hdelCommand ::= HDEL hashKeyName list_4

    hexistsCommand ::= HEXISTS hashKeyName identifier

    hexpireCommand ::= HEXPIRE hashKeyName decimal opt_5 fieldsClause

    hpexpireCommand ::= HPEXPIRE hashKeyName decimal opt_6 fieldsClause

    fieldsClause ::= FIELDS POSITIVE_DECIMAL_LITERAL list_7

    hexpireAtCommand ::= HEXPIREAT hashKeyName decimal opt_8 fieldsClause

    hpexpireAtCommand ::= HPEXPIREAT hashKeyName decimal opt_9 fieldsClause

    hexpireTimeCommand ::= HEXPIRETIME hashKeyName fieldsClause

    hpexpireTimeCommand ::= HPEXPIRETIME hashKeyName fieldsClause

    hgetCommand ::= HGET hashKeyName identifier

    hmgetCommand ::= HMGET hashKeyName list_10

    hgetAllCommand ::= HGETALL hashKeyName

    hincrByCommand ::= HINCRBY hashKeyName identifier decimal

    hkeysCommand ::= HKEYS hashKeyName

    hlenCommand ::= HLEN hashKeyName

    hsetCommand ::= HSET hashKeyName list_12

    hmsetCommand ::= HMSET hashKeyName list_14

    hsetnxCommand ::= HSETNX hashKeyName identifier identifier

    hpersistCommand ::= HPERSIST hashKeyName fieldsClause

    httlCommand ::= HTTL hashKeyName fieldsClause

    hpttlCommand ::= HPTTL hashKeyName fieldsClause

    hrandfieldCommand ::= HRANDFIELD hashKeyName opt_17

    hscanCommand ::= HSCAN hashKeyName decimal opt_18 opt_19 opt_20

    hstrlenCommand ::= HSTRLEN hashKeyName identifier

    hvalsCommand ::= HVALS hashKeyName

    zmpopCommand ::= ZMPOP POSITIVE_DECIMAL_LITERAL list_21 minMaxClause opt_22

    bzmpopCommand ::= BZMPOP POSITIVE_DECIMAL_LITERAL POSITIVE_DECIMAL_LITERAL list_23 minMaxClause opt_24

    zpopmaxCommand ::= ZPOPMAX sortedSetKeyName opt_25

    bzpopmaxCommand ::= BZPOPMAX list_26 POSITIVE_DECIMAL_LITERAL

    zpopminCommand ::= ZPOPMIN sortedSetKeyName opt_27

    bzpopminCommand ::= BZPOPMIN list_28 POSITIVE_DECIMAL_LITERAL

    minMaxClause ::= MIN
           | MAX

    zaddCommand ::= ZADD sortedSetKeyName opt_29 opt_30 opt_31 opt_32 list_33

    keyUpdateClause ::= GT
           | LT

    scoreMemberClause ::= decimal identifier

    zcardCommand ::= ZCARD sortedSetKeyName

    zcountCommand ::= ZCOUNT sortedSetKeyName decimalScore decimalScore

    zdiffCommand ::= ZDIFF POSITIVE_DECIMAL_LITERAL list_34 opt_35

    zdiffstoreCommand ::= ZDIFFSTORE identifier POSITIVE_DECIMAL_LITERAL list_36

    zincrbyCommand ::= ZINCRBY sortedSetKeyName decimal identifier

    zinterCommand ::= ZINTER POSITIVE_DECIMAL_LITERAL list_37 opt_38 opt_39 opt_40

    zintercardCommand ::= ZINTERCARD POSITIVE_DECIMAL_LITERAL list_41 opt_42

    zinterstoreCommand ::= ZINTERSTORE identifier POSITIVE_DECIMAL_LITERAL list_43 opt_44 opt_45

    weightsClause ::= WEIGHTS list_46

    aggregateClause ::= AGGREGATE grp_47

    zlexcountCommand ::= ZLEXCOUNT sortedSetKeyName lexicalScore lexicalScore

    zscoreCommand ::= ZSCORE sortedSetKeyName identifier

    zmscoreCommand ::= ZMSCORE sortedSetKeyName list_48

    zrandmemberCommand ::= ZRANDMEMBER sortedSetKeyName opt_51

    zrangeCommand ::= ZRANGE sortedSetKeyName lexicalScore lexicalScore opt_52 opt_53 opt_54 opt_55

    zrangebylexCommand ::= ZRANGEBYLEX sortedSetKeyName lexicalScore lexicalScore opt_56

    zrangebyscoreCommand ::= ZRANGEBYSCORE sortedSetKeyName decimalScore decimalScore opt_57 opt_58

    zrangestoreCommand ::= ZRANGESTORE identifier sortedSetKeyName lexicalScore lexicalScore opt_59 opt_60 opt_61

    rangeTypeClause ::= BYSCORE
           | BYLEX

    limitOffsetClause ::= LIMIT decimal decimal

    zrankCommand ::= ZRANK sortedSetKeyName identifier opt_62

    zrevrankCommand ::= ZREVRANK sortedSetKeyName identifier opt_63

    zremCommand ::= ZREM sortedSetKeyName list_64

    zremrangebylexCommand ::= ZREMRANGEBYLEX sortedSetKeyName lexicalScore lexicalScore

    zremrangebyrankCommand ::= ZREMRANGEBYRANK sortedSetKeyName decimal decimal

    zremrangebyscoreCommand ::= ZREMRANGEBYSCORE sortedSetKeyName decimalScore decimalScore

    zrevrangeCommand ::= ZREVRANGE sortedSetKeyName decimal decimal opt_65

    zrevrangebylexCommand ::= ZREVRANGEBYLEX sortedSetKeyName lexicalScore lexicalScore opt_66

    zrevrangebyscoreCommand ::= ZREVRANGEBYSCORE sortedSetKeyName decimalScore decimalScore opt_67 opt_68

    zscanCommand ::= ZSCAN sortedSetKeyName decimal opt_69 opt_70

    zunionCommand ::= ZUNION POSITIVE_DECIMAL_LITERAL list_71 opt_72 opt_73 opt_74

    zunionstoreCommand ::= ZUNIONSTORE identifier POSITIVE_DECIMAL_LITERAL list_75 opt_76 opt_77

    saddCommand ::= SADD setKeyName list_78

    scardCommand ::= SCARD setKeyName

    sdiffCommand ::= SDIFF list_79

    sdiffstoreCommand ::= SDIFFSTORE identifier list_80

    sinterCommand ::= SINTER list_81

    sintercardCommand ::= SINTERCARD POSITIVE_DECIMAL_LITERAL list_82 opt_83

    limitClause ::= LIMIT POSITIVE_DECIMAL_LITERAL

    sinterstoreCommand ::= SINTERSTORE identifier list_84

    sismemberCommand ::= SISMEMBER setKeyName identifier

    smismemberCommand ::= SMISMEMBER setKeyName list_85

    smembersCommand ::= SMEMBERS setKeyName

    smoveCommand ::= SMOVE setKeyName setKeyName

    spopCommand ::= SPOP setKeyName opt_86

    srandmemberCommand ::= SRANDMEMBER setKeyName opt_87

    sremCommand ::= SREM setKeyName list_88

    sscanComman ::= SSCAN setKeyName decimal opt_89 opt_90

    sunionCommand ::= SUNION list_91

    sunionstoreCommand ::= SUNIONSTORE identifier list_92

    lmoveCommand ::= LMOVE listKeyName listKeyName leftOrRightClause leftOrRightClause

    leftOrRightClause ::= LEFT
           | RIGHT

    blmoveCommand ::= BLMOVE listKeyName listKeyName leftOrRightClause leftOrRightClause POSITIVE_DECIMAL_LITERAL

    lmpopCommand ::= LMPOP POSITIVE_DECIMAL_LITERAL list_93 leftOrRightClause opt_94

    blmpopCommand ::= BLMPOP POSITIVE_DECIMAL_LITERAL POSITIVE_DECIMAL_LITERAL list_95 leftOrRightClause opt_96

    lpopCommand ::= LPOP listKeyName opt_97

    blpopCommand ::= BLPOP list_98 POSITIVE_DECIMAL_LITERAL

    rpopCommand ::= RPOP listKeyName opt_99

    brpopCommand ::= BRPOP list_100 POSITIVE_DECIMAL_LITERAL

    rpopLpushCommand ::= RPOPLPUSH listKeyName listKeyName

    brpopLpushCommand ::= BRPOPLPUSH listKeyName listKeyName POSITIVE_DECIMAL_LITERAL

    lindexCommand ::= LINDEX listKeyName decimal

    linsertCommand ::= LINSERT listKeyName beforeOrAfterClause identifier identifier

    beforeOrAfterClause ::= BEFORE
           | AFTER

    llenCommand ::= LLEN listKeyName

    lposCommand ::= LPOS listKeyName identifier opt_101 opt_102 opt_103

    rankClause ::= RANK decimal

    maxLenClause ::= MAXLEN POSITIVE_DECIMAL_LITERAL

    lpushCommand ::= LPUSH listKeyName list_104

    lpushxCommand ::= LPUSHX listKeyName list_105

    rpushCommand ::= RPUSH listKeyName list_106

    rpushxCommand ::= RPUSHX listKeyName list_107

    lrangeCommand ::= LRANGE listKeyName decimal decimal

    lremCommand ::= LREM listKeyName decimal identifier

    lsetCommand ::= LSET listKeyName decimal identifier

    ltrimCommand ::= LTRIM listKeyName decimal decimal

    copyCommand ::= COPY keyName identifier opt_108 opt_109

    dbClause ::= DB databaseName

    databaseName ::= POSITIVE_DECIMAL_LITERAL

    deleteCommand ::= DEL list_110

    unlinkCommand ::= UNLINK list_111

    dumpCommand ::= DUMP keyName

    existsCommand ::= EXISTS list_112

    expireCommand ::= EXPIRE keyName decimal opt_113

    expireAtCommand ::= EXPIREAT keyName decimal opt_114

    pExpireCommand ::= PEXPIRE keyName decimal opt_115

    pExpireAtCommand ::= PEXPIREAT keyName decimal opt_116

    expireOptions ::= NX
           | XX
           | GT
           | LT

    expireTimeCommand ::= EXPIRETIME keyName

    pExpireTimeCommand ::= PEXPIRETIME keyName

    keysCommand ::= KEYS keyPattern

    moveCommand ::= MOVE keyName databaseName

    objectCommand ::= OBJECT objectOptions keyName

    objectOptions ::= ENCODING
           | FREQ
           | IDLETIME
           | REFCOUNT

    persistCommand ::= PERSIST keyName

    ttlCommand ::= TTL keyName

    pTtlCommand ::= PTTL keyName

    randomKeyCommand ::= RANDOMKEY

    renameCommand ::= RENAME keyName identifier

    renameNxCommand ::= RENAMENX keyName identifier

    scanCommand ::= SCAN decimal opt_117 opt_118 opt_119

    matchClause ::= MATCH keyPattern

    countClause ::= COUNT POSITIVE_DECIMAL_LITERAL

    typeClause ::= TYPE identifier

    touchCommand ::= TOUCH list_120

    typeCommand ::= TYPE keyName

    waitCommand ::= WAIT POSITIVE_DECIMAL_LITERAL POSITIVE_DECIMAL_LITERAL

    stringSetCommand ::= SET stringKeyName identifier opt_121 opt_122 opt_124

    keyExistenceClause ::= NX
           | XX

    expirationClause ::= EX POSITIVE_DECIMAL_LITERAL
           | PX POSITIVE_DECIMAL_LITERAL
           | EXAT POSITIVE_DECIMAL_LITERAL
           | PXAT POSITIVE_DECIMAL_LITERAL

    getCommand ::= GET stringKeyName

    incrementCommand ::= INCR stringKeyName

    incrementByCommand ::= INCRBY stringKeyName decimal

    decrementCommand ::= DECR stringKeyName

    decrementByCommand ::= DECRBY stringKeyName decimal

    appendCommand ::= APPEND stringKeyName identifier

    getDeleteCommand ::= GETDEL stringKeyName

    getExCommand ::= GETEX stringKeyName opt_126

    getRangeCommand ::= GETRANGE stringKeyName decimal decimal

    getSetCommand ::= GETSET stringKeyName identifier

    mGetCommand ::= MGET list_127

    mSetCommand ::= MSET list_129

    mSetNxCommand ::= MSETNX list_131

    pSetExCommand ::= PSETEX stringKeyName POSITIVE_DECIMAL_LITERAL identifier

    setExCommand ::= SETEX stringKeyName POSITIVE_DECIMAL_LITERAL identifier

    setNxCommand ::= SETNX stringKeyName identifier

    setRangeCommand ::= SETRANGE stringKeyName POSITIVE_DECIMAL_LITERAL identifier

    stringLengthCommand ::= STRLEN stringKeyName

    substringCommand ::= SUBSTR stringKeyName decimal decimal

    decimal ::= POSITIVE_DECIMAL_LITERAL
           | DECIMAL_LITERAL

    decimalScore ::= POSITIVE_DECIMAL_LITERAL
           | DECIMAL_LITERAL
           | DECIMAL_SCORE_LITERAL

    identifier ::= IDENTIFIER
           | DECIMAL_LITERAL
           | POSITIVE_DECIMAL_LITERAL
           | DECIMAL_SCORE_LITERAL

    lexicalScore ::= identifier

    stringKeyName ::= identifier

    listKeyName ::= identifier

    setKeyName ::= identifier

    sortedSetKeyName ::= identifier

    hashKeyName ::= identifier

    keyName ::= identifier

    keyPattern ::= identifier

    opt_1 ::= commands | $empty

    list_4 ::= identifier | list_4 identifier

    opt_5 ::= expireOptions | $empty

    opt_6 ::= expireOptions | $empty

    list_7 ::= identifier | list_7 identifier

    opt_8 ::= expireOptions | $empty

    opt_9 ::= expireOptions | $empty

    list_10 ::= identifier | list_10 identifier

    seq_11 ::= identifier identifier

    list_12 ::= seq_11 | list_12 seq_11

    seq_13 ::= identifier identifier

    list_14 ::= seq_13 | list_14 seq_13

    opt_15 ::= WITHVALUES | $empty

    seq_16 ::= decimal opt_15

    opt_17 ::= seq_16 | $empty

    opt_18 ::= matchClause | $empty

    opt_19 ::= countClause | $empty

    opt_20 ::= NOVALUES | $empty

    list_21 ::= sortedSetKeyName | list_21 sortedSetKeyName

    opt_22 ::= countClause | $empty

    list_23 ::= sortedSetKeyName | list_23 sortedSetKeyName

    opt_24 ::= countClause | $empty

    opt_25 ::= POSITIVE_DECIMAL_LITERAL | $empty

    list_26 ::= sortedSetKeyName | list_26 sortedSetKeyName

    opt_27 ::= POSITIVE_DECIMAL_LITERAL | $empty

    list_28 ::= sortedSetKeyName | list_28 sortedSetKeyName

    opt_29 ::= keyExistenceClause | $empty

    opt_30 ::= keyUpdateClause | $empty

    opt_31 ::= CH | $empty

    opt_32 ::= INCR | $empty

    list_33 ::= scoreMemberClause | list_33 scoreMemberClause

    list_34 ::= sortedSetKeyName | list_34 sortedSetKeyName

    opt_35 ::= WITHSCORES | $empty

    list_36 ::= sortedSetKeyName | list_36 sortedSetKeyName

    list_37 ::= sortedSetKeyName | list_37 sortedSetKeyName

    opt_38 ::= weightsClause | $empty

    opt_39 ::= aggregateClause | $empty

    opt_40 ::= WITHSCORES | $empty

    list_41 ::= sortedSetKeyName | list_41 sortedSetKeyName

    opt_42 ::= limitClause | $empty

    list_43 ::= sortedSetKeyName | list_43 sortedSetKeyName

    opt_44 ::= weightsClause | $empty

    opt_45 ::= aggregateClause | $empty

    list_46 ::= decimal | list_46 decimal

    grp_47 ::= MIN | MAX | SUM

    list_48 ::= identifier | list_48 identifier

    opt_49 ::= WITHSCORES | $empty

    seq_50 ::= decimal opt_49

    opt_51 ::= seq_50 | $empty

    opt_52 ::= rangeTypeClause | $empty

    opt_53 ::= REV | $empty

    opt_54 ::= limitOffsetClause | $empty

    opt_55 ::= WITHSCORES | $empty

    opt_56 ::= limitOffsetClause | $empty

    opt_57 ::= WITHSCORES | $empty

    opt_58 ::= limitOffsetClause | $empty

    opt_59 ::= rangeTypeClause | $empty

    opt_60 ::= REV | $empty

    opt_61 ::= limitOffsetClause | $empty

    opt_62 ::= WITHSCORE | $empty

    opt_63 ::= WITHSCORE | $empty

    list_64 ::= identifier | list_64 identifier

    opt_65 ::= WITHSCORES | $empty

    opt_66 ::= limitOffsetClause | $empty

    opt_67 ::= WITHSCORES | $empty

    opt_68 ::= limitOffsetClause | $empty

    opt_69 ::= matchClause | $empty

    opt_70 ::= countClause | $empty

    list_71 ::= sortedSetKeyName | list_71 sortedSetKeyName

    opt_72 ::= weightsClause | $empty

    opt_73 ::= aggregateClause | $empty

    opt_74 ::= WITHSCORES | $empty

    list_75 ::= sortedSetKeyName | list_75 sortedSetKeyName

    opt_76 ::= weightsClause | $empty

    opt_77 ::= aggregateClause | $empty

    list_78 ::= identifier | list_78 identifier

    list_79 ::= setKeyName | list_79 setKeyName

    list_80 ::= setKeyName | list_80 setKeyName

    list_81 ::= setKeyName | list_81 setKeyName

    list_82 ::= setKeyName | list_82 setKeyName

    opt_83 ::= limitClause | $empty

    list_84 ::= setKeyName | list_84 setKeyName

    list_85 ::= identifier | list_85 identifier

    opt_86 ::= POSITIVE_DECIMAL_LITERAL | $empty

    opt_87 ::= decimal | $empty

    list_88 ::= identifier | list_88 identifier

    opt_89 ::= matchClause | $empty

    opt_90 ::= countClause | $empty

    list_91 ::= setKeyName | list_91 setKeyName

    list_92 ::= setKeyName | list_92 setKeyName

    list_93 ::= listKeyName | list_93 listKeyName

    opt_94 ::= countClause | $empty

    list_95 ::= listKeyName | list_95 listKeyName

    opt_96 ::= countClause | $empty

    opt_97 ::= POSITIVE_DECIMAL_LITERAL | $empty

    list_98 ::= listKeyName | list_98 listKeyName

    opt_99 ::= POSITIVE_DECIMAL_LITERAL | $empty

    list_100 ::= listKeyName | list_100 listKeyName

    opt_101 ::= rankClause | $empty

    opt_102 ::= countClause | $empty

    opt_103 ::= maxLenClause | $empty

    list_104 ::= identifier | list_104 identifier

    list_105 ::= identifier | list_105 identifier

    list_106 ::= identifier | list_106 identifier

    list_107 ::= identifier | list_107 identifier

    opt_108 ::= dbClause | $empty

    opt_109 ::= REPLACE | $empty

    list_110 ::= keyName | list_110 keyName

    list_111 ::= keyName | list_111 keyName

    list_112 ::= keyName | list_112 keyName

    opt_113 ::= expireOptions | $empty

    opt_114 ::= expireOptions | $empty

    opt_115 ::= expireOptions | $empty

    opt_116 ::= expireOptions | $empty

    opt_117 ::= matchClause | $empty

    opt_118 ::= countClause | $empty

    opt_119 ::= typeClause | $empty

    list_120 ::= keyName | list_120 keyName

    opt_121 ::= keyExistenceClause | $empty

    opt_122 ::= GET | $empty

    grp_123 ::= expirationClause | KEEPTTL

    opt_124 ::= grp_123 | $empty

    grp_125 ::= expirationClause | PERSIST

    opt_126 ::= grp_125 | $empty

    list_127 ::= stringKeyName | list_127 stringKeyName

    seq_128 ::= stringKeyName identifier

    list_129 ::= seq_128 | list_129 seq_128

    seq_130 ::= stringKeyName identifier

    list_131 ::= seq_130 | list_131 seq_130

%End
