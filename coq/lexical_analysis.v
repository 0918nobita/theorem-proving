Require Import Coq.Arith.PeanoNat.
Require Import Coq.Strings.Ascii.

Definition isWhite (c : ascii) : bool :=
  let n := nat_of_ascii c in
  (n =? 32) || (n =? 9) || (n =? 10) || (n =? 13).
