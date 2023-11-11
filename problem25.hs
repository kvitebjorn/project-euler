module Main where

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

main :: IO ()
main = print $ head $ take 1 [i| (i, f) <- zip [0..] fibs, length (show f) == 1000]