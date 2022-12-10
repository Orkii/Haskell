--По заданным  двум спискам возвращает список, содержащий в обратном порядке элементы списка, имеющего меньшую длину.  

-- main :: string -> string -> string

--getLongest :: string -> string -> string
--getLongest s1 s2 = if ((length s1) > (length s2)) then s1 else s2

--reverse2 :: [a] -> [a]  -> [a] 
--reverse2 [] acc = acc
--reverse2 (x:xs) acc = reverse2 xs (x:acc)
--
--reverse1 :: [a]  -> [a] 
--reverse1 xs = reverse2 xs []





main a b = if length a < length b then (reverse a) else (reverse b) --getLongest a b
--main a = reverse1 a