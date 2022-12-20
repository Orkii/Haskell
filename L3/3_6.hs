 

p a = [ [x,y] | x <- a, y <- a, y >= x, not(x==y)]

main = p [1,3,5,10,15]