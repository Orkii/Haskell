--Для положительного целого числа n 
--пусть f(n) будет суммой квадратов цифр 
--(по основанию 10) числа n, например
--
--f(3) = 3^2 = 9,
--f(25) = 2^2 + 5^2 = 4 + 25 = 29,
--f(442) = 4^2 + 4^2 + 2^2 = 16 + 16 + 4 = 36
--
--Найдите последние девять цифр суммы всех n,
--0 < n < 10^20, таких, что f(n) является полным квадратом.
--142989277


--f :: Integer -> Integer
--
--f 0 = 0
--f x = (mod x 10) ^ 2 + f (div x 10)
--
--ff = next 1 where
--	next x = f x:(next (x+1))
--
--isSQ :: Integer -> Bool
--isSQ 0 = False
--isSQ x = (mod x (floor (sqrt (fromIntegral x))) == 0)
--qqq :: Int -> Integer
--qqq x =  (filter isSQ (take x ff))

import Debug.Trace


squares1 = next 1 where 
			next x = (x^2):(next (x+1))

squares = take 40 squares1 -- sqrt (9^2 * 20) = 40.24922..
						   -- 9^2 * 20 = 1620

isSQ :: Integer -> Bool
isSQ x = elem x squares

thr (_,_,a) = a
snd1  (_,a,_) = a

startM = (0, 0, 1):[(x, 0,0) | x <- [1..1621]]


--iterSum :: Int -> (Integer, Integer, Integer)  -> (Integer, Integer, Integer)

-----------------------					  		 	SQRSUM---Sum      Count
goFrom0To20::  Integer -> 						[(Integer, Integer, Integer)] -> [(Integer, Integer, Integer)] --LEN  Go i
goFrom0To9 ::  Integer -> Integer -> 			[(Integer, Integer, Integer)] -> [(Integer, Integer, Integer)] -> [(Integer, Integer, Integer)] --BASE Go j
goFrom0ToK ::  Integer -> Integer -> Integer -> [(Integer, Integer, Integer)] -> [(Integer, Integer, Integer)] -> [(Integer, Integer, Integer)] --     Go k
--			   i     	 j     		 k	
--
--
--
--
--goFrom0To20 x = (0,0)
--goFrom0To9  x = (0,0)
--
--
--
--
goFrom0To20 2 x = trace "21" x
goFrom0To20 i x = trace "goFrom0To20" goFrom0To20 (i+1) (goFrom0To9 i 0 x x)


goFrom0To9 i j y x  | j >= 10 = trace "10" x
					| True = trace "goFrom0To9" goFrom0To9 i (j+1) y (goFrom0ToK i j 0 y x)



goFrom0ToK i j k y x | (k + j*j) > 1620 = trace "1620" x
					 | True =   goFrom0ToK i j (k+1) y (map (\(x1,x2,x3) -> if (x1 == k + j*j) then
					 (x1,		                                            --Index
					 x2 +  		  ((snd1.head) aaa) +                    	--Sum
					 10^(i-1)*j * ((thr.head)  aaa),               			--
					 x3 + 		  ((thr.head)  aaa)) else (x1,x2,x3)) x)    --Count
					 where aaa = (filter (\(y1,y2,y3) -> y1 == k ) y)
					 


--goFrom0ToK i j k y x | (k + j*j) > 1620 = x
--					 | True = map (\(x1,x2,x3) -> if (x1 == k + j*j) then
--					 (x1,		                                                                 --Index
--					 x2 +  ((snd1.head) (filter (\(y1,y2,y3) -> y1 == k) y)) +                    --Sum
--					 10^(i-1)*j * ((thr.head) (filter (\(y1,y2,y3) -> y1 == k) y)),               --
--					 x3 + ((thr.head) (filter (\(y1,y2,y3) -> y1 == k ) y))) else (x1,x2,x3)) x   --Count




--sum[i][k + j * j] = 
--(sum[i][k + j * j] + sum[i - 1][k] + 
--Library.powMod(BASE, i - 1, MODULUS) * j % MODULUS * count[i - 1][k]) % MODULUS;
--count[i][k + j * j] = (count[i][k + j * j] + count[i - 1][k]) % MODULUS;
			

mySum :: [(Integer,Integer,Integer)] -> Integer
mySum [] = 0
mySum ((h1,h2,h3):ts) = h2 + (mySum ts)

main =  mySum (goFrom0To20 1 startM)


--foldr (\x y -> (x+y)/2) 54 [12,4,10,6]
--qqq :: Int -> [(Integer, Integer)]
--qqq x =  (filter isSQ1 (take x ff))