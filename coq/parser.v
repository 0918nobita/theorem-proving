From Coq Require Import String List.

Require Import MyExtraction.

Definition Parser (t : Type) : Type := string -> list (t * string).

Extraction "parser.ml" Parser.
