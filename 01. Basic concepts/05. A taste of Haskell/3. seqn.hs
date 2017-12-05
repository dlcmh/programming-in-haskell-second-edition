-- ghci test.hs
-- :reload or :r to reload new code
-- :load or :l "script name" to load code

-- *Main> seqn [getChar, getChar, getChar]
-- xyz"xyz"

seqn []         = return []
seqn (act:acts) = do x <- act
                     xs <- seqn acts
                     return (x:xs)
