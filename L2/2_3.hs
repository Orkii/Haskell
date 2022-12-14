import Data.Char(digitToInt)

conver8_10 :: String -> Int
converX_10 :: String -> Int
converX_10_ :: String -> Int
-- 1 - I, 5 - V, 10 - X, 50 - L, 100 - C, 500 - D и 1000 - M.
mySum :: String -> String-> Int


getBefore :: String -> String 
getAfter :: String -> String 
smartSum :: String -> Int

rimToInt :: Char -> Int
rimToInt c | c == 'I'  = 1
		   | c == 'V'  = 5
		   | c == 'X'  = 10
		   | c == 'L'  = 50
		   | c == 'C'  = 100
		   | c == 'D'  = 500
		   | c == 'M'  = 1000
		   | True = error "SMTH go wrong"
		   
conver8_10 "" = 0
conver8_10 (h:st) = (digitToInt h) * (8 ^ length st) + (conver8_10 st)

converX_10 "" = 0
converX_10  (a:(h:st)) | (rimToInt a) < (rimToInt h) 	= (converX_10 (h:st)) - (rimToInt a)
					   | True 							= (converX_10 (h:st)) + (rimToInt a)
					 
converX_10  (h:st) = (converX_10 st) + (rimToInt h)
					 
converX_10_ (a:(h:st)) = (rimToInt h) + (converX_10 st)

mySum i1 i2 = (conver8_10 i1) + (converX_10 i2)

getBefore (h:st) | h == '+' = "" 
				 | True = (h:getBefore st)
	
getAfter ('+':st) = st
getAfter (h:st) = getAfter st


smartSum s1 = mySum (filter (\xs -> (xs /=' ')) (getBefore s1)) (filter (\xs -> (xs /=' ')) (getAfter s1))

main i1 = smartSum i1


 
 
