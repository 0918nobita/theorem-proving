#check 1

#check fun (x : Nat) => x + 1

#eval (fun (x : Nat) => x + 1) 3

def fact : Nat → Nat
| 0     => 1
| n + 1 => (n + 1) * fact n

#eval fact 5

#check @toString

#eval List.map (fun x => toString x) [1, 2, 3]

#eval [4, 5, 6].map toString

theorem ex1 : p ∨ q → q ∨ p := by
  intro h
  cases h with
  | Or.inl h1 => apply Or.inr; exact h1
  | Or.inr h2 => apply Or.inl; exact h2
