Require Extraction.

Require Import Coq.extraction.ExtrOcamlBasic.
Require Import Coq.extraction.ExtrOcamlChar.

Require Import Coq.extraction.ExtrOcamlNatInt.
Extract Inductive nat => int [ "0" "Stdlib.succ" ] "(fun f0 fS n -> if n = 0 then f0 () else fS (n - 1))".
Extract Constant minus => "fun n m -> Stdlib.max 0 (n - m)".

Require Import Coq.extraction.ExtrOcamlZInt.
Require Import ZArith.
Extract Constant Pos.succ => "Stdlib.succ".
