module Main where

isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

main :: IO ()
main = print $ maximum [p | x <- [1..999], y <- [1..999], let p = x * y, isPalindrome (show p)]