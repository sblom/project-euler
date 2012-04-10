Needs["Lazy`"]

Collatz[n_] := 
 Collatz[n] = 
  Which[n == 1, 1, EvenQ[n], 1 + Collatz[n/2], OddQ[n], 
   1 + Collatz[3 n + 1]]

countdown = Map[(1000000 - #) &, Take[Lazy[Integers], 999999]]

(* Seems like there should be a way to do these two lines at one time. *)
max = Fold[Max, -Infinity, Map[Collatz, countdown]]

Select[Lazy[Integers]~Take~999999, (Collatz[#] == max &)] // First
