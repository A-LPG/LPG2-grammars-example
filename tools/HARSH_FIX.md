# 从严从重修正政策

## 禁止
- harness 只靠 `;` / 单字符 / `SELECT 1;` 就报完成
- 薄 stub（g4≥500 且 lpg<200）标 `real_g4_port`
- 写 nested token-stream soup
- 为过 harness 删掉真实 examples

## 必须
1. `python3 tools/antlr2lpg.py --include-huge <id>` 若 parser 薄/过时
2. `examples-curated`：至少 3 个**多行**、含该语言真实结构的样例
3. `bash harness/run-one.sh <id>` 必须在这些样例上 OK
4. `status.json`：默认 `language_subset`；去掉 OVERCLAIM；写明 blocker
5. 交卷前自证：报告里贴每个 example 原文前 5 行

## 参考真移植
`c`（main/if/while）、`golang`、`sql/sqlite`、`java/java20`
