Needs["Lazy`"]
triangles = FoldList[Plus,0,Lazy[Integers]]
divisorsLength[n_] := Apply[Times, #[[2]] + 1 & /@ FactorInteger[n]]
First[Select[triangles, divisorsLength[#] > 500 &]]
