module Main where

minus :: Ord a => [a] -> [a] -> [a]
minus (x:xs) (y:ys) = case compare x y of
           LT -> x : minus  xs  (y:ys)
           EQ ->     minus  xs     ys
           GT ->     minus (x:xs)  ys
minus  xs     _     = xs

-- https://wiki.haskell.org/Prime_numbers
primesToG :: (Ord a, Num a, Enum a) => a -> [a]
primesToG m = 2 : sieve [3,5..m]
    where
    sieve (p:xs) 
       | p*p > m   = p : xs
       | otherwise = p : sieve (xs `minus` [p*p, p*p+2*p..])

main :: IO ()
main = print $ sum $ takeWhile (<2000000) $ primesToG 2000000