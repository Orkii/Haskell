
main = elem  (head (drop 1 "abd"))   (tail (tail "abcdef"))
main1 = ([3,4,7,8] !! (last [1,2,3])) : (drop 2 [1,2,3,4,5])
main2 = replicate (minimum [5,6,3,4]) ("abcdef" !! 4)