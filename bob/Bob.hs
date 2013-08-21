module Bob(responseFor) where
import Data.Char

responseFor :: [Char] -> [Char]
responseFor string
    | isSilent string = "Fine. Be that way."
    | isShouting string = "Woah, chill out!"
    | isQuestion string = "Sure."
    | otherwise = "Whatever."

isQuestion :: [Char] -> Bool
isQuestion string = '?' == last string

isShouting :: [Char] -> Bool
isShouting string = string == map toUpper string

isSilent :: [Char] -> Bool
isSilent string = 0 == length $ dropWhile isSpace string
