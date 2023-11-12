module Main where

import Data.Char(digitToInt)

factorial :: (Num a, Enum a) => a -> a
factorial n = product [1..n] 

main :: IO ()
main = print $ sum $ map digitToInt $ show $ factorial 100
