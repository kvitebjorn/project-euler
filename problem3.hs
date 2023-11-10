module Main where

primes :: [Int]
primes = [n | n <- [2..], all ((> 0) . rem n) [2..n-1]]

primeFactors :: Int -> [Int] -> [Int] -> [Int]
primeFactors 1 _ fs      = reverse fs
primeFactors n (p:ps) fs = primeFactors (n `div` p) ps (p : fs)

main :: IO ()
main = print $ maximum $ primeFactors 600851475143 [p | p <- primes, 600851475143 `mod` p == 0] []