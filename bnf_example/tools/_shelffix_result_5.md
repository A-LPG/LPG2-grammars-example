# SHELFFIX_5 花架子→真移植 result

Batch: `tools/_shelffix_batches.json` → `SHELFFIX_5`
Policy: `SHELF_FIX.md`
V4 root: `/Users/kuafu/Downloads/grammars-v4-master`

## Results

| id | g4 | lpg | soup | harness | quality |
|---|---:|---:|---|---|---|
| `fasta` | 103 | 35 | no | OK (3 curated) | `language_port` + `real_g4_port` |
| `esolang/bio` | 76 | 49 | no | OK (4 examples) | `language_port` + `real_g4_port` |
| `asm/ptx/ptx-isa-2.1` | 3505 | 1908 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `redis` | 909 | 812 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `iri` | 614 | 407 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `iso8601` | 551 | 377 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `smiles` | 549 | 328 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `jpa` | 475 | 485 | no | OK (3 curated) | `language_subset` + `real_g4_port` |

## Method

1. Compared each id to grammars-v4 `*.g4`; kept / fixed structural LPG parsers (g4 NTs, not `item`/`atom` soup).
2. **fasta**: tiny full g4 port; curated multi-record FASTA (+ comment); harness → `examples-curated/**/*`.
3. **esolang/bio**: already structural; verified 4 upstream examples; honest `language_port`.
4. **asm/ptx/ptx-isa-2.1**: package `ptx_isa_2_1` (valid Java); KWLexer for dotted `K_*` + `KI_*`; lexer emits `T_*` / `T_WORD` / float+int literals; restored empty alts on `i_ret`/`i_bra`/`i_call`; curated entry/mov/visible PTX.
5. **redis / iri / smiles**: structural antlr2lpg ports + multi-line curated examples; harness OK.
6. **iso8601**: start `iso`; designator-vs-IDENTIFIER fix (`identifier` ≥2 letters); curated calendar/datetime/interval.
7. **jpa**: structural port; curated `SELECT`/`FROM`/alias subset (WHERE/DELETE need further KW hardening — noted in status).

## Example heads (first ≤5 lines each)

### `fasta`

**coding_seqs.ffn**
```
>gi|158333233|ref|NC_009925.1|:c2319-1627 Acaryochloris marina MBIC11017 chromosome, complete genome
ATGCCCTATACCTATGATTATCCGCGCCCTGGTCTTACCGTTGACTGCGTGGTGTTTGGCCTAGACGAAC
AGATCGATCTCAAAGTCCTACTGATTCAGCGCCAGATTCCCCCTTTCCAGCATCAGTGGGCATTACCCGG
```

**genome_comment.fna**
```
; curated FASTA smoke with comment + two sequences
>seqA|demo chromosome fragment
ACGTACGTACGTACGTACGT
TTGCAATTGGCCAA
>seqB|second locus
```

**protein_nuds.faa**
```
>gi|158333234|ref|YP_001514406.1| NUDIX hydrolase [Acaryochloris marina MBIC11017]
MPYTYDYPRPGLTVDCVVFGLDEQIDLKVLLIQRQIPPFQHQWALPGGFVQMDESLEDAARRELREETGV
QGIFLEQLYTFGDLGRDPRDRIISVAYYALINLIEYPLQASTDAEDAAWYSIENLPSLAFDHAQILKQAI
```

### `esolang/bio`

**example1.txt**
```
0ox;                   //Increment the block x by 1 9 times
0ox;
0ox;
0ox;
0ox;
```

**example2.txt**
```
0ox; 0oy;
0ix{ 1ox; 0oy; };
1iy;
```

**example3.txt**
```
0ox; 0ox; 0oy;
0iy{ 0ox; 1oy; };
1ix;
```

### `asm/ptx/ptx-isa-2.1`

**entry_ret.ptx**
```
.version 2.1
.target sm_20
.entry main()
{
	ret;
```

**mov_reg.ptx**
```
.version 2.1
.target sm_20
.entry foo()
{
	.reg .u32 %r<2>;
```

**visible_entry.ptx**
```
.version 2.1
.target sm_10
.visible .entry kernel()
{
	ret;
```

### `redis`

**hash_ops.txt**
```
HSET user name alice
HGET user name
HKEYS user
HDEL user name
```

**list_keys.txt**
```
LPUSH q a
LPUSH q b
LRANGE q 0 1
EXISTS q
DEL q
```

**string_ops.txt**
```
SET mykey hello
GET mykey
APPEND mykey world
STRLEN mykey
```

### `iri`

**http_deep_path.iri**
```
http://
www.example.org/
path/
to/
resource
```

**http_port_path.iri**
```
http://
example.org:
8080/
api/
v1/
```

**https_query.iri**
```
https://
example.com/
search?
q=lpg&
lang=en
```

### `iso8601`

**calendar_extended.txt**
```
# ISO 8601 calendar date (extended)
1985-04-12
```

**datetime_basic.txt**
```
# ISO 8601 datetime (basic, appendix B)
19850412T101530
```

**interval_basic.txt**
```
# ISO 8601 interval begin/end
19850412T232050/19850625T103000
```

### `smiles`

**aliphatics.smi** / **aromatics.smi** / **branched.smi** (or biphenyl/imidazole/mequitazine)
```
# multi-line SMILES with hash comments skipped by lexer
```

### `jpa`

**select_alias.jpql**
```
SELECT c
FROM Country c
```

**select_from.jpql**
```
SELECT f
FROM Country f
```

**select_thing.jpql**
```
SELECT x
FROM Thing x
```

## Harness

```bash
for id in fasta esolang/bio asm/ptx/ptx-isa-2.1 redis iri iso8601 smiles jpa; do
  bash harness/run-one.sh "$id"
done
```

All eight: **OK**.
