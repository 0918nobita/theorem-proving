Require Import Arith.
From mathcomp Require Import ssreflect.

(* Section コマンド : スクリプトにセクションを導入する *)
Section ModusPonens.
  (* Variables コマンド : 変数宣言 *)
  (* ここでは Prop (命題) 型の変数 X, Y を宣言している *)
  Variables X Y : Prop.

  (* Hypothesis コマンド : セクション内の仮定を設定する *)
  Hypothesis XtoY_is_true : X -> Y.
  Hypothesis X_is_true : X.

  (* Theorem コマンド : 言明を宣言する *)
  Theorem MP : Y.
  Proof.
    (* move: タクティック : コンテキストにある型や証明済みの補題をスタックのトップに追加する *)
    move: X_is_true.
    (* ターミネータ (よって自明) *)
    by [].
  Qed.
End ModusPonens.

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
  rewrite Nat.add_sub.
  trivial.
Qed.
