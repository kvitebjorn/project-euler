module Main where

import Data.Set
    ( Set,
      union,
      fromList,
      difference,
      map,
      isSubsetOf,
      elemAt,
      empty,
      null )

minus' (x:xs) (y:ys) = case compare x y of
           LT -> x : minus'  xs  (y:ys)
           EQ ->     minus'  xs     ys
           GT ->     minus' (x:xs)  ys
minus'  xs     _     = xs

union' :: Ord a => [a] -> [a] -> [a]
union' (x:xs) (y:ys) = case compare x y of
           LT -> x : union'  xs  (y:ys)
           EQ -> x : union'  xs     ys
           GT -> y : union' (x:xs)  ys
union'  xs     []    = xs
union'  []     ys    = ys

-- https://wiki.haskell.org/Prime_numbers
primesToG m = 2 : sieve [3,5..m]
    where
    sieve (p:xs)
       | p*p > m   = p : xs
       | otherwise = p : sieve (xs `minus'` [p*p, p*p+2*p..])

rotateOnce :: [a] -> [a]
rotateOnce [] = []
rotateOnce (x:xs) = xs ++ [x]

rotations :: [a] -> [[a]] -> [[a]]
rotations s rs
    | (length s) == (length rs) = rs
    | otherwise = rotations (rotateOnce s) (s : rs)

getCircularPrimes :: Ord a => Set [a] -> Set [a] -> Set [a]
getCircularPrimes xs cs
    | Data.Set.null xs = cs
    | otherwise =
        if ps `isSubsetOf` xs
            then getCircularPrimes (xs `difference` ps) (cs `union` ps)
            else getCircularPrimes (xs `difference` ps) cs
        where
            p   = elemAt 0 xs
            ps  = fromList $ rotations p []

main :: IO ()
main = do
    let primes = Data.Set.map show $ fromList $ primesToG 1000000
    print $ length $ getCircularPrimes primes empty