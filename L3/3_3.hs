import Debug.Trace
import Data.List

p1 :: [(Char, Char)] -> [(Char, Char)]
p2 :: [(Char, Char)] -> [(Char, Char)]
p3 :: [(Char, Char)] -> [(Char, Char)]
p4 :: [(Char, Char)] -> [(Char, Char)]


p1 x = zip ((snd.unzip) x) ((fst.unzip) x)

p2 x= nub [(a,c) | (a,b) <- x, (b,c) <- x]

p3 x= nub [(a,c) | (a,b) <- p1 x, (b,c) <- x]

p4 x = nub [(a,b) | a <- (snd (unzip (p3 x))),
                    b <- (fst (unzip (p2 x)))]
					
--p2 a b = p2_ a b
--p2 a b = map (\x -> map (\y -> if (snd x == (fst y)) then (fst x, snd y) else ('  ',' ')) b ) a

main1 = p1 a

main2 = p2 a

main3 = p3 a 

main4 = p4 a 

a = [('e','b'), ('b','c'), ('c','c'), ('c','e'), ('e','e')]