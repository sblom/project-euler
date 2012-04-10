<<Lazy`
Total[Lazy[Fibonacci] ~TakeWhile~ (# < 2000000 &) ~Select~ EvenQ]
