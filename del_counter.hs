import Data.List

d:: Integer -> [Integer]
d n = [i| i <- [1..n], (n `mod` i) == 0]
primesSGT :: [Integer]
primesSGT = 2 : ops
    where
    ops = 3 : [n | (r:q:_, px) <- (zip . tails . (3:) . map (\x ->x*x)) ops (inits ops),
                   n <- [r+2,r+4..q-2],  all ((> 0) . rem n) px]
pd:: Integer -> [Integer]
pd n = [i| i <- takeWhile (<n) $ primesSGT,  (n `mod` i) == 0]
nd :: Integer -> Int 
nd = length . d
 
 
main::IO()
main = do
    let n = 6
    print "Natural number - "
    print n
    print "vsego natural delitelei"
    print $ nd n