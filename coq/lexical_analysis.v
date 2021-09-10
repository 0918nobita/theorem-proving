Require Import Coq.Arith.PeanoNat.
Require Import Coq.Strings.Ascii.

Require Import MyExtraction.

Module Lex.
  Definition isWhite (c : ascii) : bool :=
    let n := nat_of_ascii c in
    (n =? 32) || (n =? 9) || (n =? 10) || (n =? 13).

  Definition isLowerAlpha (c : ascii) : bool :=
    let n := nat_of_ascii c in
    (97 <=? n) && (n <=? 122).

  Definition isUpperAlpha (c : ascii) : bool :=
    let n := nat_of_ascii c in
    (65 <=? n) && (n <=? 90).

  Definition isAlpha (c : ascii) : bool :=
    isLowerAlpha c || isUpperAlpha c.

  Definition isDigit (c : ascii) : bool :=
    let n := nat_of_ascii c in
    (48 <=? n) && (n <=? 57).
End Lex.

Extraction "lex.ml" Lex.
