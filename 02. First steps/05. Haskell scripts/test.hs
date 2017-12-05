-- ghci test.hs
-- :reload to load new code

double x = x + x

quadruple x = double (double x)

factorial n = product [1..n]

average ns = sum ns `div` length ns
