import Data.Char(digitToInt)
getBefore :: String -> String 
getAfter :: String -> String 

getBefore (h:st) | h == ':' = "" 
				 | True = (h:getBefore st)
getAfter (':':st) = st
getAfter (h:st) = getAfter st

hmIntoMin :: String -> Int

hmIntoMin i  | ((read (getBefore i)) > 23) || ((read (getBefore i)) < 0) || ((read (getAfter i)) > 59) || ((read (getAfter i)) < 0) = error "Time input incorrect"
			 | True = (read (getBefore i)) * 60 + (read (getAfter i))

getWhatToDo i | elem i [480..574] = show "First classe"
			  | elem i [575..584] = show "First small break" 
			  | elem i [585..679] = show "Second classe"
			  | elem i [680..729] = show "First big break"	  
			  | elem i [730..824] = show "Third classe"  
			  | elem i [825..834] = show "Second small break"
			  | elem i [835..929] = show "Fourth classe"	  
			  | elem i [930..969] = show "Second big break"		  
			  | elem i [970..1064] = show "Fifth classe"  
			  | elem i [1065..1074] = show "Third small break"  
			  | elem i [1075..1169] = show "Sixth classe"		  
			  | elem i [1170..1179] = show "Fourth small break"			  
			  | elem i [1180..1269] = show "seventh classe"
			  | True = error "Time outside the school day"
			  
main i = getWhatToDo (hmIntoMin i)
 