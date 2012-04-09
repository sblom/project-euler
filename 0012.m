<<LazyList`
trianglesStream[n_:1, x_:2] := 
 With[{nn = n + x, xx = x + 1}, LazyList[n, trianglesStream[nn, xx]]]
triangles = trianglesStream[]
divisorsLength[n_] := Apply[Times, #[[2]] + 1 & /@ FactorInteger[n]]
First[Select[triangles, divisorsLength[#] > 500 &]]
