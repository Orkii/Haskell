--Строки исходного файла, содержащие заданное слово.  
-- \n


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



main :: IO ()
main = do
    contents <- readFile "Test.txt"
    writeFile "Test2.txt" (process contents)

process :: String -> String
--elem

getstrs :: [String] -> [String]

getstrs str | 
			| 


process str = splitBy (\x -> x == '\n') str
