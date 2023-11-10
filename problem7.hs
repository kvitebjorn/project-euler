module Main where

primes :: [Int]
primes = [n | n <- [2..], all ((> 0) . rem n) [2..n-1]]

main :: IO ()
main = print $ last $ take 10001 primes