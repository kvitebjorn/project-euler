module Main where

factors n = [x | x <- [1..n `div` 2], n `mod` x == 0]

main :: IO ()
main = print $ sum [a | a <- [1..10000], 
    let b = sum $ factors a, 
    let d = sum $ factors b, 
    d == a, 
    b /= d]
