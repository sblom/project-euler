PalindromeQ[n_Integer] := IntegerString[n] /. ns_ :> ns == StringReverse[ns]

Max[Select[Flatten[Table[i*j, {i, 900, 999}, {j, 900, 999}]], PalindromeQ]]
