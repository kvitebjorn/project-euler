module Main where

import Data.Char(digitToInt)

main :: IO ()
main = print $ sum $ map digitToInt $ show $ 2^1000
