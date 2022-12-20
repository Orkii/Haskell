import Data.Char 

shifr  :: Char -> Char
unshifr :: Char -> Char


shifr c   | ((elem (ord c + 2) [65..90]) || (elem (ord c + 2) [97..122]))       = chr (ord c + 2)
		  | ((elem (ord c + 2) [91..92]) || (elem (ord c + 2) [123..124])) = chr (ord c + 2 - 26)
		  | True = c 

unshifr c | ((elem (ord c - 2) [65..90]) || (elem (ord c - 2) [97..122]))       = chr (ord c - 2)
		  | ((elem (ord c - 2) [63..64]) || (elem (ord c - 2) [95..96])) = chr (ord c - 2 + 26)
		  | True = c 

main str c | c == 's' = map shifr str
		   | c == 'u' = map unshifr str
		   | True = "No"