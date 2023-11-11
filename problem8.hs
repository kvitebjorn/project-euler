module Main where

import Data.Char(digitToInt)

slide :: String -> Int -> Integer -> Integer
slide s n p
    | null (take n s) = p
    | p' > p = slide (drop 1 s) n p'
    | otherwise = slide (drop 1 s) n p
    where p' = toInteger $ product $ map digitToInt $ take n s

main :: IO ()
main = do
    raw <- readFile "problem8.txt"
    let input = concat $ lines raw
    print $ slide input 13 1