import Data.Char 
-- ord chr

shifr  :: String -> String 

unshifr  :: String -> String 
--doChar :: Char -> Char
shifr [] = ""
shifr (hs:ts) = if ((elem (ord hs + 2) [65..90]) || (elem (ord hs + 2) [97..122]))
				then (chr (ord hs + 2) ):(shifr ts)
				else if ((elem (ord hs + 2) [91..92]) || (elem (ord hs + 2) [123..124]))
					 then (chr (ord hs - 24) ):(shifr ts)
					 else hs:(shifr ts)
					 
unshifr [] = ""				 
unshifr (hs:ts) = if ((elem (ord hs - 2) [65..90]) || (elem (ord hs - 2) [97..122]))
				then (chr (ord hs - 2) ):(shifr ts)
				else if ((elem (ord hs - 2) [63..64]) || (elem (ord hs - 2) [95..96]))
					 then (chr (ord hs + 24) ):(shifr ts)
					 else hs:(shifr ts)

main str c = if c == 's' 
			 then shifr str
			 else unshifr str
			 
			 
			 
--main str = unshifr str

