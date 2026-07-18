# HARSH_6 result

Batch IDs: `ltl`, `cayenne`, `scotty`, `sexpression`, `esolang/brainflak`, `tcpheader`, `newick`, `pii`, `pmmn`, `telephone`.

## Summary

| id | parser lines | soup? | harness | quality |
|----|-------------:|-------|---------|---------|
| ltl | 27 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| cayenne | 72 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| scotty | 34 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| sexpression | 45 | no (natural item/atom) | OK (3 curated) | `language_subset` + `real_g4_port` |
| esolang/brainflak | 36 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| tcpheader | 32 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| newick | 38 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| pii | 33 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| pmmn | 37 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| telephone | 42 | no | OK (3 curated) | `language_subset` + `real_g4_port` |

## Policy notes

- Upstream g4s are all ~80–102 lines — thin LPG parsers match size (not SHELF stubs of huge dialects).
- `sexpression`: verified only; kept real g4 `item`/`atom`/`list_`/`dotted` port — **not** rewritten to token-stream soup.
- Default `language_subset`; stripped `language_port` overclaim on sexpression; blockers recorded for tiny upstream / LTL AfterASCII bucket.
- `bash harness/run-one.sh <id>` → **OK** on `examples-curated` for all 10.

## ltl

- quality: `language_subset` notes: real_g4_port, afterascii_arrow_subset, curated_multiline_formulas
- blockers: ['tiny_upstream_g4_approx_100_lines', 'unicode_and_or_not_share_AfterASCII_bucket']
- notes: LTL subset: ASCII U/G/F/X/W/R plus AfterASCII as →; ∧∨⌐ not distinguished in LPG basic map.
- harness: `bash harness/run-one.sh ltl` → **OK**

### examples-curated (first 5 lines each)

#### `finally_implies.txt`

```
F p
→
F q
```

#### `globally_until.txt`

```
G (p
U
q)
```

#### `next_release.txt`

```
X p
→
(q R r)
```


## cayenne

- quality: `language_subset` notes: real_g4_port, left_factored_app_and_dot, curated_multiline_cayenne
- blockers: ['tiny_upstream_g4_approx_100_lines', 'no_full_cayenne_stdlib']
- notes: Structural subset of cayenne.g4 (lambda/data/case/sig/struct/dot); not full Cayenne.
- harness: `bash harness/run-one.sh cayenne` → **OK**

### examples-curated (first 5 lines each)

#### `data_case.cay`

```
case x of
  (Cons a b) -> a;
  Nil -> #;
  :: List
```

#### `lambda_arrow.cay`

```
(x :: Nat) ->
  (y :: Nat) ->
    x
```

#### `sig_struct.cay`

```
sig
  foo :: Nat;
  bar :: Nat = x;
```


## scotty

- quality: `language_subset` notes: real_g4_port, lexer_identifier_number, curated_multiline_prefix_programs
- blockers: ['tiny_upstream_g4_approx_100_lines']
- notes: Prefix-arithmetic / fun / assign from scotty.g4; IDENTIFIER/NUMBER lexed for LALR.
- harness: `bash harness/run-one.sh scotty` → **OK**

### examples-curated (first 5 lines each)

#### `arith.scotty`

```
+ 12
  34
```

#### `assign_call.scotty`

```
a = * 2 3
b = - a 1
+ a b
```

#### `fun_def.scotty`

```
fun add x =
  + x 1
+ (add 2)
  3
```


## sexpression

- quality: `language_subset` notes: real_g4_port, sexpr_item_list_atom_dotted_pair_from_g4, natural_sexpr_item_atom_from_g4_not_token_stream_soup, DOT_not_bare_atom_for_LALR, curated_multiline_sexpr
- blockers: ['tiny_upstream_g4_approx_95_lines', 'DOT_not_bare_atom']
- notes: Real sexpression.g4 port (item/atom/list/dotted); DOT only as dotted-pair marker.
- harness: `bash harness/run-one.sh sexpression` → **OK**

### examples-curated (first 5 lines each)

#### `dotted.sexp`

```
(a . b)
(1 . (2 . (3 . nil)))
(head . (tail . ()))
```

#### `list.sexp`

```
((milk juice)
 (honey marmalade))
("sweet"
  tea)
```

#### `nested.sexp`

```
(((S)
  (NP VP)))
(quote
  (a b c))
```


