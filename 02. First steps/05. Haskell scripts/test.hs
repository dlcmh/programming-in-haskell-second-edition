-- ghci test.hs
-- :reload or :r to reload new code
-- :load or :l "script name" to load code

double x = x + x

quadruple x = double (double x)

factorial n = product [1..n]

average ns = sum ns `div` length ns
