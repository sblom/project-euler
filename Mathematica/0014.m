$RecursionLimit = 1000

Collatz[n_] := 
 Collatz[n] = 
  Which[n == 1, 1, EvenQ[n], 1 + Collatz[n/2], OddQ[n], 
   1 + Collatz[3 n + 1]]

Module[{max=-Infinity,imax=0,i=1,col=0},
  While[i < 1000000,
    col = Collatz[i];
    If[col > max, max = col; imax = i;];
    ++i;
  ];
  imax
]
