doubleFact :: Integer -> Integer
doubleFact n =  if n == 1
then 1
else if n == 2
then 2
else (doubleFact ( n-2))*n
