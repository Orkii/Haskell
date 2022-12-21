p1 :: (Int, Int) -> Bool
p2 :: (Int, Int) -> Bool
p3 :: (Int, Int) -> Bool
p4 :: (Int, Int) -> Bool
p5 :: (Int, Int) -> Bool

p1 (x,y) = mod (x+y) 2 == 0
p2 (x,y) = x>y
p3 (x,y) = (mod x 4) == (mod y 4)
p4 (x,y) = x + 2 * y < 8
p5 (x,y) = mod (max x y) 2 == 1

doThing :: [(Int, Int) -> Bool] -> [(Int, Int)] -> [Bool]

doThing [] h = []
doThing (f:tf) h = (and (map f h)) : (doThing tf h)

doThing1 :: [(Int, Int) -> Bool] -> [(Int, Int)] -> [Bool]
doThing1 t h = map (\a -> (and (map a h))) t

main x = doThing1 [p1, p2, p3, p4, p5] x