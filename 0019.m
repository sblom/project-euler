<< Calendar`
Length[Select[
  Flatten[Table[
    DayOfWeek[{y, m, 1}], {y, 1901, 2000}, {m, 1, 12}]], # == 
    Sunday &]]
