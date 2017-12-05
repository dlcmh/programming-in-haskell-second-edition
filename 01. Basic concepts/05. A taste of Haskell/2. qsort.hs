-- ghci test.hs
-- :reload or :r to reload new code
-- :load or :l "script name" to load code

-- *Main> qsort [7,6,3,10,100]
-- [3,6,7,10,100]

-- *Main> qsort "david"
-- "addiv"

-- *Main> qsort ['d', 'a', 'v', 'i', 'd']
-- "addiv"

qsort []     = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
                 where
                   smaller = [a | a <- xs, a <= x]
                   larger  = [b | b <- xs, b > x]
