-- #check コマンドは項の型を出力する
#check 1
#check fun (x : Nat) => x + 1

-- #eval コマンドは即座に式を評価し結果を出力する
#eval (fun (x : Nat) => x + 1) 3

def fact : Nat → Nat
| 0     => 1
| n + 1 => (n + 1) * fact n

#eval fact 5

#check @toString

#eval List.map (fun x => toString x) [1, 2, 3]

#eval [4, 5, 6].map toString

-- [intro タクティック]
-- 現在のゴールが `forall x : t, u` ならば、intro タクティックは局所文脈に `x : t` を追加する。
-- 新しいサブゴール対象は u となる。

-- [cases タクティック]
-- `cases x` は x が局所文脈での帰納的型の変数であることを推定してメインゴールを分割し、
-- その帰納的型のコンストラクタそれぞれに対して、対象がコンストラクタの全般的なインスタンスに置き換えられたひとつのゴールを生成する。
-- 局所文脈の要素の型が x に依存している場合、その要素は後で元に戻され再導入されるため、場合分けがその仮定に同様に影響を与える。

theorem ex1 : p ∨ q → q ∨ p := by
  intro h
  cases h with
  | Or.inl h1 => apply Or.inr; exact h1
  | Or.inr h2 => apply Or.inl; exact h2

-- Lean の主要なコンセプトは「型」と「関数」
-- すべての Lean プログラムの最も基本的な要素は、名前空間に集約される関数である。
-- 関数は入力に対して出力を生成するために働き、それらは名前空間に集約される。
-- 名前空間はものをグループ化する主要な方法である。
-- 関数は def コマンドを用いて定義される。
-- def コマンドは関数に名前を与え、その引数を定義する
