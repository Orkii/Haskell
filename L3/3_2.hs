
import Debug.Trace
import Data.Char(digitToInt)
import Data.Char
import Data.List
fwToLower :: String -> String
fwToLower1 :: String -> String
sortStrings :: [String] -> [String]

fwToLower (' ':st) = fwToLower1 (' ':st)
fwToLower (h:st) = (toLower h) : fwToLower1 (st)
fwToLower1 "" 				= ""
fwToLower1 (' ':(' ':st)) 	= ' ' : (fwToLower1 (' ':st))			
fwToLower1 (' ':(h:st)) 	= ' ' : ((toLower h) : fwToLower1 (st))			
fwToLower1 (h:st) 			= h : fwToLower1 (st)				







wordsWhen     :: (Char -> Bool) -> String -> [String]
wordsWhen p s =  case dropWhile p s of
                      "" -> []
                      s' -> w : wordsWhen p s''
                            where (w, s'') = break p s'





filterS :: [String] -> String -> [String]
filterS [] s = []
filterS (h:ts) s | length h < length s  = h : filterS ts s
				 | True				    = filterS ts s
				 
filterB :: [String] -> String -> [String]
filterB [] s = []
filterB (h:ts) s | length h >= length s  = h : filterB ts s
				 | True					 = filterB ts s

sortStrings [] = []
sortStrings (h:ts) = (sortStrings (filterS ts h)) ++ [h] ++ (sortStrings (filterB ts h))
				   


doThing :: String -> [String]


--doThing a =  sortStrings ((wordsWhen (\a -> a == ' ')).fwToLower a)

doThing a =  sortStrings (wordsWhen (\x -> x == ' ') (fwToLower a))

--(\(a) (b) -> (length a <  length b))


main a = doThing a --a =  --doThing a






