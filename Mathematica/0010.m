Needs["Lazy`"]
Total[Lazy[Primes]~TakeWhile~(# < 2000000 &)]
