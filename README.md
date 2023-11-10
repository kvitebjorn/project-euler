# projecteuler
to run a problem, for example problem 1, assuming ghc is installed:

`ghc -o problem1 problem1.hs && ./problem1`


to generate performance metrics:

`ghc -prof -fprof-auto -rtsopts -o problem1 problem1.hs && ./problem1 +RTS -p`
