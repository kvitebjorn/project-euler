module Main where

fib :: (Eq t, Num t, Num a) => t -> a
fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

main :: IO ()
main = print $ sum $ takeWhile (< 4000000) [f | i <- [1..], let f = fib i, even f]