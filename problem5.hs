module Main where

main :: IO ()
main = print $ head $ take 1 [n | n <- [2520, 2540..], all ((==0) . mod n) [11..19] ]