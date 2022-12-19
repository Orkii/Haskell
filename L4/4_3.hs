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
import Data.List

isSimple :: Int -> Bool
isSimple1 :: Int -> Int -> Bool
isSimple1 s x | (s + 1 < x * 2) = True
			  | mod s x == 0 = False
              | True = isSimple1 s (x+1)
isSimple now = isSimple1 now 2

--isSimple k = if k > 1 then null [ x | x <- [2..k - 1], k `mod` x == 0] else False

simpele = 2:next 3 where
	next x | isSimple x = x:(next (x+2))
		   | True = (next (x+2))
		   


check :: (Int, Int) -> (Int, Int)

check (a,b) | isSimple b == True = (a,b)
			| True = (0,0)

proc  :: [Int] -> (Int, Int) -> Int -> (Int, Int)
procS :: [Int] -> (Int, Int) -> Int -> (Int, Int)
proc (h:ts) (i, now) max | (now + h > max) && (isSimple now) = (i, now)	
						 | (now + h > max) = (0,0)
						 | True = last (sort [(proc ts (0, 0) max),  (procS ts (i+1, (now + h)) max)] )

procS (h:ts) (i, now) max | (now + h > max) && (isSimple now) = (i, now)	
                          | (now + h > max) 				  = (0,0)
						  | True = last (sort [(check(i, now)) , (procS ts (i+1, (now + h)) max)] )
						  
--roc  :: [Int] -> (Int, Int) -> Int -> [(Int, Int)]
--rocS :: [Int] -> (Int, Int) -> Int -> [(Int, Int)]
--proc (h:ts) (i, now) max | (now + h > max) && (isSimple now) = [(i, now)]	
--						 | (now + h > max) = []
--						 | True = (proc ts (0, 0) max) ++ (procS ts (i+1, (now + h)) max) 
--
--procS (h:ts) (i, now) max | (now + h > max) && (isSimple now) = [(i, now)]	
--                          | (now + h > max) 					= []
--						  | True = (check(i, now)) ++ (procS ts (i+1, (now + h)) max) 

--main = take 100 simpele  
main3 x = proc simpele (0, 0) x
--main2 = take 30 (proc simpele (0, 0) 100)
--main1 = take 30 simpele 
