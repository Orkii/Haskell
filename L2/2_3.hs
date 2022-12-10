
aaa :: [Int] -> Int

aaa (hs:ts) = if div hs 2 == 0
		then hs + aaa ts
		else aaa ts

main = aaa