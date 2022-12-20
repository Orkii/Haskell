--import Control.Monad
--

--
--
--findPrimeSum ps 
--    | isPrime sumps = Just sumps
--    | otherwise     = findPrimeSum (tail ps) `mplus` findPrimeSum (init ps)
--    where
--    sumps = sum ps
--
--problem_50 = findPrimeSum $ take 546 primes


--import Euler.Helpers
import Data.List

isPrime k = if k > 1 then null [ x | x <- [2..k - 1], k `mod` x == 0] else False

primes = next 2 where
	next x | isPrime x = x:(next (x+1))
		   | True = (next (x+1))
		   
prime n = takeWhileSum n primes
takeWhileSum n = takeWhileArr (\x -> sum x <= n)
takeWhileArr f xs = takeWhileF f [] xs
    where
        takeWhileF f rs [] = reverse rs
        takeWhileF f rs (x:xs)
            | f (x:rs) = takeWhileF f (x:rs) xs
            | otherwise = reverse rs

primeSums n = map (map (\x -> (isPrime x,x) ) . takeWhile (<n) . scanl1 (+)) (tails (prime n))
main = print . maximum $ map index (primeSums 100000)
    where index x = if null $ ind x 
                    then (0,0) 
                    else (last $ ind x, snd (x !! (last $ ind x)))
          ind = findIndices (fst)