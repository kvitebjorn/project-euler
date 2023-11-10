module Main where

main :: IO ()
main = print $ sum [i | i <- [3..999], mod i 3 == 0 || mod i 5 == 0]