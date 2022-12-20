import Debug.Trace
import Data.Char(digitToInt)
import Data.Char
import Data.List
fwToLower :: [String] -> [String]
sortStrings :: [String] -> [String]

filterB str s = filter (\a -> length a >= length s) str
filterS str s = filter (\a -> length a < length s) str

sortStrings [] = []
sortStrings (h:ts) = (sortStrings (filterS ts h)) ++ [h] ++ (sortStrings (filterB ts h))
				   
fwToLower str = map (\(h:st) -> (toLower h):st) str

doThing :: [String] -> [String]

doThing a =  sortStrings (fwToLower a)

main a = doThing a 






