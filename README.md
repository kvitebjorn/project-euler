# projecteuler
to run a problem, for example problem 1:

`ghc -o problem1 problem1.hs && ./problem1`


to generate profiling metrics:

`ghc -prof -fprof-auto -rtsopts -o problem1 problem1.hs && ./problem1 +RTS -p`
