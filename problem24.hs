module Main where

import Data.List (permutations, sort)

main :: IO ()
main = print $ sort (permutations ['0'..'9']) !! 999999