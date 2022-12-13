--Строки исходного файла, содержащие заданное слово.  
-- \n
import Data.List

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

findSubstr xs ys = findIndex (isPrefixOf xs) (tails ys)



process :: String -> String -> String
--elem

getstrs :: [String] -> String -> [String]

getstrs [] str = []
					 
					 
getstrs (h:strs) str | findSubstr str h  == Nothing = getstrs strs str 
					 | True = h:(getstrs strs str)


compact :: [String] -> String

compact [] = []
compact (h:ts) = h ++ "\n" ++ (compact ts) 

process str a = compact (getstrs (splitBy (\x -> x == '\n') str) a)


main :: String -> IO ()
main a = do
    contents <- readFile "Test.txt"
    writeFile "Test2.txt" (process contents a)