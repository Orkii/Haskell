import Debug.Trace

p1 :: [(Char, Char)] -> [(Char, Char)]
p2 :: [(Char, Char)] -> [(Char, Char)] -> [(Char, Char)]
p2_ :: [(Char, Char)] -> [(Char, Char)] -> [(Char, Char)]
p2__ :: (Char, Char) -> [(Char, Char)] ->  [(Char, Char)]

 

p1 a = zip ((snd.unzip) a) ((fst.unzip) a)
 
p2 a b = p2_ a b
p2_ [] a = []
p2_ (h:ts) a = (p2__ h a) ++ (p2_ ts a)

p2__ a [] = []
p2__ a (h:ts) | (snd a) == (fst h) = (fst a, snd h):(p2__ a ts)
			  | True = p2__ a ts


main1 = p1 [('e','b'), ('b','c'), ('c','c'), ('c','e'), ('e','e')]

main2 = p2 [('e','b'), ('b','c'), ('c','c'), ('c','e'), ('e','e')] [('e','b'), ('b','c'), ('c','c'), ('c','e'), ('e','e')]

main3 = p2 (p1 [('e','b'), ('b','c'), ('c','c'), ('c','e'), ('e','e')]) [('e','b'), ('b','c'), ('c','c'), ('c','e'), ('e','e')] 

