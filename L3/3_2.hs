import Debug.Trace
import Data.Char(digitToInt)
import Data.Char
import Data.List
fwToLower :: [String] -> [String]
sortStrings :: [String] -> [String]



--filterS :: [String] -> String -> [String]
--filterS [] s = []
--filterS (h:ts) s | length h < length s  = h : filterS ts s
--				 | True				    = filterS ts s
				 
--filterB :: [String] -> String -> [String]
--filterB [] s = []
--filterB (h:ts) s | length h >= length s  = h : filterB ts s
--				 | True					 = filterB ts s


filterB str s = filter (\a -> length a >= length s) str
filterS str s = filter (\a -> length a < length s) str

sortStrings [] = []
sortStrings (h:ts) = (sortStrings (filterS ts h)) ++ [h] ++ (sortStrings (filterB ts h))
				   
fwToLower str = map (\(h:st) -> (toLower h):st) str

doThing :: [String] -> [String]


--doThing a =  sortStrings ((wordsWhen (\a -> a == ' ')).fwToLower a)

doThing a =  sortStrings (fwToLower a)

main a = doThing a --a =  --doThing a






