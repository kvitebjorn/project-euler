module Main where

import Data.List (sortOn)

main :: IO ()
main = print $ last (sortOn snd [(p, s) | p <- [1..1000],
         let s = length [(a,b,c) |
                 a <- [1 .. p `div` 2 ],
                 b <- [a .. p `div` 2 ],
                 c <- [b .. p `div` 2 ],
                 (a + b + c) == p,
                 (a^2 + b^2) == c^2]])