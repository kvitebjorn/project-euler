module Main where

parse :: String -> [[Int]]
parse = map (map read . words) . lines

path :: [[Int]] -> Int
path = head . foldr1 step

step :: (Num a, Ord a) => [a] -> [a] -> [a]
step [] _ = []
step (x:xs) (y:z:zs) = x + max y z : step xs (z:zs)

main :: IO ()
main = do
    raw <- readFile "problem67.txt"
    let triangle = parse raw
    print $ path triangle
