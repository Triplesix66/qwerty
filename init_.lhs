init_ :: [a] -> [a]
init_ [x] = []
init_ (x:xs) = x : init_ xs
init_ [] = error "empty list"
