From Coq Require Import Ascii PeanoNat.

Require Import MyExtraction.

Module Lex.
  Definition compare (a b : ascii) : comparison :=
    Nat.compare (nat_of_ascii a) (nat_of_ascii b).

  Definition leb (a b : ascii) : bool :=
    match compare a b with
    | Lt | Eq => true
    | Gt => false
    end.

  Infix "<=?" := leb.

  Local Open Scope char_scope.

  Definition isWhite (c : ascii) : bool :=
    (c =? " ") || (c =? "009") || (c =? "010") || (c =? "013").

  Definition isLowerAlpha (c : ascii) : bool := ("a" <=? c) && (c <=? "z").

  Definition isUpperAlpha (c : ascii) : bool := ("A" <=? c) && (c <=? "Z").

  Definition isAlpha (c : ascii) : bool := isLowerAlpha c || isUpperAlpha c.

  Definition isDigit (c : ascii) : bool := ("0" <=? c) && (c <=? "9").
End Lex.

Extraction "lex.ml" Lex.
