module Main where

import Data.Char (intToDigit)
import Numeric (showIntAtBase)

isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

main :: IO ()
main = print $ sum [n | n <- [1..1000000], 
    isPalindrome (show n), 
    isPalindrome (showIntAtBase 2 intToDigit n "")]