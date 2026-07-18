# REPAIR_4 result

Exclusive IDs: `cmake`, `itn`, `pbm`, `pgn`, `srt`, `stl`

## Summary table

| id | harness | curated | quality | what fixed |
|----|---------|---------|---------|------------|
| cmake | OK (3) | 3 | `language_port` + `real_g4_port` | Aligned parser to CMake.g4 NTs; lexer so pure names are `IDENTIFIER` (unquoted starts non-id); curated hello/if/quoted examples |
| itn | OK (3) | 3 | `language_port` + `real_g4_port` | Parser already mirrored itn.g4; added 3 multi-line itineraries; harness → `examples-curated` |
| pbm | OK (3) | 3 | `language_port` + `real_g4_port` | Parser already mirrored pbm.g4 magic/width/height/table; added letter-J / checker / tiny-dot; harness → curated |
| pgn | OK (3) | 3 | `language_subset` + `real_g4_port` | Strengthened parser to g4 NTs (tag_name/value, san_move, RAV, termination); lexer INTEGER vs SYMBOL; curated games + NAG/variation |
| srt | OK (3) | 3 | `language_port` + `real_g4_port` | Parser already mirrored srt.g4 cues; 3 multi-line `.srt` files; harness → curated |
| stl | OK (3) | 3 | `language_port` + `real_g4_port` | Parser already mirrored STL.g4 solids; signed FLOAT in lexer; cube / tet / empty solid examples |

## Harness tails

```
OK: cmake (3 examples)
OK: itn (3 examples)
OK: pbm (3 examples)
OK: pgn (3 examples)
OK: srt (3 examples)
OK: stl (3 examples)
```

## Notes

- Small g4s (cmake/itn/pbm/srt/stl) → honest `language_port`.
- PGN → `language_subset` (optional `SUFFIX_ANNOTATION` on `san_move`; not full upstream mega-files).
- No token-stream soup; NTs follow upstream g4 names/structure.
