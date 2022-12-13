--Для положительного целого числа n 
--пусть f(n) будет суммой квадратов цифр 
--(по основанию 10) числа n, например
--
--f(3) = 32 = 9,
--f(25) = 22 + 52 = 4 + 25 = 29,
--f(442) = 42 + 42 + 22 = 16 + 16 + 4 = 36
--
--Найдите последние девять цифр суммы всех n,
--0 < n < 1020, таких, что f(n) является полным квадратом.
--142989277


f :: Int -> Int
--ps :: Int -> Bool

f 0 = 0
f x = (mod x 10) ^ 2 + f (div x 10)

ff = next 1 where
	next x = (f x):(next (x+1))


fun :: Int -> Int
fun x = sum (take x ff)

main x= fun x

main1 x = mod (floor x) (floor (sqrt x))
main2 x = mod (floor x) (floor x)