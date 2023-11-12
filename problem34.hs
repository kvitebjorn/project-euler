module Main where

import Data.Char(digitToInt)

factorial :: (Num a, Enum a) => a -> a
factorial n = product [1..n]

main :: IO ()
main = print $ sum [n | n <- [3..1000000], 
    let n' = show n, 
    let s = sum $ map (factorial . digitToInt) n', 
    s==n]
