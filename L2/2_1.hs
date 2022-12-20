--а)должен содержаться знак подчеркивания, но не на первом и не на последнем месте; 
--б)количество заглавных букв не должно превышать количество строчных.


import Data.Char

checkA :: String -> Bool
checkB :: String -> Bool

countUpper :: String -> Int
--countLower :: String -> Int


countUpper [] = 0
countUpper (hs:ts) = if isUpper hs then 1 + countUpper(ts) else countUpper(ts)


checkA str = (elem '_' str) && not(last str == '_') && not(head str == '_')

checkB str = (length str - countUpper str) >= (countUpper str)

main a = (checkA a) && (checkB a)