Needs["Lazy`"]
euler13 = 
 Lazy[StringToStream[
   Import["http://projecteuler.net/problem=13", "Text"]]];
nums = euler13 ~
  Select~ (StringMatchQ[#, RegularExpression[".*\d{50}.*"]] &) // List;
nums = Read[StringToStream[#], Number] & /@ nums;
StringTake[IntegerString[Total[nums]], 10]
