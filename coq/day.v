Module Day.
  Inductive day : Type :=
    | monday : day
    | tuesday : day
    | wednesday : day
    | thursday : day
    | friday : day
    | saturday : day
    | sunday : day.

  Definition next_day (d : day) : day :=
    match d with
    | monday => tuesday
    | tuesday => wednesday
    | wednesday => thursday
    | thursday => friday
    | friday => saturday
    | saturday => sunday
    | sunday => monday
    end.

  Example test_next_day : (next_day (next_day saturday)) = monday.
  Proof. simpl. trivial. Qed.
End Day.

Require Extraction.
Extraction "day.ml" Day.
