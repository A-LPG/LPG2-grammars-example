-- Redis keyword filter (FoldedCase; from RedisLexer.g4)
%options package=lpg.grammars.redis
%options template=KeywordTemplateF.gi
%options fp=RedisKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    AFTER
    AGGREGATE
    APPEND
    BEFORE
    BLMOVE
    BLMPOP
    BLPOP
    BRPOP
    BRPOPLPUSH
    BYLEX
    BYSCORE
    BZMPOP
    BZPOPMAX
    BZPOPMIN
    CH
    COPY
    COUNT
    DB
    DECR
    DECRBY
    DEL
    DUMP
    ENCODING
    EX
    EXAT
    EXISTS
    EXPIRE
    EXPIREAT
    EXPIRETIME
    FIELDS
    FREQ
    GET
    GETDEL
    GETEX
    GETRANGE
    GETSET
    GT
    HDEL
    HEXISTS
    HEXPIRE
    HEXPIREAT
    HEXPIRETIME
    HGET
    HGETALL
    HINCRBY
    HKEYS
    HLEN
    HMGET
    HMSET
    HPERSIST
    HPEXPIRE
    HPEXPIREAT
    HPEXPIRETIME
    HPTTL
    HRANDFIELD
    HSCAN
    HSET
    HSETNX
    HSTRLEN
    HTTL
    HVALS
    IDLETIME
    INCR
    INCRBY
    KEEPTTL
    KEYS
    LEFT
    LIMIT
    LINDEX
    LINSERT
    LLEN
    LMOVE
    LMPOP
    LPOP
    LPOS
    LPUSH
    LPUSHX
    LRANGE
    LREM
    LSET
    LT
    LTRIM
    MATCH
    MAX
    MAXLEN
    MGET
    MIN
    MOVE
    MSET
    MSETNX
    NOVALUES
    NX
    OBJECT
    PERSIST
    PEXPIRE
    PEXPIREAT
    PEXPIRETIME
    PSETEX
    PTTL
    PX
    PXAT
    RANDOMKEY
    RANK
    REFCOUNT
    RENAME
    RENAMENX
    REPLACE
    REV
    RIGHT
    RPOP
    RPOPLPUSH
    RPUSH
    RPUSHX
    SADD
    SCAN
    SCARD
    SDIFF
    SDIFFSTORE
    SET
    SETEX
    SETNX
    SETRANGE
    SINTER
    SINTERCARD
    SINTERSTORE
    SISMEMBER
    SMEMBERS
    SMISMEMBER
    SMOVE
    SPOP
    SRANDMEMBER
    SREM
    SSCAN
    STRLEN
    SUBSTR
    SUM
    SUNION
    SUNIONSTORE
    TOUCH
    TTL
    TYPE
    UNLINK
    WAIT
    WEIGHTS
    WITHSCORE
    WITHSCORES
    WITHVALUES
    XX
    ZADD
    ZCARD
    ZCOUNT
    ZDIFF
    ZDIFFSTORE
    ZINCRBY
    ZINTER
    ZINTERCARD
    ZINTERSTORE
    ZLEXCOUNT
    ZMPOP
    ZMSCORE
    ZPOPMAX
    ZPOPMIN
    ZRANDMEMBER
    ZRANGE
    ZRANGEBYLEX
    ZRANGEBYSCORE
    ZRANGESTORE
    ZRANK
    ZREM
    ZREMRANGEBYLEX
    ZREMRANGEBYRANK
    ZREMRANGEBYSCORE
    ZREVRANGE
    ZREVRANGEBYLEX
    ZREVRANGEBYSCORE
    ZREVRANK
    ZSCAN
    ZSCORE
    ZUNION
    ZUNIONSTORE
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    _
    0    1    2    3    4    5    6    7    8    9
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= z r e m r a n g e b y s c o r e /.$setResult($_ZREMRANGEBYSCORE);./
    Keyword ::= z r e v r a n g e b y s c o r e /.$setResult($_ZREVRANGEBYSCORE);./
    Keyword ::= z r e m r a n g e b y r a n k /.$setResult($_ZREMRANGEBYRANK);./
    Keyword ::= z r e m r a n g e b y l e x /.$setResult($_ZREMRANGEBYLEX);./
    Keyword ::= z r e v r a n g e b y l e x /.$setResult($_ZREVRANGEBYLEX);./
    Keyword ::= z r a n g e b y s c o r e /.$setResult($_ZRANGEBYSCORE);./
    Keyword ::= h p e x p i r e t i m e /.$setResult($_HPEXPIRETIME);./
    Keyword ::= h e x p i r e t i m e /.$setResult($_HEXPIRETIME);./
    Keyword ::= p e x p i r e t i m e /.$setResult($_PEXPIRETIME);./
    Keyword ::= s i n t e r s t o r e /.$setResult($_SINTERSTORE);./
    Keyword ::= s r a n d m e m b e r /.$setResult($_SRANDMEMBER);./
    Keyword ::= s u n i o n s t o r e /.$setResult($_SUNIONSTORE);./
    Keyword ::= z i n t e r s t o r e /.$setResult($_ZINTERSTORE);./
    Keyword ::= z r a n d m e m b e r /.$setResult($_ZRANDMEMBER);./
    Keyword ::= z r a n g e b y l e x /.$setResult($_ZRANGEBYLEX);./
    Keyword ::= z r a n g e s t o r e /.$setResult($_ZRANGESTORE);./
    Keyword ::= z u n i o n s t o r e /.$setResult($_ZUNIONSTORE);./
    Keyword ::= b r p o p l p u s h /.$setResult($_BRPOPLPUSH);./
    Keyword ::= e x p i r e t i m e /.$setResult($_EXPIRETIME);./
    Keyword ::= h p e x p i r e a t /.$setResult($_HPEXPIREAT);./
    Keyword ::= h r a n d f i e l d /.$setResult($_HRANDFIELD);./
    Keyword ::= s d i f f s t o r e /.$setResult($_SDIFFSTORE);./
    Keyword ::= s i n t e r c a r d /.$setResult($_SINTERCARD);./
    Keyword ::= s m i s m e m b e r /.$setResult($_SMISMEMBER);./
    Keyword ::= w i t h s c o r e s /.$setResult($_WITHSCORES);./
    Keyword ::= w i t h v a l u e s /.$setResult($_WITHVALUES);./
    Keyword ::= z d i f f s t o r e /.$setResult($_ZDIFFSTORE);./
    Keyword ::= z i n t e r c a r d /.$setResult($_ZINTERCARD);./
    Keyword ::= a g g r e g a t e /.$setResult($_AGGREGATE);./
    Keyword ::= h e x p i r e a t /.$setResult($_HEXPIREAT);./
    Keyword ::= p e x p i r e a t /.$setResult($_PEXPIREAT);./
    Keyword ::= r a n d o m k e y /.$setResult($_RANDOMKEY);./
    Keyword ::= r p o p l p u s h /.$setResult($_RPOPLPUSH);./
    Keyword ::= s i s m e m b e r /.$setResult($_SISMEMBER);./
    Keyword ::= w i t h s c o r e /.$setResult($_WITHSCORE);./
    Keyword ::= z l e x c o u n t /.$setResult($_ZLEXCOUNT);./
    Keyword ::= z r e v r a n g e /.$setResult($_ZREVRANGE);./
    Keyword ::= b z p o p m a x /.$setResult($_BZPOPMAX);./
    Keyword ::= b z p o p m i n /.$setResult($_BZPOPMIN);./
    Keyword ::= e n c o d i n g /.$setResult($_ENCODING);./
    Keyword ::= e x p i r e a t /.$setResult($_EXPIREAT);./
    Keyword ::= g e t r a n g e /.$setResult($_GETRANGE);./
    Keyword ::= h p e r s i s t /.$setResult($_HPERSIST);./
    Keyword ::= h p e x p i r e /.$setResult($_HPEXPIRE);./
    Keyword ::= i d l e t i m e /.$setResult($_IDLETIME);./
    Keyword ::= n o v a l u e s /.$setResult($_NOVALUES);./
    Keyword ::= r e f c o u n t /.$setResult($_REFCOUNT);./
    Keyword ::= r e n a m e n x /.$setResult($_RENAMENX);./
    Keyword ::= s e t r a n g e /.$setResult($_SETRANGE);./
    Keyword ::= s m e m b e r s /.$setResult($_SMEMBERS);./
    Keyword ::= z r e v r a n k /.$setResult($_ZREVRANK);./
    Keyword ::= b y s c o r e /.$setResult($_BYSCORE);./
    Keyword ::= h e x i s t s /.$setResult($_HEXISTS);./
    Keyword ::= h e x p i r e /.$setResult($_HEXPIRE);./
    Keyword ::= h g e t a l l /.$setResult($_HGETALL);./
    Keyword ::= h i n c r b y /.$setResult($_HINCRBY);./
    Keyword ::= h s t r l e n /.$setResult($_HSTRLEN);./
    Keyword ::= k e e p t t l /.$setResult($_KEEPTTL);./
    Keyword ::= l i n s e r t /.$setResult($_LINSERT);./
    Keyword ::= p e r s i s t /.$setResult($_PERSIST);./
    Keyword ::= p e x p i r e /.$setResult($_PEXPIRE);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE);./
    Keyword ::= w e i g h t s /.$setResult($_WEIGHTS);./
    Keyword ::= z i n c r b y /.$setResult($_ZINCRBY);./
    Keyword ::= z m s c o r e /.$setResult($_ZMSCORE);./
    Keyword ::= z p o p m a x /.$setResult($_ZPOPMAX);./
    Keyword ::= z p o p m i n /.$setResult($_ZPOPMIN);./
    Keyword ::= a p p e n d /.$setResult($_APPEND);./
    Keyword ::= b e f o r e /.$setResult($_BEFORE);./
    Keyword ::= b l m o v e /.$setResult($_BLMOVE);./
    Keyword ::= b l m p o p /.$setResult($_BLMPOP);./
    Keyword ::= b z m p o p /.$setResult($_BZMPOP);./
    Keyword ::= d e c r b y /.$setResult($_DECRBY);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= e x p i r e /.$setResult($_EXPIRE);./
    Keyword ::= f i e l d s /.$setResult($_FIELDS);./
    Keyword ::= g e t d e l /.$setResult($_GETDEL);./
    Keyword ::= g e t s e t /.$setResult($_GETSET);./
    Keyword ::= h s e t n x /.$setResult($_HSETNX);./
    Keyword ::= i n c r b y /.$setResult($_INCRBY);./
    Keyword ::= l i n d e x /.$setResult($_LINDEX);./
    Keyword ::= l p u s h x /.$setResult($_LPUSHX);./
    Keyword ::= l r a n g e /.$setResult($_LRANGE);./
    Keyword ::= m a x l e n /.$setResult($_MAXLEN);./
    Keyword ::= m s e t n x /.$setResult($_MSETNX);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT);./
    Keyword ::= p s e t e x /.$setResult($_PSETEX);./
    Keyword ::= r e n a m e /.$setResult($_RENAME);./
    Keyword ::= r p u s h x /.$setResult($_RPUSHX);./
    Keyword ::= s i n t e r /.$setResult($_SINTER);./
    Keyword ::= s t r l e n /.$setResult($_STRLEN);./
    Keyword ::= s u b s t r /.$setResult($_SUBSTR);./
    Keyword ::= s u n i o n /.$setResult($_SUNION);./
    Keyword ::= u n l i n k /.$setResult($_UNLINK);./
    Keyword ::= z c o u n t /.$setResult($_ZCOUNT);./
    Keyword ::= z i n t e r /.$setResult($_ZINTER);./
    Keyword ::= z r a n g e /.$setResult($_ZRANGE);./
    Keyword ::= z s c o r e /.$setResult($_ZSCORE);./
    Keyword ::= z u n i o n /.$setResult($_ZUNION);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= b l p o p /.$setResult($_BLPOP);./
    Keyword ::= b r p o p /.$setResult($_BRPOP);./
    Keyword ::= b y l e x /.$setResult($_BYLEX);./
    Keyword ::= c o u n t /.$setResult($_COUNT);./
    Keyword ::= g e t e x /.$setResult($_GETEX);./
    Keyword ::= h k e y s /.$setResult($_HKEYS);./
    Keyword ::= h m g e t /.$setResult($_HMGET);./
    Keyword ::= h m s e t /.$setResult($_HMSET);./
    Keyword ::= h p t t l /.$setResult($_HPTTL);./
    Keyword ::= h s c a n /.$setResult($_HSCAN);./
    Keyword ::= h v a l s /.$setResult($_HVALS);./
    Keyword ::= l i m i t /.$setResult($_LIMIT);./
    Keyword ::= l m o v e /.$setResult($_LMOVE);./
    Keyword ::= l m p o p /.$setResult($_LMPOP);./
    Keyword ::= l p u s h /.$setResult($_LPUSH);./
    Keyword ::= l t r i m /.$setResult($_LTRIM);./
    Keyword ::= m a t c h /.$setResult($_MATCH);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= r p u s h /.$setResult($_RPUSH);./
    Keyword ::= s c a r d /.$setResult($_SCARD);./
    Keyword ::= s d i f f /.$setResult($_SDIFF);./
    Keyword ::= s e t e x /.$setResult($_SETEX);./
    Keyword ::= s e t n x /.$setResult($_SETNX);./
    Keyword ::= s m o v e /.$setResult($_SMOVE);./
    Keyword ::= s s c a n /.$setResult($_SSCAN);./
    Keyword ::= t o u c h /.$setResult($_TOUCH);./
    Keyword ::= z c a r d /.$setResult($_ZCARD);./
    Keyword ::= z d i f f /.$setResult($_ZDIFF);./
    Keyword ::= z m p o p /.$setResult($_ZMPOP);./
    Keyword ::= z r a n k /.$setResult($_ZRANK);./
    Keyword ::= z s c a n /.$setResult($_ZSCAN);./
    Keyword ::= c o p y /.$setResult($_COPY);./
    Keyword ::= d e c r /.$setResult($_DECR);./
    Keyword ::= d u m p /.$setResult($_DUMP);./
    Keyword ::= e x a t /.$setResult($_EXAT);./
    Keyword ::= f r e q /.$setResult($_FREQ);./
    Keyword ::= h d e l /.$setResult($_HDEL);./
    Keyword ::= h g e t /.$setResult($_HGET);./
    Keyword ::= h l e n /.$setResult($_HLEN);./
    Keyword ::= h s e t /.$setResult($_HSET);./
    Keyword ::= h t t l /.$setResult($_HTTL);./
    Keyword ::= i n c r /.$setResult($_INCR);./
    Keyword ::= k e y s /.$setResult($_KEYS);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l l e n /.$setResult($_LLEN);./
    Keyword ::= l p o p /.$setResult($_LPOP);./
    Keyword ::= l p o s /.$setResult($_LPOS);./
    Keyword ::= l r e m /.$setResult($_LREM);./
    Keyword ::= l s e t /.$setResult($_LSET);./
    Keyword ::= m g e t /.$setResult($_MGET);./
    Keyword ::= m o v e /.$setResult($_MOVE);./
    Keyword ::= m s e t /.$setResult($_MSET);./
    Keyword ::= p t t l /.$setResult($_PTTL);./
    Keyword ::= p x a t /.$setResult($_PXAT);./
    Keyword ::= r a n k /.$setResult($_RANK);./
    Keyword ::= r p o p /.$setResult($_RPOP);./
    Keyword ::= s a d d /.$setResult($_SADD);./
    Keyword ::= s c a n /.$setResult($_SCAN);./
    Keyword ::= s p o p /.$setResult($_SPOP);./
    Keyword ::= s r e m /.$setResult($_SREM);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= w a i t /.$setResult($_WAIT);./
    Keyword ::= z a d d /.$setResult($_ZADD);./
    Keyword ::= z r e m /.$setResult($_ZREM);./
    Keyword ::= d e l /.$setResult($_DEL);./
    Keyword ::= g e t /.$setResult($_GET);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= m i n /.$setResult($_MIN);./
    Keyword ::= r e v /.$setResult($_REV);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s u m /.$setResult($_SUM);./
    Keyword ::= t t l /.$setResult($_TTL);./
    Keyword ::= c h /.$setResult($_CH);./
    Keyword ::= d b /.$setResult($_DB);./
    Keyword ::= e x /.$setResult($_EX);./
    Keyword ::= g t /.$setResult($_GT);./
    Keyword ::= l t /.$setResult($_LT);./
    Keyword ::= n x /.$setResult($_NX);./
    Keyword ::= p x /.$setResult($_PX);./
    Keyword ::= x x /.$setResult($_XX);./
%End
