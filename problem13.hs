module Main where

main :: IO ()
main = do
    raw <- readFile "problem13.txt"
    let input = map read $ lines raw
    print $ take 10 $ show $ sum input
    