import System.IO
 
fnc [] _ = []
fnc _ [] = []
fnc (x:xs) (y:ys) = (x+y) : fnc xs ys
 
main = do
       putStrLn "1 spisok"
       l1 <- getLine
       putStrLn "2 spisok"
       l2 <- getLine
       putStrLn $ show $ fnc (read l1) (read l2)