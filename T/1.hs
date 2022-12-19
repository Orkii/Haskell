import Data.Char

f :: string  -> bool

f x | mod (countEven  x) 2 == 0 = True 
	| True = False
	
	
main = f "efadf3"