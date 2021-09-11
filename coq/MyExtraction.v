From Coq Require Extraction.

From Coq.extraction Require Import ExtrOcamlBasic.
From Coq.extraction Require Import ExtrOcamlChar.

From Coq.extraction Require Import ExtrOcamlNatInt.
Extract Inductive nat => int [ "0" "Stdlib.succ" ]
  "(fun f0 fS n -> if n = 0 then f0 () else fS (n - 1))".
Extract Constant minus => "fun n m -> Stdlib.max 0 (n - m)".

From Coq.extraction Require Import ExtrOcamlZInt.
From Coq Require Import ZArith.
Extract Constant Pos.succ => "Stdlib.succ".
