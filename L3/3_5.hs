splitBy1    :: (Char -> Bool) -> String -> [String]
splitBy    :: (Char -> Bool) -> String -> [String]
removeWord :: (Char -> Bool) -> String -> String
getWord    :: (Char -> Bool) -> String -> String

getWord f [] = []
getWord f (h:ts) | f h  = []
				 | True = h:(getWord f ts)

removeWord f [] = []
removeWord f (h:ts) | f h  = ts
					| True = removeWord f ts


splitBy1 f [] = []
splitBy1 f ts = (getWord f ts):(splitBy1 f (removeWord f ts))
splitBy f ts = filter (\x -> not(x == "")) (splitBy1 f ts)



main a = splitBy (\x -> elem x [' ', '.', ',', '!', '?']) a














