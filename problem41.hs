module Main where

import Data.List (permutations)
import Data.Set (fromList)

isqrt :: Int -> Int
isqrt = floor . sqrt . fromIntegral

isPrime :: Int -> Bool
isPrime k = (k > 1) && null [ x | x <- [2..isqrt k], k `mod` x == 0]

-- only need to check 7, because 4 is already given, 
-- and all other primes can have their digits summed and divided evenly by 3
main :: IO ()
main = do
    print $ maximum [ read p :: Integer | p <- permutations "1234567", isPrime (read p)]