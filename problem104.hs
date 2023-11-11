module Main where

import Data.Set (fromList)

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

panDigits = fromList "123456879"

isPandigital :: String -> Bool
isPandigital s = fromList s == panDigits

main :: IO ()
main = print $ head $ take 1 
    [i | (i, f) <- zip [0..] fibs,
        let s = show f,
        isPandigital (take 9 s),
        isPandigital (drop (length s - 9) s)]
