


--3*2^n-1
--2 5 11 23 47 95

sab = next 0 where
	next n = (3*2^n-1):next (n+1)


a n = foldl (+) 0 (take n sab)
main n = take n sab


--main = [3*2^n-1 | n <- [1..]]

