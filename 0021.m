Needs["Lazy`"]
Rest[Lazy[Integers]]~Take~9999  ~Select~
  ((Total@Most@Divisors@Total@Most@Divisors[#] === #) &) ~Select~
  ((Total@Most@Divisors[#] =!= #) &) // Total
