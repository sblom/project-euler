Solve[x^2 + y^2 == z^2 && x + y + z == 1000, {x, y, z}];
Table[Join[{x -> x0}, %[[1]] /. x -> x0], {x0, 1, 999}];
Cases[%, {x -> x0_Integer, y -> y0_Integer /; y0 > 0, 
   z -> z0_Integer /; z0 > 0} /; x0 < y0 < z0]
