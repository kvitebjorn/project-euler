module Main where

-- Problem 1. Find the sum of all the multiples of 3 or 5 below 1000
main :: IO ()
main = print (show (sum [i | i <- [3..999], mod i 3 == 0 || mod i 5 == 0]))