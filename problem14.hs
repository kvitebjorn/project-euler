module Main where

import Data.Function (on)
import Data.List (maximumBy)

collatz :: Integral t => t -> [t]
collatz n 
    | n == 1    = [1]
    | even n    = n : collatz (n `div` 2) 
    | otherwise = n : collatz (3*n+1)

main :: IO ()
main = print $ maximumBy (compare `on` snd) [(i, length c) | i <- [1..999999], let c = collatz i]
