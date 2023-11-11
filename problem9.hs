module Main where

main :: IO ()
main = print $ head $ take 1 [a*b*c |
                         a <- [1 .. 500 ],
                         b <- [a .. 500 ],
                         a < b,
                         c <- [b .. 500 ],
                         b < c,
                         (a + b + c) == 1000,
                         (a^2 + b^2) == c^2]