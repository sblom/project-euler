PalindromeQ[n_Integer] := 
 With[{ns = IntegerString[n]}, ns == StringReverse[ns]]

Max[Select[Flatten[Table[i*j, {i, 900, 999}, {j, 900, 999}]], 
  PalindromeQ]]
