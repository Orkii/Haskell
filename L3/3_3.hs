



p1 :: [(Char, Char)] -> [(Char, Char)]
p1 a = zip ((snd.unzip) a) ((fst.unzip) a)

p2 :: [(Char, Char)] -> [(Char, Char)]

main = p1 [('e','b'), ('b','c'), ('c','c'), ('c','e'), ('e','e')]


