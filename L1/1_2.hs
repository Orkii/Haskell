-- !(53/4 > 15 -> сумма списка первых трех простых натуральных чисел четна)
 

sum2 :: Integer -> Integer
sum2 a = sum1 a 0

sum1 :: Integer -> Integer -> Integer
sum1 0 b = b
sum1 a b = sum1 (a - 1) (a + b)

sums :: [Integer] -> Integer -> Integer
sums s 0 = 0
sums (hs:ts) i = hs + sums ts (i-1)


main = not(not(53/4>15) || (div (sums [1, 2 ,3] 3) 2) == 0)

--main = not(not(53/4>15) || (div (sum2 3) 2) == 0)
