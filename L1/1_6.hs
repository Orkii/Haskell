


fib1 :: Integer -> Integer -> Integer -> Integer
fib :: Integer -> Integer 


fib 1 = 0
fib 2 = 1
fib 3 = 1
fib a = fib1 (a-3) 1 1
fib1 0 a b = b
fib1 n a b = fib1 (n-1) b (a+b)


fac1 :: Integer -> Integer -> Integer
fac :: Integer -> Integer 

fac a = fac1 a 1
fac1 1 a = a
fac1 n a = fac1 (n-1) (a*n)



--fib(n+m+1)-min{n!,m!}
main n m = fib (n+m+1) - (min (fac n) (fac m))