## esolang/brainflak

- quality: `language_subset` notes: real_g4_port, curated_multiline_brainflak
- blockers: ['tiny_upstream_g4_approx_95_lines']
- notes: Brain-Flak paren/brace/bracket/angle nesting from brainflak.g4.
- harness: `bash harness/run-one.sh esolang/brainflak` → **OK**

### examples-curated (first 5 lines each)

#### `loop_stack.bf`

```
{
  (
    ()
  )
  []
…
```

#### `mixed_ops.bf`

```
(
  <>
  {}
  []
)
…
```

#### `nest_parens.bf`

```
(
  ()
  ()
  ()
)
```


## tcpheader

- quality: `language_subset` notes: real_g4_port, curated_20byte_tcp_headers
- blockers: ['tiny_upstream_g4_approx_91_lines', 'header_only_no_payload', 'payload_must_avoid_ws_bytes']
- notes: Fixed 20-octet TCP segment header from tcp.g4; curated octets avoid lexer WS bytes.
- harness: `bash harness/run-one.sh tcpheader` → **OK**

### examples-curated (first 5 lines each)

#### `ack_https.bin`

```
11 4e 0a 01 bb 0a 00 00 11 00 0a 00 00 10 01 0a 50 10 0a 1f 00 0a 11 11 0a 00 00 0a
```

#### `fin_ssh.bin`

```
08 98 0a 00 16 0a 01 02 03 04 0a 0f 0f 0f 0f 0a 50 11 0a 0f 00 0a 22 22 0a 00 01 0a
```

#### `syn_http.bin`

```
30 39 0a 00 50 0a 00 00 10 00 0a 00 00 00 00 0a 50 02 0a 10 00 0a ab cd 0a 00 00 0a
```


## newick

- quality: `language_subset` notes: real_g4_port, left_factored_root_length, curated_multiline_trees
- blockers: ['tiny_upstream_g4_approx_90_lines']
- notes: Newick trees with names/lengths; left-factored for root length suffix.
- harness: `bash harness/run-one.sh newick` → **OK**

### examples-curated (first 5 lines each)

#### `rooted_length.nwk`

```
(
  :0.1,
  :0.2,
  (:0.3, :0.4):0.5
):0.0;
```

#### `simple_named.nwk`

```
(
  A,
  B,
  (C, D)
)F;
```

#### `with_lengths.nwk`

```
(
  A:0.1,
  B:0.2,
  (C:0.3, D:0.4)E:0.5
)F;
```


## pii

- quality: `language_subset` notes: real_g4_port, curated_multiline_issn_isbn
- blockers: ['tiny_upstream_g4_approx_82_lines']
- notes: Publisher Item Identifier ISSN/ISBN forms from pii.g4.
- harness: `bash harness/run-one.sh pii` → **OK**

### examples-curated (first 5 lines each)

#### `isbn_book.pii`

```
B9780-12345
6
78901-2
```

#### `issn_alt.pii`

```
S1234-5678
(99)
00001-X
```

#### `issn_article.pii`

```
S0960-9822
(11)
01319-4
```


## pmmn

- quality: `language_subset` notes: real_g4_port, curated_multiline_inc_if_while
- blockers: ['tiny_upstream_g4_approx_82_lines']
- notes: PMMN inc/dec/if/while counter language from PMMN.g4.
- harness: `bash harness/run-one.sh pmmn` → **OK**

### examples-curated (first 5 lines each)

#### `if_else.pmmn`

```
if (dec(0)) {
  inc(1);
} else {
  inc(2);
}
```

#### `inc_dec.pmmn`

```
inc(0);
dec(1);
inc(12);
```

#### `while_loop.pmmn`

```
inc(0);
inc(1);
while (dec(0)) {
  inc(2);
}
```


## telephone

- quality: `language_subset` notes: real_g4_port, curated_multiline_nanp_japan
- blockers: ['tiny_upstream_g4_approx_80_lines', 'nanp_japan_prefixes_only']
- notes: NANP 011 / Japan 010 telephone numbers from telephone.g4.
- harness: `bash harness/run-one.sh telephone` → **OK**

### examples-curated (first 5 lines each)

#### `japan.tel`

```
010
643
477
4000
```

#### `nanp_basic.tel`

```
011
403
867
5309
```

#### `nanp_plus.tel`

```
+1
+011
212
555
1212
```

