import System.IO
fnc [] _ = []
fnc (x:xs) n = (x + n) : fnc xs n
 
main = do
    putStrLn "Enter list"
    l1 <- getLine

    putStrLn "Enter num for get sum"
    l2 <- getLine

    putStrLn $ show $ fnc (read l1) (read l2)