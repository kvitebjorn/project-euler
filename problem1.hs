module Main where

-- ghc -o problem1 problem1.hs && ./problem1
main :: IO ()
main = print (show (sum [i | i <- [3..999], mod i 3 == 0 || mod i 5 == 0]))