



not_ :: [Int] -> [Int]
or_  :: [Int] -> [Int] -> [Int]
tri_ :: [Int] -> [Int] -> [Int]
and_ :: [Int] -> [Int] -> [Int]
del_ :: [Int] -> [Int] -> [Int]

not_ mas = filter (\x -> not(elem x mas)) [1..10]
or_  mas1 mas2 = filter (\x -> (elem x mas1) || (elem x mas2)) [1..10]
and_  mas1 mas2 = filter (\x -> (elem x mas1) && (elem x mas2)) [1..10]
tri_  mas1 mas2 = or_ (del_ mas1 mas2) (del_ mas2 mas1)
del_  mas1 mas2 = filter (\x -> (elem x mas1) && not(elem x mas2)) [1..10]

main a b c = tri_ a (or_ (not_ b) c)