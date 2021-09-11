# Coq で定理証明

## 必要なもの

- `coqc` / `coqtop` : Coq コンパイラ / 対話型実行環境 (推奨バージョン : 8.13.2)
- mathcomp : Coq で使うライブラリ (導入方法については [mathcomp リポジトリ](https://github.com/math-comp/math-comp) を参照)
- `ocamlc` : OCaml コンパイラ (推奨バージョン : 4.12.0)
- `utop` : OCaml の対話型実行環境 ( ``opam install utop`` で導入できる )

## ビルド

```bash
make
```

## ドキュメント生成

```bash
make doc
```
