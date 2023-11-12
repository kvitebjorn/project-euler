module Main where

import Data.List (group)

primes :: [Integer]
primes = 2 : filter (null . tail . primeFactors) [3,5..]

primeFactors :: Integer -> [Integer]
primeFactors n = factor n primes
  where
    factor n (p:ps) 
        | p*p > n        = [n]
        | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
        | otherwise      = factor n ps

triangleNumbers :: [Integer]
triangleNumbers = scanl1 (+) [1..]

numDivisors :: Integer -> Int
numDivisors n = product $ map ((+1) . length) (group (primeFactors n))

main :: IO ()
main = print $ head $ filter ((> 500) . numDivisors) triangleNumbers