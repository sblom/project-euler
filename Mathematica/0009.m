result = Solve[{x^2 + y^2 == z^2 && x + y + z == 1000}, {x, y, 
    z}][[1]]
Cases[Table[
  Join[{x -> x0}, result /. x -> x0], {x0, 1, 
   999}], {x -> xval_Integer, y -> yval_Integer, z -> zval_Integer} /;
   xval < yval < zval]//First
