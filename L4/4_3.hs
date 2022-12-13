--Простое число 41 можно представить в виде суммы шести последовательных простых чисел:

--41 = 2 + 3 + 5 + 7 + 11 + 13
--Это самая длинная сумма последовательных 
--простых чисел, которая в сумме дает простое число меньше ста.
--
--Самая длинная сумма последовательных 
--простых чисел меньше тысячи, которая добавляется к простому числу,
--содержит 21 член и равна 953.
--
--Какое простое число меньше миллиона 
--можно представить в виде суммы 
--самых последовательных простых чисел?

import Debug.Trace

isSimple :: Int -> Int -> Bool

isSimple s x | s == x = True
			 | mod s x == 0 = False
             | True = isSimple s (x+1)

simpele = next 2 where
	next x | isSimple x 2 = x:(next (x+1))
		   | True = (next (x+1))
		   

proc :: [Int] -> Int -> Int -> Int -> [Int]


proc (h:ts) i now max | now + h > max = [i]
					| now > max = [i]
					| h > max = [i]
					| True = ( (proc ts i now max) ++ (proc ts (i+1) (now + h) max) )





--main = take 100 simpele  
main = proc simpele 0 0 100
main1 = take 30 simpele 