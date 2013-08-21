module Bob(responseFor) where
import Data.Char

responseFor :: [Char] -> [Char]
responseFor string
    | silent    = "Fine. Be that way."
    | shouting  = "Woah, chill out!"
    | question  = "Sure."
    | otherwise = "Whatever."
    where question = ('?' == last string)
	  shouting = (string == map toUpper string)
	  silent   = (all isSpace string)
