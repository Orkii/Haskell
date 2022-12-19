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


squares1 = next 1 where 
			next x = (x^2):(next (x+1))

squares = take 40 squares1 -- sqrt (9^2 * 20) = 40.24922..
						   -- 9^2 * 20 = 1620

isSQ :: Integer -> Bool
isSQ x = elem x squares


startM = (0,1):[(x, 0) | x <- [1..1621]]







