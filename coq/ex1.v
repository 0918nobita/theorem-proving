Theorem HA1 : forall (a b : Prop), a -> (b -> a).
Proof.
  intro.
  intro.
  trivial.
Qed.

Definition f x := x + 100.
Definition g x := x - 100.

Theorem g_f : forall x, g (f x) = x.
Proof.
  intro.
  unfold f, g.
  Require Import Arith.
  rewrite Nat.add_sub.
  trivial.
Qed.
