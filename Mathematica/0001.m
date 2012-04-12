Needs["Lazy`"]
Total[Select[Lazy[Integers] ~Take~ 999, Mod[#, 3] == 0 || Mod[#, 5] == 0 &]]
